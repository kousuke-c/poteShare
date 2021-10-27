class Reserve < ApplicationRecord
  validates :start,:end ,presence: true
  validates :people,presence: true
  validate :start_end_check
 
  def start_end_check
     errors.add(:end, "は開始時刻より遅い時間を選択してください") if self.start > self.end
 
    end
      
end
