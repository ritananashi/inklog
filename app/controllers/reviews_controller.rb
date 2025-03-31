class ReviewsController < ApplicationController
  before_action :redirect_root, only: :new

  def index; end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build(review_params)
    product_name = params[:review][:product_name]
    product = Product.find_by(name: product_name)
    @review.product_id = product.id if product

    if @review.save
      flash[:notice] = t('reviews.new.notice')
      redirect_to root_path
    else
      flash.now[:alert] = t('reviews.new.alert')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    product_name = params[:review][:product_name]
    product = Product.find_by(name: product_name)
    @review.product_id = product.id if product

    if @review.update(review_params)
      flash[:notice] = t('reviews.edit.notice')
      redirect_to review_path(@review)
    else
      flash.now[:alert] = t('reviews.edit.alert')
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    review = current_user.reviews.find(params[:id])
    review.images.purge if review.images.attached?
    review.destroy!
    flash[:notice] = t('reviews.delete.notice')
    redirect_to root_path, status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :product_id, :paper, :pen, images: [])
  end
end
