class CreateNavis < ActiveRecord::Migration[6.0]
  def change
    create_table :navis do |t|

      t.timestamps
    end
  end
end
