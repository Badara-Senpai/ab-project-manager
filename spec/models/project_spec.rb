require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "validations" do
    it "is valid with a name and status" do
      project = Project.new(name: "Test Project", status: "Not Started")
      expect(project).to be_valid
    end

    it "is invalid without a name" do
      project = Project.new(status: "Not Started")
      expect(project).not_to be_valid
      expect(project.errors[:name]).to include("can't be blank")
    end

    it "is invalid without a status" do
      project = Project.new(name: "Test Project")
      expect(project).not_to be_valid
      expect(project.errors[:status]).to include("can't be blank")
    end
  end
end
