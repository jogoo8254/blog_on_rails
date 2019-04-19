class Post < ApplicationRecord
    validates(:title, presence:true, uniqueness: true)
    validates(
        :body, presence: {message: "must exist"},
        length: {minimum: 50 }
        )
end
