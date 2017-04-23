class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to pictures_path, notice: "写真を投稿しました！"
  end

  def show

  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    redirect_to pictures_path, notice: "編集しました！"
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path, notice: "削除しました！"
  end


  private
  def picture_params
    params.require(:picture).permit(:title, :image_url)
  end
end
