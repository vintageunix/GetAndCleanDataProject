Contents :
1. Features Selection Based on the Initial Data Set
2. Transformations
3. Fields of the tidyDataSet

1. Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


2. Transformations
Merge the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Remove all the duplicated variable names as well as the correlation coefficient which are not needed for the new data set.
For the resulting smaller data set calculate the average value of the mean as well as the std variables for each Subject as well as Activity.

3. Fields of the tidyDataSet
activityLabel   : Type of Activity [ LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS ]
Subject         : ID of subjects used in the experiment [1-30]
tBodyAcc_mean_X : Mean of Acceleration Signal Body Motion Along X
tBodyAcc_mean_Y : Mean of Acceleration Signal Body Motion Along Y
tBodyAcc_mean_Z : Mean of Acceleration Signal Body Motion Along Z
tGravityAcc_mean_X      : Mean of Acceleration Signal Gravity Along X
tGravityAcc_mean_Y      : Mean of Acceleration Signal Gravity Along Y
tGravityAcc_mean_Z      : Mean of Acceleration Signal Gravity Along Z
tBodyAccJerk_mean_X     : Mean of Jerk signals using Acc and Ang Velocity along X
tBodyAccJerk_mean_Y     : Mean of Jerk signals using Acc and Ang Velocity along Y
tBodyAccJerk_mean_Z     : Mean of Jerk signals using Acc and Ang Velocity along Y
tBodyGyro_mean_X        : Mean of Gyro measurements Along X
tBodyGyro_mean_Y        : Mean of Gyro measurements Along Y
tBodyGyro_mean_Z        : Mean of Gyro measurements Along Z
tBodyGyroJerk_mean_X    : Mean of Gyro based jerk Along X
tBodyGyroJerk_mean_Y    : Mean of Gyro based jerk Along Y
tBodyGyroJerk_mean_Z    : Mean of Gyro based jerk Along Z
fBodyAcc_mean_X : Mean of FFT Based Body Acceleration along X
fBodyAcc_mean_Y : Mean of FFT Based Body Acceleration along Y
fBodyAcc_mean_Z : Mean of FFT Based Body Acceleration along Z
fBodyAccJerk_mean_X     : Mean of FFT Based Body AccJerk along X
fBodyAccJerk_mean_Y     : Mean of FFT Based Body AccJerk along Y
fBodyAccJerk_mean_Z     : Mean of FFT Based Body AccJerk along Z
fBodyGyro_mean_X        : Mean of FFT based Gyro Along X
fBodyGyro_mean_Y        : Mean of FFT based Gyro Along Y
fBodyGyro_mean_Z        : Mean of FFT based Gyro Along Z
tBodyAcc_std_X  : STD of Acceleration Signal Body Motion Along X
tBodyAcc_std_Y  : STD of Acceleration Signal Body Motion Along Y
tBodyAcc_std_Z  : STD of Acceleration Signal Body Motion Along Z
tGravityAcc_std_X       : STD of Acceleration Signal Gravity Along X
tGravityAcc_std_Y       : STD of Acceleration Signal Gravity Along Y
tGravityAcc_std_Z       : STD of Acceleration Signal Gravity Along Z
tBodyAccJerk_std_X      : STD of Jerk signals using Acc and Ang Velocity along X
tBodyAccJerk_std_Y      : STD of Jerk signals using Acc and Ang Velocity along Y
tBodyAccJerk_std_Z      : STD of Jerk signals using Acc and Ang Velocity along Z
tBodyGyro_std_X : STD of Gyro measurements Along X
tBodyGyro_std_Y : STD of Gyro measurements Along Y
tBodyGyro_std_Z : STD of Gyro measurements Along Z
tBodyGyroJerk_std_X     : STD of Gyro based jerk Along X
tBodyGyroJerk_std_Y     : STD of Gyro based jerk Along Y
tBodyGyroJerk_std_Z     : STD of Gyro based jerk Along Z
fBodyAcc_std_X  : STD of of FFT Based Body Acceleration along X
fBodyAcc_std_Y  : STD of of FFT Based Body Acceleration along Y
fBodyAcc_std_Z  : STD of of FFT Based Body Acceleration along Z
fBodyAccJerk_std_X      : STD of FFT Based Body AccJerk along X
fBodyAccJerk_std_Y      : STD of FFT Based Body AccJerk along Y
fBodyAccJerk_std_Z      : STD of FFT Based Body AccJerk along Z
fBodyGyro_std_X : STD of FFT based Gyro along X
fBodyGyro_std_Y : STD of FFT based Gyro along Y
fBodyGyro_std_Z : STD of FFT based Gyro along Y


