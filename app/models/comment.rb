# formや入力値において、制約を定めるクラス

class Comment < ApplicationRecord
  belongs_to :post

  # bodyは必須項目とする選言
  validates :body, presence: true
end
