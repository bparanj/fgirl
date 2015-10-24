FactoryGirl.define do
  factory :author do
    name 'Bugs Bunny'
  end  

  factory :comment do
    description 'Yes I want to buy this book'  
  end
  
  factory :article do
    title 'How to get rich quick'
    
    author
    
    factory :article_with_comments do
      
      ignore do
        comments_count 2
      end
      
      after(:create) do |article, evaluator|
        create_list(:comment, evaluator.comments_count, article: article)
      end
    end
  end  
end

