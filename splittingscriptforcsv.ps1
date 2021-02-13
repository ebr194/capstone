# variable used to store the path of the source CSV file
$sourceCSV = 'C:\Users\Elijah\Desktop\CAP\On-street_Car_Parking_Sensor_Data_-_2017.csv' ;

# variable used to advance the number of the row from which the export starts
$startrow = 0 ;

# counter used in names of resulting CSV files
$counter = 1 ;

# setting the while loop to continue as long as the value of the $startrow variable is smaller than the number of rows in your source CSV file
while ($startrow -lt 35900000)
{

# import of however many rows you want the resulting CSV to contain starting from the $startrow position and export of the imported content to a new file
Import-CSV $sourceCSV | select-object -skip $startrow -first 11966667 | Export-CSV "C:\Users\Elijah\Desktop\CAP\splitfile_$counter.csv" -NoClobber;

# advancing the number of the row from which the export starts
$startrow += 11966667 ;

# incrementing the $counter variable
$counter++ ;

}