class CategoryController < ApplicationController
  attr_accessor :category

  def show
    @category = Category.find(params[:id])
    set_page_options
  end

  def set_page_options
    set_meta_tags category.slice(:title, :keywords, :description)
    add_breadcrumb 'Home', :root_path, title: 'Home'
  end
end
