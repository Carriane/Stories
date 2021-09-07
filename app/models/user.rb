class User < ApplicationRecord
    has_many :messages, class_name: "Message", foreign_key: "recipient_id"
    has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
    has_secure_password
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
end
