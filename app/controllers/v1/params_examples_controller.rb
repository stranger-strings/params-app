class V1::ParamsExamplesController < ApplicationController
  def query_params_method
    num_pineapples = params["pineapples"]
    num_carrots = params["carrots"]
    render json: {
      pineapples_message: "There are currently #{num_pineapples} of pineapples.",
      carrots_message: "There are currently #{num_carrots} of carrots."
    }
  end
end
