class CreateMockMember < ActiveRecord::Migration[7.0]
  def change
    create_table :mock_members do |t|
      t.string :scim_uid
      t.string :username
      t.timestamps
    end
  end
end
