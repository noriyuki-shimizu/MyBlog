class PostsController < ApplicationController

    # 初期画面を表示する
    def index
        @posts = Post.all.order(created_at: 'desc')
    end

    # タイトルにおける詳細を表示する
    def show
        @post = Post.find(params[:id]) # idに対する情報を取得
    end

    # フォームの作成
    def new
        @post = Post.new # ここでnewしないとエラーを吐くので注意
    end

    # 新規の投稿画面を表示する
    def create 
        # render plain: params[:post].inspect # 取得した値をそのまま画面に出力
        
        # 値を受け取るような処理はprivateにするのがよい
        @post = Post.new(post_params)

        # app/model/post.rbの制約に反していたらfalseが返る
        if @post.save then
            # redirect
            redirect_to posts_path
        else 
            # エラーが起きたら
            # @port.errorsの中にエラー文が入る
            render 'new'
        end

    end

    # 編集画面を表示する
    def edit
        @post = Post.find(params[:id])
    end

    # 記事を更新する
    def update
        @post = Post.find(params[:id])
        # update処理でうまくいけばtrueが返る
        if @post.update(post_params)
            redirect_to posts_path # トップ画面へredirect
        else
            render 'edit' # 編集画面へ戻る
        end
    end

    # 記事を削除する
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    # save 下記の2行だとエラーを吐く。どんな値でも受け取るようなセキュリティーの低い処理だから
    # @post = Post.new(params[:post])
    # @post.save
    # 下記のソースにするのがよい
    # nameがtitleとbodyの要素しか受け取らないよって意味
    private
    def post_params
        params.require(:post).permit(:title, :body)
    end

end
