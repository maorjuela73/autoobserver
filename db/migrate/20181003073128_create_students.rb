class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :birth_date
      t.string :main_program

      t.timestamps
    end
  end
end
