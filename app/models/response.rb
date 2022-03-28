class Response < ApplicationRecord
  belongs_to :feedback, :question
end
