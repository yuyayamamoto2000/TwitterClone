class Blog < ApplicationRecord
  validates :content, length: { in: 1..140, message: "1〜140字以内で入力してください" }
end
