class MaterialsController < ApplicationController 
  def list
    how_many = params[:count] || 50
    @materials = Material.top_by(:number_of_open_holds, how_many)
  end

  def show
    @material = Material.where(bib_record: params[:id]).last
    holders = Hold.select(:user_hash).current_open.where( bib_record: params[:id] )
    @users = []
    holders.each do |holder|
      @users << { number_of_holds: 0, user_hash: holder.user_hash }
    end
    @users.each do |user|
      user[:number_of_holds] = Hold.current_open.where( user_hash: user[:user_hash] ).count
    end
  end

  def options
  end
end
