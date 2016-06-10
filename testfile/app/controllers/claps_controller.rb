class ClapsController < ApplicationController
  require 'carrierwave'

   def index
      @claps = Clap.all
   end

   def new
      @clap = Clap.new
   end

   def create
      @clap = Clap.new(claps_params)

      if @clap.save
         redirect_to claps_path, notice: "The sound #{@clap.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @hat = Clap.find(params[:id])
      @clap.destroy
      redirect_to claps_path, notice:  "The sound #{@clap.name} has been deleted."
   end

   private
      def claps_params
      params.require(:clap).permit(:name, :attachment)
   end

end
