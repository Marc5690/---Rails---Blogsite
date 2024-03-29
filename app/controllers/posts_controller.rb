class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def listed
    @oldPosts = Post.where('daterelease <= ? AND category = ?', Date.today, '1').order('daterelease DESC')
    @techPosts = Post.where('daterelease <= ? AND category = ?', Date.today, '2').order('daterelease DESC')
    @nonsoftPosts = Post.where('daterelease <= ? AND category = ?', Date.today, '3').order('daterelease DESC')
    @tutorialPosts = Post.where('daterelease <= ? AND category = ?', Date.today, '4').order('daterelease DESC')
    #@posts = Post.where('daterelease < ?', Date.today).order('daterelease DESC')
    render layout: false
  end

  # GET /posts
  # GET /posts.json

  def index
    @posts = Post.where('daterelease <= ?', Date.today).order('daterelease DESC')
    @tutorials =  Post.where('daterelease <= ? AND category = ?', Date.today, '4').order('daterelease DESC')
  end

  def filteredlist
    puts "Working here buddy"
    redirect_to action: "index"
  end

  # GET /posts/1
  # GET /posts/1.json
  def show

    @post = Post.find_by_id(params[:id]) rescue nil
    if @post == nil
      @posts = []
      redirect_to action: "index"
    else
      @post.daterelease <= Date.today
      @posts = Post.where('daterelease < ?', Date.today).order('created_at DESC').limit(4).offset(1)
      render :layout => false      
    end
  end
=begin
  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end
=end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.create(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
=begin
  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      #(params[:post].permit!
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
=end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :text, :daterelease, :category)
      #params.fetch(:post, {})
    end 
end
