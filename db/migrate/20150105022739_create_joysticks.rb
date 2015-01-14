class CreateJoysticks < ActiveRecord::Migration
  def change
    create_table :joysticks do |t|
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
