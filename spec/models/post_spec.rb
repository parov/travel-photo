require 'spec_helper'

describe Post do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @post = user.posts.build(message: "Hi from user 1") }

  subject { @post }

  it { should respond_to(:message) }
  it { should respond_to(:user_id) }

  it { should be_valid }

  describe "when message is not present" do
  	before { @post.message = " " }
  	it { should_not be_valid }
  end

  describe "when message is too long" do
    before { @post.message = "a" * 141 }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @post.user_id = ""}
    it { should_not be_valid }
  end

end