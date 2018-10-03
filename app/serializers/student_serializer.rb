class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :birth_date, :main_program
end
