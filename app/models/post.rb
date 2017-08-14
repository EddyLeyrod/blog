class Post < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 3}
	validates :body, presence: true	
	
	has_many :comments, dependent: :destroy
	
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
