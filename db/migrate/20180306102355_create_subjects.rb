class CreateSubjects < ActiveRecord::Migration[5.1]
  def self.up
    create_table :subjects do |t|
      t.column :name, :string, :null => false
    end

    Subject.create :name => "Buddhism"
    Subject.create :name => "Information Technology"
    Subject.create :name => "Mathematics"
    Subject.create :name => "Microbiology"
    Subject.create :name => "Physics"
    Subject.create :name => "Business Studies"
    Subject.create :name => "Language"
  end

  def self.down
    drop_table :subjects
  end
end