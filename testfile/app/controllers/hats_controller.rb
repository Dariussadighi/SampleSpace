class HatsController < ApplicationController
  require 'carrierwave'

   def index
      @hats = Hat.all
   end

   def new
      @hat = Hat.new
   end

   def create
      @hat = Hat.new(hats_params)

      if @hat.save
         redirect_to hats_path, notice: "The sound #{@hat.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @hat = Hat.find(params[:id])
      @hat.destroy
      redirect_to hats_path, notice:  "The sound #{@hat.name} has been deleted."
   end

   private
      def hats_params
      params.require(:hat).permit(:name, :attachment)
   end

end
