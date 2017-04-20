Rails.application.routes.draw do
  get("/flexible/square/:num",{:controller =>"calculations", :action => "flex_square_5"}) #:num will turn into a key and hash.
end
