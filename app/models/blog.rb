class Blog < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true
    belongs_to :user
    has_many :blogs, dependent: :destroy
    # CommentモデルのAssociationを設定
    has_many :comments, dependent: :destroy
end
