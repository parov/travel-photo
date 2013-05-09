require 'spec_helper'

describe Post do
  
  before {@post = Post.new(user_id: 1, message: "Hi")}

  subject {@post}

  it { should respond_to(:user_id) }
  it { should respond_to(:message) }

end