# frozen_string_literal: true

class Companies::RegistrationsController < Devise::RegistrationsController
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
    @company = Company.new
    @industrylists = IndustryList.all.order(industry: :asc)
    @joblists = JobCategoryList.all.order(job_category: :asc)
  end

  # PUT /resource
  def update
    @company  = Company.find_by(id: params[:company][:id])
    @company.company_name = params[:company][:company_name]
    @company.employees_number = params[:company][:employees_number]
    @company.capital = params[:company][:capital]
    @company.working_country = params[:company][:working_country]
    @company.company_pic = params[:company][:company_pic]
    @company.business_contents = params[:company][:business_contents]
    @company.hp_url = params[:company][:hp_url]
    
    if @company.save
      redirect_to :root
    else
      redirect_back(fallback_location: root_path)
    end
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
    edit_company_registration_path
  end
  
  def after_inactive_sign_up_path_for(resource)
    edit_company_registration_path
  end
  
  def after_update_path_for(resource)
    edit_company_registration_path
  end
  
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :employees_number, :capital, :working_country, :company_pic, :business_contents, :hp_url
])
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
