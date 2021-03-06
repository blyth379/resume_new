# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    @user = User.new
    @education = Education.new
    @countrylists = CountryList.all.order(country: :asc)
    @langlists = LangList.all.order(lang: :asc)
    
    @industrylists = IndustryList.all.order(industry: :asc)
    @jobcategory_lists = JobCategoryList.all.order(job_category: :asc)
  end

  # PUT /resource
  def update
        logger.debug("~=~=~=~=~=~=~=~=~=~= user.id = #{params[:user][:id]}")

    @user = User.find(params[:user][:id])
    if @user.update_attributes(configure_account_update_params)
      redirect_to root_path
    else
      redirect_back(fallback_location: root_path)
  	 end
    # logger.debug("~=~=~=~=~=~=~=~=~=~= user.id = #{params[:user][:id]}")
    # @user = User.find_by(id: params[:user][:id])
    # @user.first_name = params[:user][:first_name]
    # @user.family_name = params[:user][:family_name]
    # @user.middle_name = params[:user][:middle_name]
    # @user.gender = params[:user][:gender]
    # @user.nationality = params[:user][:nationality]
    # @user.residence_country = params[:user][:residence_country]
    # @user.hobby = params[:user][:hobby]
    
    # logger.debug("===================== education_type = #{params[:user][:education_attributes][0][:school_name]}")
    
    # if @user.save
      # params[:user][:education_attributes].each do |education|
      #   logger.debug("===================== education_type = #{params[:user][:education_attributes]}")
      #     @education = Education.create(
      #                               user_id: @user.id,
      #                               education_type: education.education_type,
      #                               school_name: education.school_name,
      #                               enroll_in: education.enroll_in,
      #                               graduate_in: education.graduate_in
      #                               )
      # end
    # else
    #   flash[:notice] = "保存できませんでした"
    #   render edit_user_registration_path
    # end
      
    
		
	 #if params[:image]
	 #  @user.image_name = "#{@user.id}.jpg"
	 #  image = params[:image]
	 #  File.binwrite("public/user_images/#{@user.image_name}", image.read)
	 #end
		
  	 #if @user.save
  	 #  flash[:notice] = "ユーザー情報を編集しました"
  	 #  redirect_to :root
  	 #else
  	 #  redirect_back(fallback_location: root_path)
  	 #end
  end
    
  	 
	 
  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected
  
  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end
  
  def after_inactive_sign_up_path_for(resource)
    edit_user_registration_path
  end
  
  def after_update_path_for(resource)
    edit_user_registration_path
  end
  
  def configure_account_update_params
    # devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :family_name, :middle_name, :gender, :nationality, :residence_country, :hobby],
    # education_attributes: [:id, :user_id, :education_type, :school_name, :enroll_in, :graduate_in, :destroy])
    params.require(:user).permit(:first_name, :family_name, :middle_name, :gender, :nationality, :residence_country, :hobby,
    education_attributes: [:id, :user_id, :education_type, :school_name, :enroll_in, :graduate_in, :destroy])

  end
  



  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
