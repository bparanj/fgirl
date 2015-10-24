require 'spec_helper'

describe Article do

  it "creating an instance" do
    article = FactoryGirl.create(:article)
    
    expect(article.title).to eq('How to get rich quick')
  end

  it "mapping has_one association to factory_girl" do
    article = FactoryGirl.create(:article)
    
    expect(article.title).to eq('How to get rich quick')
    expect(article.author.name).to eq('Bugs Bunny')
  end

end