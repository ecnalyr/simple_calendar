require "spec_helper"

describe WorkShiftsController do
  describe "routing" do

    it "routes to #index" do
      get("/work_shifts").should route_to("work_shifts#index")
    end

    it "routes to #new" do
      get("/work_shifts/new").should route_to("work_shifts#new")
    end

    it "routes to #show" do
      get("/work_shifts/1").should route_to("work_shifts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/work_shifts/1/edit").should route_to("work_shifts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/work_shifts").should route_to("work_shifts#create")
    end

    it "routes to #update" do
      put("/work_shifts/1").should route_to("work_shifts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/work_shifts/1").should route_to("work_shifts#destroy", :id => "1")
    end

  end
end
