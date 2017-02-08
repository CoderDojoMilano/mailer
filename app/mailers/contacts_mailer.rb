class ContactsMailer < ActionMailer::Base

    default from: ENV['contacts_to_email']

    def send_contact_msg(key, msg)
        @msg = msg
        mail( :to => ENV['contacts_to_email'], :reply_to => msg["email"], subject: "Contatto dal sito (#{key})")
    end

end
