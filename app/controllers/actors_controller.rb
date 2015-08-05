class ActorsController < ApplicationController
  def index
 @list_of_actors = Actor.all

  end

def show
    @actor=Actor.find(params["id"])
  end

  def edit_form
  @actor = Actor.find(params["id"])
  end

  def destroy
    @actor=Actor.find(params["id"])
    @actor.destroy

  end

  def create_row
    p = Actor.new
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/actors/")
  end

   def update_row
    p = Actor.find(params["id"])
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/actors/")
  end
end
