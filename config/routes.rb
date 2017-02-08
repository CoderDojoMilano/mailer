Rails.application.routes.draw do

   put "/webhook-contacts" => "webhooks#contacts"

end
