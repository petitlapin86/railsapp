class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]  before_action :authenticate_user!










end 
