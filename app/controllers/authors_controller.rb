class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def edit
  end

  def create
    @current_author = Author.new(author_params)
    if @current_author.save
      redirect_to @current_author, notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  def update
    if @current_author.update(author_params)
      redirect_to @current_author, notice: 'Author was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @current_author.destroy
    redirect_to authors_url, notice: 'Author was successfully destroyed.'
  end

  private

  def set_author
    @current_author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :email_address, :contact_number)
  end
end