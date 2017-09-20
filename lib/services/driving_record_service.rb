require 'models/driver'
class DrivingRecordSerivce
  
  def self.process_driving_record_file(file_path)
    file_lines = []
    File.open(file_path, 'r') do |f|
      f.each_line do |line|
        file_lines << line
      end
    end
    
    file_lines
  end
end