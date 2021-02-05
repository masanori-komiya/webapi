class GoodsController < ApplicationController
  def search
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = '保存されました'
      redirect_back(fallback_location: root_path) 
    else
      flash.now[:danger] = '保存されませんでした'
      redirect_back(fallback_location: root_path) 
    end
  end
  
  def item_params
    params.permit(:url, :name, :price)
  end
end
