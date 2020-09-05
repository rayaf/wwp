require "rails_helper"

RSpec.describe RelacionamentosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/relacionamentos").to route_to("relacionamentos#index")
    end

    it "routes to #new" do
      expect(get: "/relacionamentos/new").to route_to("relacionamentos#new")
    end

    it "routes to #show" do
      expect(get: "/relacionamentos/1").to route_to("relacionamentos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/relacionamentos/1/edit").to route_to("relacionamentos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/relacionamentos").to route_to("relacionamentos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/relacionamentos/1").to route_to("relacionamentos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/relacionamentos/1").to route_to("relacionamentos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/relacionamentos/1").to route_to("relacionamentos#destroy", id: "1")
    end
  end
end
