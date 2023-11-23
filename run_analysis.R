run_analysis <- function() {
  
    # PART 1:  Merge Training and Test data sets into 1 full data frame
    # =================================================================
    # Read test set data
    y_test <- read.table("./UCIDataset/test/y_test.txt")
    x_test <- read.table("./UCIDataset/test/x_test.txt")
    subj_test <- read.table("./UCIDataset/test/subject_test.txt")
    
    # Read training set data
    y_train <- read.table("./UCIDataset/train/y_train.txt")
    x_train <- read.table("./UCIDataset/train/x_train.txt")
    subj_train <- read.table("./UCIDataset/train/subject_train.txt")
    
    # features names
    features <- read.table("./UCIDataset/features.txt")
    colnames(features) <- c("Number","testname")
    
    # PART 4: Rename variable names
    # Rename test set data columns
    colnames(x_test) <- features$testname
    colnames(y_test) <- "activity_label"
    colnames(subj_test) <- "subject"
    
    # Rename train set data columns
    colnames(x_train) <- features$testname
    colnames(y_train) <- "activity_label"
    colnames(subj_train) <- "subject"
    
    # Combine test set
    test_df <- data.frame(subj_test, y_test, x_test)
    
    # Combine training set
    train_df <- data.frame(subj_train, y_train, x_train)
    
    # Full tidy set combined using rbind
    full_df <- rbind(test_df, train_df)
    
    
    # PART 2: Extract only measurements with mean and standard deviation
    # Extract data set
    library(dplyr)
    new_df <- select(full_df, subject, activity_label, contains(c("mean","std")))
    
    # PART 3: Name Activity Labels in Data Set
    # Rename activity labels
    new_df$activity_label <- factor(new_df$activity_label)
    levels(new_df$activity_label) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
    
    # PART 4 Rename columns to be named appropriately
    col_df <- names(new_df)
    col_df <- gsub("\\.\\.\\.", "()-", col_df)
    col_df <- gsub("\\.\\.","()", col_df)
    names(new_df) <- col_df
              
    # Melt table
    library(reshape2)
    new_df_melted <- melt(new_df, id = c("subject","activity_label"))
    
    # PART 5: Create an independent table that has the average of each variable by each activity and each subject
    # Dcast table
    tidy_set_table <- dcast(new_df_melted, subject + activity_label ~ variable, mean)
    
    # PART 6: Create final output of tidy table/data set
    final_tidy_set_table <- melt(tidy_set_table, id = c("subject","activity_label"))
    final_tidy_set_table <- arrange(final_tidy_set_table, subject, activity_label)
    View(final_tidy_set_table)
    
    write.table(final_tidy_set_table, file = "final_tidy_set_table.txt", row.name=FALSE)
}

run_analysis()

