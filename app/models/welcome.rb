class Welcome < ActiveRecord::Base
    
    has_attached_file :cover, styles: { thumb: "150x150", medium: "200x34" }
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    
end
