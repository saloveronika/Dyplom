class Chapter < ActiveRecord::Base
  has_many :sub_chapters, :dependent => :destroy
end
