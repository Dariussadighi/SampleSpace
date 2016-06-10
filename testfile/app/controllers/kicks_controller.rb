class KicksController < ApplicationController
  require 'carrierwave'

   def index
      @kicks = Kick.all
   end

   def new
      @kick = Kick.new
   end

   def create
      @kick = Kick.new(kicks_params)

      if @kick.save
         redirect_to kicks_path, notice: "The sound #{@kick.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @kick = Kick.find(params[:id])
      @kick.destroy
      redirect_to kicks_path, notice:  "The sound #{@kick.name} has been deleted."
   end

   private
      def kicks_params
      params.require(:kick).permit(:name, :attachment)
   end

end
