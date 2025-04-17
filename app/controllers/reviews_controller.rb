class ReviewsController < ApplicationController
  before_action :redirect_root, only: :new

  def index; end

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build(process_images(review_params))
    result = ActiveRecord::Base.transaction do
                set_product

                if @review.save
                  flash[:notice] = t('reviews.new.notice')
                  redirect_to root_path
                else
                  raise ActiveRecord::Rollback
                end
              end
    unless result
      flash.now[:alert] = t('reviews.new.alert')
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
    session[:referer] = request.referer
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def update
    @review = current_user.reviews.find(params[:id])
    result = ActiveRecord::Base.transaction do
                set_product

                if @review.update(process_images(review_params))
                  flash[:notice] = t('reviews.edit.notice')
                  redirect_to review_path(@review)
                else
                  raise ActiveRecord::Rollback
                end
              end
    unless result
      flash.now[:alert] = t('reviews.edit.alert')
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    review = current_user.reviews.find(params[:id])
    ActiveRecord::Base.transaction do
      review.destroy!
      review.images.purge_later if review.images.attached?
    end
    flash[:notice] = t('reviews.delete.notice')
    if session[:referer].include?('users')
      redirect_to user_path(current_user), status: :see_other
    else
      redirect_to root_path, status: :see_other
    end
  end

  def search
    @q = params[:q].split(/[\s　]/)
    @c = params[:c]
    @reviews = Review.ransack(title_or_body_or_product_name_or_paper_or_pen_or_product_brand_name_cont_all: @q, product_category_id_eq: @c).
                result(distinct: true).includes(:user, product: :brand).order(:created_at, :id)
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :product_id, :paper, :pen, images: [])
  end

  def process_images(params)
    if params[:images].present?
      params[:images].each do |image|
        image.tempfile = ImageProcessing::MiniMagick.source(image.tempfile).resize_to_fit(700, 700).convert("webp").call
        image.original_filename = "#{File.basename(image.original_filename, ".*")}.webp"
        image.content_type = "image/webp"
      end
    end
    params
  end

  def set_product
    product_name = params[:review][:product_name]
    product = Product.find_by(name: product_name)
    @review.product_id = product.id if product
  end
end
