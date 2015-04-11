class InstitutionsController < ApplicationController
	# before_action :fetch_question , only: [:show, :edit, :update, :destroy, :down_vote, :up_vote]

  def index
    @institutions = Institutions.all
  end

  def show
  	@institution = Institution.find(params[:id])
  end

  def create
  	@institution = Institution.new(institution_params) 
    @institution.save
    redirect_to institutions_path
  end

  def edit
  end

  def new
  	@institution = Institution.new
  end

  def destroy
  end

  def update
  end

  private
    def institution_params
      params.require(:institution).permit(:name, :picture, :category, :description, :phone, :adress, :email, :website)
    end

end

