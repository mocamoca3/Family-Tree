class DocumentsController < ApplicationController
  def index
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @task_list.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def document_params
    params.require(:document).permit(:title, :body, :user_id)
  end

  def new
  end

  def edit
  end

  def show
  end
end
