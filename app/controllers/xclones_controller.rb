class XclonesController < ApplicationController
  before_action :set_xclone, only: [:show, :edit, :update, :destroy]

  def index
    @xclones = Xclone.all
  end

  def new
    @xclone = Xclone.new
  end

  def create
    @xclone = Xclone.new(xclone_params)
    if params[:back]
      render :new
    else
      if @xclone.save
        redirect_to xclones_path, notice: "投稿しました！"
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def show
    @xclone = Xclone.find(params[:id])
  end

  def edit
    @xclone = Xclone.find(params[:id])
  end

  def update
    @xclone = Xclone.find(params[:id])
    if @xclone.update(xclone_params)
      redirect_to xclones_path, notice: "投稿内容を編集しました！"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @xclone.destroy
    redirect_to xclones_path, notice:"投稿を削除しました！"
  end

  def confirm
    @xclone = Xclone.new(xclone_params)
    render :new if @xclone.invalid?
  end


  private

  def xclone_params
    params.require(:xclone).permit(:content)
  end

  def set_xclone
    @xclone = Xclone.find(params[:id])
  end
end