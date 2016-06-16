class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_attached_file :foto, styles: { medium: "350x350", big: "700x700" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
    
end
