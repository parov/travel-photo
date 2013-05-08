require 'spec_helper'

describe "Posts" do
  it "should have the content 'wandereyes'" do
    visit new_post_path
    page.should have_content('wandereyes')
  end
end
