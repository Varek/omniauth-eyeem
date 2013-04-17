require 'spec_helper'

describe OmniAuth::Strategies::EyeEm do

  subject do
    OmniAuth::Strategies::EyeEm.new({})
  end

  context "general" do
    it "should be called appnet" do
      subject.options.name.should eq('eyeem')
    end
  end

  context "endpoints" do
    it "has correct site" do
      subject.options.client_options.site.should eq("https://www.eyeem.com/api/v2")
    end

    it "has correct authorize_url" do
      subject.options.client_options.authorize_url.should eq("http://www.eyeem.com/oauth/authorize")
    end

    it "has correct token_url" do
      subject.options.client_options.token_url.should eq("http://www.eyeem.com/api/v2/oauth/token")
    end
  end

end