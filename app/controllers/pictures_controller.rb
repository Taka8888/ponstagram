class PicturesController < ApplicationController
before_action :set_picture, only:[:edit, :update, :destroy]
before_action :authenticate_user!
before_action :check_user, only: [:edit, :destroy]

def index
  @pictures = Picture.all
  # binding.pry
end

  def new
    if params[:back]
      @picture = Picture.new(pictures_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = Picture.new(pictures_params)
    @picture.user_id = current_user.id
    if @picture.save
       redirect_to pictures_path, notice: "ポストを作成しました！"
      #NoticeMailer.sendmail_picture(@picture).deliver
    else
      render 'new'
    end
  end

  def confirm
    @picture = Picture.new(pictures_params)
    render :new if @picture.invalid?
  end

  def edit
    @picture
  end

  def update
      if@picture.update(pictures_params)
       redirect_to pictures_path, notice: "ポストを更新しました！"
      else
        render 'new'
      end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_path, notice: "ポストを削除しました！"
  end



  private
    def pictures_params
      params.require(:picture).permit(:avatar, :avatar_cache, :title,:content)
    end

  #idをキーとして値を取得するメソッド
    def set_picture
      @picture = Picture.find(params[:id])
    end

    def check_user
      redirect_to pictures_path, notice: "権限がありません！" unless @picture.own?(current_user)
      # user.id == current_user.id
   end
end
