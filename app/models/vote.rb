class Vote < ActiveRecord::Base
		belongs_to :story, counter_cache: true # this makes sure the story votes count is up to date

		validates :ip_address, uniqueness: { scope: :story }
end
