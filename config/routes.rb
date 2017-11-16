Rails.application.routes.draw do
  namespace :v1 do
    get "/query_params_url" => "params_examples#query_params_method"

    get "/name_url" => "params_examples#name_method"
  end
end
