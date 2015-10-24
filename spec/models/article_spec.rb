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

  it "mapping has_many association to factory_girl : example 1" do
    article = FactoryGirl.create(:article)
    
    expect(article.comments.length).to eq(0)
  end

  it "mapping has_many association to factory_girl : example 2" do
    article = FactoryGirl.create(:article_with_comments)
    
    expect(article.comments.length).to eq(2)
  end

  it "mapping has_many association to factory_girl : example 3" do
    article = FactoryGirl.create(:article_with_comments, comments_count: 3)
    
    expect(article.comments.length).to eq(3)
  end

end