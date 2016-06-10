class SoundsController < ApplicationController
  require 'carrierwave'

   def index
      @sounds = Sound.all
   end

   def new
      @sound = Sound.new
   end

   def create
      @sound = Sound.new(sound_params)

      if @sound.save
         redirect_to sounds_path, notice: "The sound #{@sound.name} has been uploaded."
      else
         render "new"
      end

   end

   def destroy
      @sound = Sound.find(params[:id])
      @sound.destroy
      redirect_to sounds_path, notice:  "The sound #{@sound.name} has been deleted."
   end

   private
      def sound_params
      params.require(:sound).permit(:name, :attachment)
   end

end
