require 'rails_helper'

RSpec.describe "ApiDevelopments", type: :request do
  def parsed_body
    JSON.parse(response.body)
  end
  describe "RDBMS-backed" do
    before(:each) { Foo.delete_all }
    after(:each) { Foo.delete_all }

    it "creates RDBMS-backed model" do
      object = Foo.create(name: "test")
      expect(Foo.find(object.id).name).to eq("test")
    end

    it "creates RDBMS-backed API resource" do
      object = Foo.create(name: "test")
      get foo_path(object.id)
      expect(foos_path).to eq("/api/foos")

      expect(response).to have_http_status(:ok)
      expect(parsed_body["name"]).to eq("test")
    end

  end
  describe "MongoDB-backed" do
    before(:each) { Bar.delete_all }
    after(:each) { Bar.delete_all }

    it "creates MongoDB-backed model" do
      object = Bar.create(name: "test")
      expect(Bar.find(object.id).name).to eq("test")
    end

    it "creates MongoDB-backed API resource" do
      object = Bar.create(name: "test")
      get bar_path(object.id)
      expect(bars_path).to eq("/api/bars")

      expect(response).to have_http_status(:ok)
      expect(parsed_body["name"]).to eq("test")
      expect(parsed_body).to include("created_at")
      # byebug
      expect(parsed_body).to include("name"=>object.id.to_s)
    end
  end
end
