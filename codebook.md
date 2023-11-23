# Codebook

### PART A: VARIABLES USED
This codebook describes the 88 variables in the final table that is the output of the run_analysis.R script.

The variables are:

a. **subject** (1 variable)  
    
    Describes the subjects that test were conducted on. The subjects are labeled from 1 to 30.    
    
b. **activity_label** (1 variable)
    
    Describes the activity done by the subject. 6 different activities were done, namely:  
        1 = WALKING  
        2 = WALKING_UPSTAIRS  
        3 = WALKING_DOWNSTAIRS  
        4 = SITTING  
        5 = STANDING  
        6 = LAYING  

c. **Mean measurement** variables (53 variables)  

        tBodyAcc.mean()-X
        tBodyAcc.mean()-Y                   
        tBodyAcc.mean()-Z
        tGravityAcc.mean()-X                
        tGravityAcc.mean()-Y
        tGravityAcc.mean()-Z                
        tBodyAccJerk.mean()-X
        tBodyAccJerk.mean()-Y               
        tBodyAccJerk.mean()-Z
        tBodyGyro.mean()-X                  
        tBodyGyro.mean()-Y
        tBodyGyro.mean()-Z                  
        tBodyGyroJerk.mean()-X
        tBodyGyroJerk.mean()-Y              
        tBodyGyroJerk.mean()-Z
        tBodyAccMag.mean()                  
        tGravityAccMag.mean()
        tBodyAccJerkMag.mean()              
        tBodyGyroMag.mean()
        tBodyGyroJerkMag.mean()             
        fBodyAcc.mean()-X
        fBodyAcc.mean()-Y                   
        fBodyAcc.mean()-Z
        fBodyAcc.meanFreq()-X               
        fBodyAcc.meanFreq()-Y                
        fBodyAcc.meanFreq()-Z               
        fBodyAccJerk.mean()-X
        fBodyAccJerk.mean()-Y               
        fBodyAccJerk.mean()-Z
        fBodyAccJerk.meanFreq()-X           
        fBodyAccJerk.meanFreq()-Y
        fBodyAccJerk.meanFreq()-Z           
        fBodyGyro.mean()-X
        fBodyGyro.mean()-Y                  
        fBodyGyro.mean()-Z
        fBodyGyro.meanFreq()-X              
        fBodyGyro.meanFreq()-Y
        fBodyGyro.meanFreq()-Z              
        fBodyAccMag.mean()
        fBodyAccMag.meanFreq()              
        fBodyBodyAccJerkMag.mean()
        fBodyBodyAccJerkMag.meanFreq()      
        fBodyBodyGyroMag.mean()
        fBodyBodyGyroMag.meanFreq()         
        fBodyBodyGyroJerkMag.mean()
        fBodyBodyGyroJerkMag.meanFreq()     
        angle.tBodyAccMean.gravity.
        angle.tBodyAccJerkMean()gravityMean.
        angle.tBodyGyroMean.gravityMean.
        angle.tBodyGyroJerkMean.gravityMean.
        angle.X.gravityMean.
        angle.Y.gravityMean.                
        angle.Z.gravityMean.  
        
            
        * The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
        * Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
        * Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
        * These signals were used to estimate variables of the feature vector for each pattern. XYZ is used to denote 3-axial signals in the X, Y and Z directions.

d. **Standard deviation measurement** variables (33 variables)
        
        tBodyAcc.std()-X                    
        tBodyAcc.std()-Y
        tBodyAcc.std()-Z                    
        tGravityAcc.std()-X
        tGravityAcc.std()-Y                 
        tGravityAcc.std()-Z
        tBodyAccJerk.std()-X                
        tBodyAccJerk.std()-Y
        tBodyAccJerk.std()-Z                
        tBodyGyro.std()-X
        tBodyGyro.std()-Y                   
        tBodyGyro.std()-Z
        tBodyGyroJerk.std()-X               
        tBodyGyroJerk.std()-Y
        tBodyGyroJerk.std()-Z               
        tBodyAccMag.std()
        tGravityAccMag.std()                
        tBodyAccJerkMag.std()
        tBodyGyroMag.std()                  
        tBodyGyroJerkMag.std()
        fBodyAcc.std()-X                    
        fBodyAcc.std()-Y
        fBodyAcc.std()-Z                    
        fBodyAccJerk.std()-X
        fBodyAccJerk.std()-Y                
        fBodyAccJerk.std()-Z
        fBodyGyro.std()-X                   
        fBodyGyro.std()-Y
        fBodyGyro.std()-Z                   
        fBodyAccMag.std()
        fBodyBodyAccJerkMag.std()           
        fBodyBodyGyroMag.std()
        fBodyBodyGyroJerkMag.std()  
        
        * The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
        * Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
        * Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
        * These signals were used to estimate variables of the feature vector for each pattern. XYZ is used to denote 3-axial signals in the X, Y and Z directions.

     
### PART B: FLOW OF SCRIPT
The run_analysis.R script goes through the following parts in order to create the final tidy set table.  
* PART 1: Merge Training and Test data sets into 1 full data frame  
* PART 2: Extract only measurements with mean and standard deviation  
* PART 3: Name Activity Labels in Data Set  
* PART 4 Rename columns to be named appropriately  
* PART 5: Create an independent table that has the average of each variable by each activity and each subject  
* PART 6: Create final output of tidy table/data set  



