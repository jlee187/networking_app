# frozen_string_literal: true

class PeopleController < ProtectedController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = current_user.books.all

    render json: @people
  end

  # GET /people/1
  def show
    render json: @person
  end

  # POST /people
  def create
    @person = current_user.books.build(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = current_user.people.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:name, :company, :industry, :connections, :partner, :children, :notes)
    end
end
