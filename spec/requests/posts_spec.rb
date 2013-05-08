require 'spec_helper'

describe "Posts" do
  before { visit new_post_path }

  it "should have the content 'wandereyes'" do
    page.should have_content('wandereyes')
  end
end
