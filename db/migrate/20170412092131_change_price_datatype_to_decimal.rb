class ChangePriceDatatypeToDecimal < ActiveRecord::Migration

   change_table :products do |t|
      t.change :price, :decimal
   
end
end
