class CreateSurveys < ActiveRecord::Migration[5.2]
    def change
        create_table :surveys do |t|
            t.column(:title, :string)

            t.timestamps
        end
    end
end
