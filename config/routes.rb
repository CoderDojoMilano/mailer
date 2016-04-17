Rails.application.routes.draw do

   post "/webhook-contacts" => "webhooks#contacts"

end
