# formや入力値において、制約を定めるクラス

class Post < ApplicationRecord
    has_many :comments, dependent: :destroy 
    # 上記の宣言をすることで、@post.commentsでコメントを扱える
    # dependentを設定することでpostに関連するcommentも削除などができる

    # 値の名前, 入力必須(true), 文字数の制限
    validates :title, presence: true, length: {minimum: 3, message: 'Too short to port!'}
    validates :body, presence: true
end
