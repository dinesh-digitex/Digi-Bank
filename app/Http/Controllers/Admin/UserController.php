<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Mail\SendSimpleMail;
use App\Models\BankAccount;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    public function pendingUsers()
    {
        $title = 'Pending Admin Approval';
        $users = User::select('id', 'first_name', 'last_name', 'email', 'created_at')->where('status', 'pending')->orderBy('created_at', 'desc')->paginate(10);
        return view('admin.users.pending-approval', compact('users', 'title'));
    }

    public function deleteUser($id)
    {
        try {
            DB::beginTransaction();
            $user = User::findOrFail($id);
            if ($user->status != 'pending') {
                return redirect()->back()->with('error', 'User can not be deleted as status is not pending.');
            }
            $sub = 'Your application has been rejected';
            $body = "Hello {$user->name},<br><br>
            We regret to inform you that your application on our platform has been rejected by the administrator.<br><br>
            Thank you.";
            Mail::to($user->email)->send(new SendSimpleMail($sub, $body));
            $user->delete();
            DB::commit();
            return redirect()->back()->with('success', 'User removed successfully.');
        } catch (Exception $err) {
            DB::rollback();
            return redirect()->back()->with('error', 'Something went wrong.');
        }
    }

    public function activateUser($id)
    {
        try {
            DB::beginTransaction();
            $user = User::findOrFail($id);
            if ($user->status != 'pending') {
                return redirect()->back()->with('error', 'User can not be activated as status is not pending.');
            }
            $sub = 'Your application has been approved';
            $body = "Hello {$user->name},<br><br>
            We are pleased to inform you that your application on our platform has been approved. You can now log in using your registered email and password.<br><br>
            Thank you.";
            Mail::to($user->email)->send(new SendSimpleMail($sub, $body));
            $user->status = 'active';
            $user->save();
            BankAccount::updateOrInsert([
                'user_id' => $user->id
            ], [
                'account_id' => str_pad($user->id, 5, 0, STR_PAD_LEFT),
                'balance' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ]);
            DB::commit();
            return redirect()->back()->with('success', 'User approved successfully.');
        } catch (Exception $err) {
            DB::rollback();
            return redirect()->back()->with('error', 'Something went wrong.');
        }
    }

    public function activeUsers()
    {
        $title = 'Active Users';
        $keyword = request('search');
        $users = User::with('bank_account')->when($keyword, function($q) use($keyword){
            $q->where(DB::raw('CONCAT(first_name, " ", last_name)'), 'like', "%".$keyword."%");
        })->whereIn('status', ['blocked', 'active'])->where('type', 'user')->orderBy('created_at', 'desc')->paginate(10);
        return view('admin.users.active', compact('users', 'title'));
    }
}
