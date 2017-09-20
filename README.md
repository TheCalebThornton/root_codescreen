# root_codescreen
Track driving history

Overview: Write and app that accepts a .txt file (space delimited) and records driving history

Example text file:
Driver Dan
Driver Alex
Driver Bob
Trip Dan 07:15 07:45 17.3
Trip Dan 06:12 06:32 21.8
Trip Alex 12:01 13:16 42.0

Compute Average speed for each driver
Example Output:
Alex: 42 miles @ 34 mph
Dan: 39 miles @ 47 mph
Bob: 0 miles

Architecture-
driver class
  name, trips(has_many/1-many)
trip class
  start, stop, speed, driver(belongs_to/many-1)
**Note** Typically I would have a class/table recording which records have been read based on a unique identifier.
  This would allow me to prevent recording duplicate data if the process were to fail in the middle. <- Alternative
  to having the file persisted as one large transaction. Inefficent in scenarios with large files.
  However, since the problem is simplified there is no unique identifier so I will assume this functionality is to be 
  left out. 
**End Note**
driving_record_service class
  process_driving_record_file(File file)
  
