class SubsController < ApplicationController
  require 'carrierwave'

   def index
      @subs = Sub.all
   end

   def new
      @sub = Sub.new
   end

   def create
      @sub = Sub.new(subs_params)

      if @sub.save
         redirect_to subs_path, notice: "The sound #{@sub.name} has been uploaded."
      else
         render "new"
      end

   end
   def destroy
      @sub = Sub.find(params[:id])
      @sub.destroy
      redirect_to subs_path, notice:  "The sound #{@sub.name} has been deleted."
   end

   private
      def subs_params
      params.require(:sub).permit(:name, :attachment)
   end

end
