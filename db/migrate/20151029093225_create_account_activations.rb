class CreateAccountActivations < ActiveRecord::Migration
  def change
    create_table :account_activations do |t|

      t.timestamps null: false
    end
  end
end
