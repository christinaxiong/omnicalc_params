class CalculationsController <ApplicationController #defining a class called CalculationsController and it's going to inherit goodies from Rails framework; render this, it knows to go in views template
  def square
    #Parameters: {"num"=>"66"}
    @user_number = params[:user_number].to_f
    @square= @user_number**2
    render("calculations/square.html.erb")

  end
  def square_form
    render("calculations/square_form.html.erb")
    @user_number = params["num"].to_f
  end
  def flex_square_5
    #Parameters: {"num"=>"5"}
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")
  end
end
