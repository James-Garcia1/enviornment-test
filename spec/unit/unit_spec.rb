# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'J.K. Rowling', price: '20.00', published: '2000-01-21')
  end

  it 'is valid with valid attributes' do
   
	expect(subject).to be_valid
  end

  #title
  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  
  #author
  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  #price
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  #date
  it 'is not valid without a date' do
    subject.published = nil
    expect(subject).not_to be_valid
  end
end

