class Ckeditor::Picture < Ckeditor::Asset
 

  has_attached_file :data,
                    url: '/ckeditor_assets/pictures/:id/:style_:basename.:extension',
                    path: ':rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension',
                    styles: { content: '800>', thumb: '118x100#' }
  
  def url_content
    url(:content)
  end

  validates_attachment_presence :data
  validates_attachment_size :data, less_than: 100.megabytes
  validates_attachment_content_type :data, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]
  #do_not_validate_attachment_file_type :
  #validates_attachment_content_type :data, content_type: /\Aimage/
  #validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  #validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


end
