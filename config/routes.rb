Rails.application.routes.draw do
  namespace :v1 do
    get "/query_params_url" => "params_examples#query_params_method"
    get "/url_segment_params_url/:some_input_value" => "params_examples#url_segment_params_method"

    get "/name_url" => "params_examples#name_method"
    get "/guess_query_url" => "params_examples#guess_query_method"
    get "/guess_url_segment_url/:the_users_guess" => "params_examples#guess_query_method"
  end
end
