class User < ApplicationRecord
 # Devise modules habilitados
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Tipos de usuário disponíveis
  enum :user_type, { paciente: 'paciente', terapeuta: 'terapeuta' }

  # Validações
  validates :name, presence: true
  validates :user_type, presence: true

  has_one :patient
  has_one :therapist

end
