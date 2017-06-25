class CreateInterns < ActiveRecord::Migration[5.0]
  def change
    create_table :interns do |t|
      t.string :fullName
      t.string :otherName
      t.string :institution
      t.string :registrationNumber
      t.string :program
      t.string :year
      t.string :gender
      t.string :emailAdress
      t.string :profilePic

      t.timestamps
    end
  end
end
