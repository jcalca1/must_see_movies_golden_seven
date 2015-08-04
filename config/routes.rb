Rails.application.routes.draw do

get("/directors", { :controller => "directors", :action => "index" })
end
