#fill XXXXXX according to your files 

setwd("C:/XXXXXX")
library(pliman)

healthy <- image_import("healthy.jpg") 
#load reference for healthy
symptoms <- image_import("symp.jpg") 
#load reference for symptoms
background <- image_import("background.jpg") 
#load reference for background

res <-measure_disease(pattern ="XXXXXX", 
                      #name of your file sequence
                      img_healthy = healthy, 
                      #reference for healthy
                      img_symptoms = symptoms, 
                      #reference for symptoms
                      img_background = background, 
                      #reference for background
                      fill_hull = FALSE,
                      #does not automatically filles holes. fill_hull = TRUE (default) leads to overestimation of necrotic area
                      dir_original = "C:/XXXXXX", 
                      #folder of your original files
                      save_image = TRUE, 
                      #saves the processed pictures
                      dir_processed = "C:/XXXXXX/processed") 
                      #folder for processed pictures

write.csv(res[["severity"]],"C:/XXXXXX/processed/symparea.csv") 
#saves the results als .csv

