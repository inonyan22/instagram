class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_picture, only:[:edit,:update,:destroy, :show]
  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
    redirect_to pictures_path, notice: "写真を投稿しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice: "削除しました！"
  end

  def confirm
    @picture = Picture.new(picture_params)
    render :new if @picture.invalid?
  end


  private
  def picture_params
    params.require(:picture).permit(:title, :image_url)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
