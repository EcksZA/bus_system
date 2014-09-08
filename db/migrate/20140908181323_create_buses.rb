class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name

    end
  end
end
