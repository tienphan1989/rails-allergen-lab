class IngredientsController < ApplicationController
  
  before_action :find_user, only: [:show, :update, :edit, :destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  
end
