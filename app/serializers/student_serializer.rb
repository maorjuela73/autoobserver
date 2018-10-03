class StudentSerializer < ActiveModel::Serializer
  # attributes :id, :name, :email, :password_digest, :birth_date, :main_program
  attributes :id, :name, :email, :birth_date, :main_program
end
