class CalculationsController <ApplicationController #defining a class called CalculationsController and it's going to inherit goodies from Rails framework; render this, it knows to go in views template
  def flex_square_5
    #Parameters: {"num"=>"5"}
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")

  end
end
