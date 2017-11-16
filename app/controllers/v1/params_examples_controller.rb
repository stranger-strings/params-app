class V1::ParamsExamplesController < ApplicationController
  def query_params_method
    num_pineapples = params["pineapples"]
    num_carrots = params["carrots"]
    render json: {
      pineapples_message: "There are currently #{num_pineapples} of pineapples.",
      carrots_message: "There are currently #{num_carrots} of carrots."
    }
  end

  def url_segment_params_method
    render json: {message: "hello"}
  end

  def name_method
    input_name = params["query_name"]
    special_message = "Your name sucks."
    if input_name.upcase.start_with?("A")
      special_message = "Hey your name starts with A!"
    end
    render json: {message: "Hey your name is #{input_name}", message2: special_message}
  end

  def guess_query_method
    winning_number = 32
    input_guess = params["the_users_guess"].to_i
    if input_guess > winning_number
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!"
    end
    render json: {guess: input_guess, message: output_message}
  end
end
