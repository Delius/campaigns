class Charity < ActiveRecord::Base
extend FriendlyId
friendly_id :name, use: :slugged
has_many :plans
belongs_to :campaign
validates :name, presence: true
end
