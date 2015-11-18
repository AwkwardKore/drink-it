class Beer < ActiveRecord::Base
  belongs_to :brewery
  belongs_to :style

  mount_uploader :image, BeerUploader
end
