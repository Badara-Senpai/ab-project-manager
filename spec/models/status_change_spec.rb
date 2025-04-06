require 'rails_helper'

RSpec.describe StatusChange, type: :model do
  describe "validations" do
    it "is valid with previous_status, new_status and project" do
      project = Project.create(name: "Test Project", status: "Not Started")
      status_change = StatusChange.new(
        previous_status: "Not Started",
        new_status: "In Progress",
        project: project
      )
      expect(status_change).to be_valid
    end

    it "is invalid without previous_status" do
      project = Project.create(name: "Test Project", status: "Not Started")
      status_change = StatusChange.new(new_status: "In Progress", project: project)
      expect(status_change).not_to be_valid
      expect(status_change.errors[:previous_status]).to include("can't be blank")
    end

    it "is invalid without new_status" do
      project = Project.create(name: "Test Project", status: "Not Started")
      status_change = StatusChange.new(previous_status: "Not Started", project: project)
      expect(status_change).not_to be_valid
      expect(status_change.errors[:new_status]).to include("can't be blank")
    end
  end

  describe "associations" do
    it "belongs to a project" do
      association = described_class.reflect_on_association(:project)
      expect(association.macro).to eq :belongs_to
    end
  end

  describe "#type" do
    it "returns 'status_change'" do
      project = Project.create(name: "Test Project", status: "Not Started")
      status_change = StatusChange.new(
        previous_status: "Not Started",
        new_status: "In Progress",
        project: project
      )
      expect(status_change.type).to eq("status_change")
    end
  end
end
