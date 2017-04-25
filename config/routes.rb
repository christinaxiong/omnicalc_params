Rails.application.routes.draw do
  get("/flexible/square/:num",{:controller =>"calculations", :action => "flex_square_5"}) #:num will turn into a key and hash.
  get("/square/new",{:controller =>"calculations", :action => "square_form"})
  get("/square/results",{:controller =>"calculations", :action => "square"})

  get("/flexible/square_root/:num",{:controller =>"calculations", :action => "flex_square_root_8"})
  get("/square_root/new",{:controller =>"calculations", :action => "square_root_form"})
  get("/square_root/results",{:controller =>"calculations", :action => "square_root"})

  get("/payment/new",{:controller =>"calculations", :action => "payment_form"})
  get("/payment/results",{:controller =>"calculations", :action => "payment"})
  get("/flexible/payment/:num/:number_of_years/:principal_value",{:controller =>"calculations", :action => "flex_payment_410_30_250000"})

  get("/random/new",{:controller =>"calculations", :action => "random_form"})
  get("/random/results",{:controller =>"calculations", :action => "random"})
  get("/flexible/random/:min/:max",{:controller =>"calculations", :action => "flex_random_50_100"})
end
