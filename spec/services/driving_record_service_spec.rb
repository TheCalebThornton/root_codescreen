require 'services/driving_record_service'

describe DrivingRecordSerivce do
  describe '.process_driving_record_file' do
    context 'given a file path with one driver' do
      it 'returns a map with driver distance and speed averages' do
        results = DrivingRecordSerivce.process_driving_record_file(File.dirname(__FILE__) + '/../resources/testOneDriver.txt')
        expect(results[0].miles).to eql 42.0
        expect(results[0].mph).to eql 34
      end
    end
    context 'given a file path to empty file'do
      it 'returns empty list' do
        results = DrivingRecordSerivce.process_driving_record_file(File.dirname(__FILE__) + '/../resources/empty.txt')
        expect(results.size()).to eql 0
      end
    end
  end
end