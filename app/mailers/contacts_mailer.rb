class ContactsMailer < ActionMailer::Base

    default from: ENV['contacts_to_email']

    def send_contact_msg(msg)
        @msg = msg
        mail( :to => ENV['contacts_to_email'], :reply_to => msg["email"], subject: "Contatto da sito CoderDojoMilano")
    end

end
