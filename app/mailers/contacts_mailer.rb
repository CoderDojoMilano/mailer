class ContactsMailer < ActionMailer::Base

    default from: ENV['smtp_from']

    def send_contact_msg(key, msg)
        @msg = msg
        mail( :to => ENV['contacts_to_email'], :reply_to => msg["email"], subject: "CoderDojo: nuova richiesta contatto (#{key})")
    end

end
