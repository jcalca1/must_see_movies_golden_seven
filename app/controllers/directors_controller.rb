class DirectorsController < ApplicationController
  def index
 @list_of_directors = Director.all

  end

def show
    @director=Director.find(params["id"])
  end

  def edit_form
  @director = Director.find(params["id"])
  end

  def destroy
    @director=Director.find(params["id"])
    @director.destroy

  end

  def create_row
    p = Director.new
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/directors/")
  end

   def update_row
    p = Director.find(params["id"])
    p.name = params["the_name"]
    p.bio = params["the_bio"]
    p.dob = params["the_dob"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/directors/")
  end
end
