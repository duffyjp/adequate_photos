class ImportPath < ActiveRecord::Base


  validates :path_name, uniqueness: true, presence: true


  def update_total_size
    self.total_size = %x[ du -sh #{path_name} ].to_s.split.first unless path_name.blank?
  end

  # TODO: Need to filter only Image files.
  # JPG NEF CR2
  def array_of_files
    #Dir.chdir(path_name)
    #Dir.glob("*.{jpg,jpeg,JPG,JPEG,nef,NEF,cr2,CR2}")
    Dir.entries(path_name)
  end


  def import
    array_of_files.each do |file|

      # Add the Path back in.
      file = File.join(path_name, file)

      # Look for the file in the database
      matches = Photo.where(file_size: File.size(file))
      matches = matches.where(md5: File.md5(file)) unless matches.blank?  # MD5 is expensive, Only run it if you need to

      # Skip if we already have it.
      if matches.blank?
        Photo.create(file_name: file)
      end
    end
  end




end
