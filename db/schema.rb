ActiveRecord::Schema.define(version: 2020_08_20_065804) do

  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "content"
  end

end
