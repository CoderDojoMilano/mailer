class WebhooksController < ApplicationController

    skip_before_filter :verify_authenticity_token
    before_filter :get_security_token

    def contacts
        begin
            body = request.body.read
            msg = JSON.parse(body.gsub("\\n","<br/>").gsub("\\",""))
            ContactsMailer.send_contact_msg(msg).deliver_later
            render :json => { :status => "ok" }
        rescue Exception => e
            render :json => { :status => "ko", :error => e }
        end
    end

private

    def get_security_token
        render :nothing => true, :status => 401 unless request.headers["X-KvStore-Security"] == ENV['kvstore_security_token']
    end

end
