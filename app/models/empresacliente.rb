class Empresacliente < ActiveRecord::Base
  belongs_to :usuario
  
  has_attached_file :foto, styles: { medium: "160x160", big: "700x700" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
end
