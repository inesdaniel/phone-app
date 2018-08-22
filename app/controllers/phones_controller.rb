class PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render 'index.html.erb'
  end
  def show
    @phone = Phone.find_by(id: params[:id])
    render 'show.html.erb'
  end
  def new
    render 'new.html.erb'
  end
  def create
    phone = Phone.new(
      color: params[:color] ,
      brand: params[:brand] ,
      size: params[:size]
    )
    phone.save
    redirect_to "/phones/#{phone.id}"
  end
  def edit
    @phone = Phone.find_by(id: params[:id])
    render 'edit.html.erb'
  end
  def update
    phone = Phone.find_by(id: params[:id])
    phone.color = params[:color]
    phone.brand = params[:brand]
    phone.size = params[:size]
    phone.save
    redirect_to "/phones/#{phone.id}"
  end
  def destroy
    phone = Phone.find_by(id: params[:id])
    phone.destroy
    redirect_to "/phones"
  end
end
