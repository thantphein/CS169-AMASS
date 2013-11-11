class CreateFilmmakers < ActiveRecord::Migration
  def change
    create_table :filmmakers do |t|
	  t.text :about
	  t.text :summary
	  t.text :experience
	  t.text :skills
	  t.text :contact
      t.timestamps
    end
  end
end
