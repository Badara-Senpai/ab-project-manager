require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "validations" do
    it "is valid with content and project" do
      project = Project.create(name: "Test Project", status: "Not Started")
      comment = Comment.new(content: "Test comment", project: project)
      expect(comment).to be_valid
    end

    it "is invalid without content" do
      project = Project.create(name: "Test Project", status: "Not Started")
      comment = Comment.new(project: project)
      expect(comment).not_to be_valid
      expect(comment.errors[:content]).to include("can't be blank")
    end
  end

  describe "associations" do
    it "belongs to a project" do
      association = described_class.reflect_on_association(:project)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe "#type" do
    it "returns 'comment'" do
      project = Project.create(name: "Test Project", status: "Not Started")
      comment = Comment.new(content: "Test comment", project: project)
      expect(comment.type).to eq("comment")
    end
  end
end
