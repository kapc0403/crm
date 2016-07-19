class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_attached_file :foto, styles: { medium: "160x160", big: "700x700" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
    
    validates :nombreUsuario, presence: true, uniqueness: true,
      length: {in: 4..20, too_short: "Debes tener al menos 5 caracteres", too_long: "Puedes tener máximo 20 caracteres"},
      format: {with: /([A-Za-z0-9\-\_]+)/, message: "Tu usuario solo puede contener letras, numeros y guiones"}
            
  def nombreCompletoUsuario
    "#{nombre} #{apellido}"
  end
    
end
