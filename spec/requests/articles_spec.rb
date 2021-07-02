require "rails_helper"

RSpec.describe "Articles", :type => :request do

  it "does not render a different template" do
    expect {get "/articles"}.not_to raise_error
    expect(response).to_not render_template(:show)
    expect(response.status).to eq(200)
  end
end