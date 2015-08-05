class MoviesController < ApplicationController
  def index
 @list_of_movies = Movie.all

  end

def show
    @movie=Movie.find(params["id"])
  end

  def edit_form
  @movie = Movie.find(params["id"])
  end

  def destroy
    @movie=Movie.find(params["id"])
    @movie.destroy

  end

  def create_row
    p = Movie.new
    p.title = params["the_title"]
    p.year = params["the_year"]
    p.duration = params["the_duration"]
     p.description = params["the_duration"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/movies/")
  end

   def update_row
    p = Movie.find(params["id"])
    p.title = params["the_title"]
    p.year = params["the_year"]
    p.duration = params["the_duration"]
    p.description = params["the_duration"]
    p.image_url = params["the_image_url"]
    p.save
    redirect_to("http://localhost:3000/movies/")
  end
end
