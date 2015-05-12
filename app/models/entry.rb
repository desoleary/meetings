class Entry < ActiveRecord::Base
  validates :title, presence: true
  validate :ends_after_starts

  private
  def ends_after_starts
    errors.add(:ends_at, 'must be after starts_at') if ends_at <= starts_at
  end
end
