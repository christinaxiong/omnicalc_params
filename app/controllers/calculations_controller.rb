class CalculationsController <ApplicationController #defining a class called CalculationsController and it's going to inherit goodies from Rails framework; render this, it knows to go in views template
  def random
    @minimum=(params[:min].to_f)
    @maximum=(params[:max].to_f)
    @random=rand(@minimum..@maximum)
    render("calculations/random.html.erb")
  end
  def random_form
    render("calculations/random_form.html.erb")
    @minimum=(params[:min].to_f)
    @maximum=(params[:max].to_f)
  end
  def flex_random_50_100
    @minimum=(params[:min].to_f)
    @maximum=(params[:max].to_f)
    @random=rand(@minimum..@maximum)
    render("calculations/flex_random_50_100.html.erb")
  end
  def payment
    @apr = params[:APR].to_f
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    months= @years*12
    numerator=@principal*@apr/100/12
    denominator=1-(1+(@apr/100/12))**(-months)
    @monthly_payment = numerator / denominator
    render("calculations/payment.html.erb")
  end
  def payment_form
    render("calculations/payment_form.html.erb")
    @apr = (params[:APR].to_f)
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f
  end
  def flex_payment_410_30_250000
    @apr = params[:APR].to_f/100
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_f

    months= @years*12
    numerator=@principal*@apr/100/12
    denominator=1-(1+(@apr/100/12))**(-months)
    @monthly_payment = numerator / denominator
    render("calculations/flex_payment_410_30_250000.html.erb")
  end
  def square_root
    @user_number = params[:user_number].to_f
    @square_root = Math.sqrt(@user_number)
    render("calculations/square_root.html.erb")
  end
  def square_root_form
    render("calculations/square_root_form.html.erb")
    @user_number = params["num"].to_f
  end
  def flex_square_root_8
    #Parameters: {"num"=>"8"}
    @user_number = params["num"].to_f
    @square_root = Math.sqrt(@user_number)
    render("calculations/flex_square_root_8.html.erb")
  end
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
