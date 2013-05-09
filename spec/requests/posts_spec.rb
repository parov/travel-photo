require 'spec_helper'


describe "Posts" do
  subject { page }
  before { visit new_post_path }

  it { subject.should have_content('wandereyes') }
end
