class CreateQuestions < ActiveRecord::Migration[5.2]
    def change
        create_table :questions do |t|
            t.column(:query, :string)
            t.column(:type, :string)
            t.column(:survey_id, :integer)
            # t.string 'choices', array: true

            t.timestamps
        end
    end
end
