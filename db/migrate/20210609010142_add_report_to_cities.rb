class AddReportToCities < ActiveRecord::Migration[6.1]
  def change
    add_column :cities, :report, :text
  end
end
