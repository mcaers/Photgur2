class PicturesController < ApplicationController

	def index
		if params[:free] == "yes"
			@pictures = Picture.where(:copyrighted => false).all
		else
		@pictures = Picture.all
		end
	end

	def new
		@picture = Picture.new
	end

	def show
		@picture = Picture.find params[:id]
	end

	def create
		@picture = Picture.new(params[:picture])
		if @picture.save
			redirect_to pictures_path
		end
	end

	def edit
		@picture = Picture.find params[:id]
	end

	def update
		@picture = Picture.find(params[:id])
		if @picture.update_attributes(params[:picture])
			redirect_to @picture 
		else
			redirect_to pictures_path
		end
	end

	def destroy
		@picture = Picture.find params[:id]
		@picture.destroy
		redirect_to pictures_path
	end


end



