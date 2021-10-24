class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        logger.debug "---------" + params[:tweet][:massage] + "---------"
        @tweet = Tweet.new(massage: params[:tweet][:massage], tdate: params[:tweet][:tdate])
        if @tweet.save
            flash[:notice] = "ツイートしました"
            redirect_to tweets_path
        else
            render 'new'
        end
    end
    
    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to tweets_path
    end
    
    def edit
        @tweet = Tweet.find(params[:id])
    end
    
    def update
        tweet = Tweet.find(params[:id])
        tweet.update(massage: params[:tweet][:massage], tdate: params[:tweet][:tdate])
        redirect_to root_path
    end
    
    def show
        @tweet = Tweet.find(params[:id])
    end
    
end
