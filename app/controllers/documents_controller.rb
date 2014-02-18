class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path
    else
      render 'new'
    end
  end

  def document_params
    params.require(:document).permit(:title, :body, :user_id)
  end

  def index
    @documents = Document.all
  end

  def edit
  end

  def show
  end
end
