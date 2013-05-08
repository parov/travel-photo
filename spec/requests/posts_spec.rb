require 'spec_helper'

describe "Posts" do
  it "should have the content 'POST'" do
    visit '/posts/new'
    page.should have_content('wandereyes')
  end
end
