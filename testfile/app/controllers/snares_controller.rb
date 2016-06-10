class SnaresController < ApplicationController
  require 'carrierwave'

   def index
      @snares = Snare.all
   end

   def new
      @snare = Snare.new
   end

   def create
      @snare = Snare.new(snares_params)

      if @snare.save
         redirect_to snares_path, notice: "The sound #{@snare.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @snare = Snare.find(params[:id])
      @snare.destroy
      redirect_to kicks_path, notice:  "The sound #{@snare.name} has been deleted."
   end

   private
      def snares_params
      params.require(:snare).permit(:name, :attachment)
   end

end
