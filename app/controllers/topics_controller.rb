class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topics_params)
  if @topic.save
    redirect_to topics_path, notice: "タイムラインに投稿しました"
  end
  end

  def edit
  end

  def update
    @topic.update(topics_params)
    redirect_to topics_path, notice:"タイムラインの記事を更新しました"
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice:"タイムラインの記事を削除しました"
  end

  private

  def topics_params
    params.require(:topic).permit(:content)
  end
  def set_topic
    @topic = Topic.find(params[:id])
  end

end
