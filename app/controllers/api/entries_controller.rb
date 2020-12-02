class Api::EntriesController < ApplicationController
# Entries, will may need to set up by user as we are controlling entry via user only
before_action :set_entry, only [:show]

  def index
    #Will need to change this as we will not display all entries, maybe by user?
    render json: Entry.all
  end

  def show
    render json: @entry
  end

  def create
    if entry.save
      render json: entry
    else
      render json: entry.errors, status: 422
    end
  end

  def update
    if @entry.update(entry)
      render json: @entry

    else 
      render json: @entry.errors, status: 422
      return 
    end
  end

  def destroy
  end

  private
  def set_entry
    @entry = Entry.find(params[:id])
  end

def entry_params
  #TODO enter params here
end


end
