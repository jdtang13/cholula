class AnnotCommentsController < ApplicationController
  before_action :set_annot_comment, only: [:show, :edit, :update, :destroy]


  # GET /annot_comments
  # GET /annot_comments.json
  def index
    @annot_comments = AnnotComment.all
  end

  # GET /annot_comments/1
  # GET /annot_comments/1.json
  def show
  end

  # GET /annot_comments/new
  def new
    @annot_comment = AnnotComment.new
  end

  # GET /annot_comments/1/edit
  def edit
  end

  # POST /annot_comments
  # POST /annot_comments.json
  def create
    @annot_comment = AnnotComment.new(annot_comment_params)

    respond_to do |format|
      if @annot_comment.save
        format.html { redirect_to @annot_comment, notice: 'Annot comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @annot_comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @annot_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annot_comments/1
  # PATCH/PUT /annot_comments/1.json
  def update
    respond_to do |format|
      if @annot_comment.update(annot_comment_params)
        format.html { redirect_to @annot_comment, notice: 'Annot comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @annot_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annot_comments/1
  # DELETE /annot_comments/1.json
  def destroy
    @annot_comment.destroy
    respond_to do |format|
      format.html { redirect_to annot_comments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annot_comment
      @annot_comment = AnnotComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annot_comment_params
      params.require(:annot_comment).permit(:body)
    end
end
