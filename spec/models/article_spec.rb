require "rails_helper"

RSpec.describe Article, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем объект article хитрым способом
      article = create(:article, title: 'Lorem ipsum')
      
      # assert, проверка
      expect(article.subject).to  eq 'Lorem ipsum'
    end
  end
end