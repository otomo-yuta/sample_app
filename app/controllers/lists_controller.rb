class ListsController < ApplicationController
  # 新規投稿機能
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "投稿に成功しました"
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end


  # 一覧機能
  def index
    @lists = List.all
  end


  # 詳細機能
  def show
    @list = List.find(params[:id])
  end


  # 編集機能
  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  # 削除機能
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to '/lists'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
