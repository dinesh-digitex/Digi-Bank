<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Attachment;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class SendSimpleMail extends Mailable
{
    use Queueable, SerializesModels;

    private $sub, $body;
    public function __construct($sub, $body, $attachments = [])
    {
        $this->sub = $sub;
        $this->body = $body;
        $this->attachments = $attachments;
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: $this->sub
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'mail.simple-mail',
            with: [
                'html' => $this->body
            ]
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        $files = [];

        foreach ($this->attachments as $file) {
            if (is_file_exists($file)) {
                $files[] = Attachment::fromPath(
                    storage_public_path($file)
                );
            }
        }
        return $files;
    }

    protected function buildAttachments($message)
    {
        foreach ($this->attachments as $attachment) {
            if(empty($attachment['file'])){
                continue;
            }
            $message->attach($attachment['file'], $attachment['options']);
        }

        foreach ($this->rawAttachments as $attachment) {
            $message->attachData(
                $attachment['data'],
                $attachment['name'],
                $attachment['options']
            );
        }

        $this->buildDiskAttachments($message);

        return $this;
    }
}
