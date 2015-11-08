class Project < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: "404x250>" }, :default_url => "project_missing_:style.jpg"


  validates_attachment :image, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 1.megabytes }
end
