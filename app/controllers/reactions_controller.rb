class ReactionsController < ApplicationController
  before_action :authenticate_user!
  
  def new_user_reaction
    @user = current_user
    @publication = Publication.find(params[:publication_id])
    reaction = Reaction.find_by(user_id: @user.id, publication_id: @publication.id)
    if reaction
      reaction.destroy
      
      respond_to do |format|
        format.html { redirect_to publication_path(@publication) }
        format.json { head :no_content }
      end
    else
      @new_reaction = Reaction.new(user_id: @user.id, publication_id: @publication.id, kind: params[:kind])
      respond_to do |format|
        if @new_reaction.save!
          format.html { redirect_to publication_path(@publication), notice: "#{current_user.email} has stated that it #{@new_reaction.kind} the publication" }
        else
          format.html { redirect_to publicationt_path(@publication), status: :unprocessable_entity }
        end
      end
    end
  end   
end