class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
    
    def new
        @tweet = Tweet.new
    end
    
    def create
        @tweet = Tweet.new(massage: params[:tweet][:massage], tdate: params[:tweet][:tdate])
        if @tweet.save
            flash[:notice] = "ツイートしました"
            redirect_to'/'
        else
            render 'new'
        end
    end
    
    def destroy
        @tweet = Tweet.find(params[:id])
        if @tweet.destroy
            redirect_to'/'
        end
    end
    
    def edit
        @tweet = Tweet.find(params[:id])
    end
    
    def update
        tweet = Tweet.find(params[:id])
        tweet.update(massage: params[:tweet][:massage], tdate: params[:tweet][:tdate])
        redirect_to'/'
    end
    
    def show
        @tweet = Tweet.find(params[:id])
    end
    
end
