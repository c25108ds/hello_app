class User < ApplicationRecord
  has_many :microposts # 追記
end