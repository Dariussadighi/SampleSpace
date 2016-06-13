class CymbalsController < ApplicationController
  require 'carrierwave'

   def index
      @cymbals = Cymbal.all
   end

   def new
      @cymbal = Cymbal.new
   end

   def create
      @cymbal = Cymbal.new(cymbals_params)

      if @cymbal.save
         redirect_to cymbals_path, notice: "The sound #{@cymbal.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @cymbal = Cymbal.find(params[:id])
      @cymbal.destroy
      redirect_to cymbals_path, notice:  "The sound #{@cymbal.name} has been deleted."
   end

   private
      def cymbals_params
      params.require(:cymbal).permit(:name, :attachment)
   end

end
