class UsersController < ApplicationController
  # skip_before_action(:force_user_sign_in, { :only => [:new_registration_form, :create] })
  

  def new_registration_form
    render({ :template => "user_sessions/sign_up.html.erb" })
  end

  def create
    @user = User.new
    @user.email = params.fetch("query_email")
    @user.username = params.fetch("input_username")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")

    save_status = @user.save

    if save_status == true
      session.store(:user_id,  @user.id)
   
      redirect_to("/", { :notice => "User account created successfully."})
    else
      redirect_to("/user_sign_up", { :alert => "User account failed to create successfully."})
    end
  end
    
  def edit_registration_form
    render({ :template => "users/edit_profile.html.erb" })
  end

  def update
    @user = @current_user
    @user.email = params.fetch("query_email")
    @user.username = params.fetch("input_username")
    @user.password = params.fetch("query_password")
    @user.password_confirmation = params.fetch("query_password_confirmation")
    
    if @user.valid?
      @user.save

      redirect_to("/", { :notice => "User account updated successfully."})
    else
      render({ :template => "users/edit_profile_with_errors.html.erb" })
    end
  end

  def destroy
    @current_user.destroy
    reset_session
    
    redirect_to("/", { :notice => "User account cancelled" })
  end
  
  def index
    @users = User.all.order({ :id => :asc })
    render({ :template => "users/index.html.erb" })
  end

  def show
    if session.fetch(:user_id).nil?
        redirect_to("/user_sign_in?accessdenied=1")
        return 
    end
    the_user_id = params.fetch("the_user_id")
    @user = User.where({ :id => the_user_id }).at(0)

    render({ :template => "users/show.html.erb" })

  end

  def my_paintings 

    if session.fetch(:user_id).present? 
      render({:template=> "users/saved_paintings.html.erb"})
    else
      redirect_to("/user_sign_in?accessdenied=1")
      return
    end 
    the_user_id = params.fetch("the_user_id")
    @user = User.where({ :id => the_user_id }).at(0)

  end
    

end
