class CreateReleaseEraTags < ActiveRecord::Migration[5.2]
  def change
    create_table :release_era_tags do |t|

      t.timestamps
    end
  end
end
