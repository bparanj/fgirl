FactoryGirl.define do
  factory :author do
    name 'Bugs Bunny'
  end  

  factory :article do
    title 'How to get rich quick'
    
    author
  end  
end

