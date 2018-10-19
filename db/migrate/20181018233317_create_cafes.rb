ROM::SQL.migration do
  change do
    create_table :cafes do
      primary_key :id
      column :name, :text, null: false

      column :lat, :int, null: false, index: true
      column :lng, :int, null: false, index: true
      column :address, :text, null: false

      column :simplified_name, :text, null: false
      column :dmetaphone_name, :text, null: false, index: true

      column :rating, :int, index: true
      column :reviews_count, :int, null: false, default: 0
      column :last_reviewed_at, :timestamp, index: true

      column :created_at, :timestamp, null: false
      column :updated_at, :timestamp, null: false
    end
  end
end
