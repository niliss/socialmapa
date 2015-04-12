class InstitutionsController < ApplicationController
	# before_action :fetch_question , only: [:show, :edit, :update, :destroy, :down_vote, :up_vote]

  def index
    @institutions = Institution.all
  end

  def show
  	@institution = Institution.friendly.find(params[:id])
  end

  def create
  	@institution = Institution.new(institution_params) 

    if  @institution.save
      redirect_to root_path
    else
      render 'new'
    end

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
<<<<<<< HEAD

      params.require(:institution).permit(:name,  :category, :description, :phone, :adress, :email, :website, :slug)

=======
      params.require(:institution).permit(:name, :logo, :category, :description, :phone, :adress, :email, :website)
>>>>>>> 7dd9a412e5e71724f70ac52d6355d61b9df7e4df
    end

end

