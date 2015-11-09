class AddOwnerIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :owner_id, :string
  end
end
