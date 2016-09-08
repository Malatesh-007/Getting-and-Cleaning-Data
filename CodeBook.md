---
title: "CodeBook"
author: "Malatesh"
date: "08/09/2016"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(theSubset)
```

```
##  timeBodyaccelerometer-mean()-X timeBodyaccelerometer-mean()-Y
##  Min.   :-1.0000                Min.   :-1.00000              
##  1st Qu.: 0.2626                1st Qu.:-0.02490              
##  Median : 0.2772                Median :-0.01716              
##  Mean   : 0.2743                Mean   :-0.01774              
##  3rd Qu.: 0.2884                3rd Qu.:-0.01062              
##  Max.   : 1.0000                Max.   : 1.00000              
##  timeBodyaccelerometer-mean()-Z timeBodyaccelerometer-std()-X
##  Min.   :-1.00000               Min.   :-1.0000              
##  1st Qu.:-0.12102               1st Qu.:-0.9924              
##  Median :-0.10860               Median :-0.9430              
##  Mean   :-0.10892               Mean   :-0.6078              
##  3rd Qu.:-0.09759               3rd Qu.:-0.2503              
##  Max.   : 1.00000               Max.   : 1.0000              
##  timeBodyaccelerometer-std()-Y timeBodyaccelerometer-std()-Z
##  Min.   :-1.00000              Min.   :-1.0000              
##  1st Qu.:-0.97699              1st Qu.:-0.9791              
##  Median :-0.83503              Median :-0.8508              
##  Mean   :-0.51019              Mean   :-0.6131              
##  3rd Qu.:-0.05734              3rd Qu.:-0.2787              
##  Max.   : 1.00000              Max.   : 1.0000              
##  timeGravityaccelerometer-mean()-X timeGravityaccelerometer-mean()-Y
##  Min.   :-1.0000                   Min.   :-1.000000                
##  1st Qu.: 0.8117                   1st Qu.:-0.242943                
##  Median : 0.9218                   Median :-0.143551                
##  Mean   : 0.6692                   Mean   : 0.004039                
##  3rd Qu.: 0.9547                   3rd Qu.: 0.118905                
##  Max.   : 1.0000                   Max.   : 1.000000                
##  timeGravityaccelerometer-mean()-Z timeGravityaccelerometer-std()-X
##  Min.   :-1.00000                  Min.   :-1.0000                 
##  1st Qu.:-0.11671                  1st Qu.:-0.9949                 
##  Median : 0.03680                  Median :-0.9819                 
##  Mean   : 0.09215                  Mean   :-0.9652                 
##  3rd Qu.: 0.21621                  3rd Qu.:-0.9615                 
##  Max.   : 1.00000                  Max.   : 1.0000                 
##  timeGravityaccelerometer-std()-Y timeGravityaccelerometer-std()-Z
##  Min.   :-1.0000                  Min.   :-1.0000                 
##  1st Qu.:-0.9913                  1st Qu.:-0.9866                 
##  Median :-0.9759                  Median :-0.9665                 
##  Mean   :-0.9544                  Mean   :-0.9389                 
##  3rd Qu.:-0.9464                  3rd Qu.:-0.9296                 
##  Max.   : 1.0000                  Max.   : 1.0000                 
##  timeBodyaccelerometerJerk-mean()-X timeBodyaccelerometerJerk-mean()-Y
##  Min.   :-1.00000                   Min.   :-1.000000                 
##  1st Qu.: 0.06298                   1st Qu.:-0.018555                 
##  Median : 0.07597                   Median : 0.010753                 
##  Mean   : 0.07894                   Mean   : 0.007948                 
##  3rd Qu.: 0.09131                   3rd Qu.: 0.033538                 
##  Max.   : 1.00000                   Max.   : 1.000000                 
##  timeBodyaccelerometerJerk-mean()-Z timeBodyaccelerometerJerk-std()-X
##  Min.   :-1.000000                  Min.   :-1.0000                  
##  1st Qu.:-0.031552                  1st Qu.:-0.9913                  
##  Median :-0.001159                  Median :-0.9513                  
##  Mean   :-0.004675                  Mean   :-0.6398                  
##  3rd Qu.: 0.024578                  3rd Qu.:-0.2912                  
##  Max.   : 1.000000                  Max.   : 1.0000                  
##  timeBodyaccelerometerJerk-std()-Y timeBodyaccelerometerJerk-std()-Z
##  Min.   :-1.0000                   Min.   :-1.0000                  
##  1st Qu.:-0.9850                   1st Qu.:-0.9892                  
##  Median :-0.9250                   Median :-0.9543                  
##  Mean   :-0.6080                   Mean   :-0.7628                  
##  3rd Qu.:-0.2218                   3rd Qu.:-0.5485                  
##  Max.   : 1.0000                   Max.   : 1.0000                  
##  timeBodygyroscope-mean()-X timeBodygyroscope-mean()-Y
##  Min.   :-1.00000           Min.   :-1.00000          
##  1st Qu.:-0.04579           1st Qu.:-0.10399          
##  Median :-0.02776           Median :-0.07477          
##  Mean   :-0.03098           Mean   :-0.07472          
##  3rd Qu.:-0.01058           3rd Qu.:-0.05110          
##  Max.   : 1.00000           Max.   : 1.00000          
##  timeBodygyroscope-mean()-Z timeBodygyroscope-std()-X
##  Min.   :-1.00000           Min.   :-1.0000          
##  1st Qu.: 0.06485           1st Qu.:-0.9872          
##  Median : 0.08626           Median :-0.9016          
##  Mean   : 0.08836           Mean   :-0.7212          
##  3rd Qu.: 0.11044           3rd Qu.:-0.4822          
##  Max.   : 1.00000           Max.   : 1.0000          
##  timeBodygyroscope-std()-Y timeBodygyroscope-std()-Z
##  Min.   :-1.0000           Min.   :-1.0000          
##  1st Qu.:-0.9819           1st Qu.:-0.9850          
##  Median :-0.9106           Median :-0.8819          
##  Mean   :-0.6827           Mean   :-0.6537          
##  3rd Qu.:-0.4461           3rd Qu.:-0.3379          
##  Max.   : 1.0000           Max.   : 1.0000          
##  timeBodygyroscopeJerk-mean()-X timeBodygyroscopeJerk-mean()-Y
##  Min.   :-1.00000               Min.   :-1.00000              
##  1st Qu.:-0.11723               1st Qu.:-0.05868              
##  Median :-0.09824               Median :-0.04056              
##  Mean   :-0.09671               Mean   :-0.04232              
##  3rd Qu.:-0.07930               3rd Qu.:-0.02521              
##  Max.   : 1.00000               Max.   : 1.00000              
##  timeBodygyroscopeJerk-mean()-Z timeBodygyroscopeJerk-std()-X
##  Min.   :-1.00000               Min.   :-1.0000              
##  1st Qu.:-0.07936               1st Qu.:-0.9907              
##  Median :-0.05455               Median :-0.9348              
##  Mean   :-0.05483               Mean   :-0.7313              
##  3rd Qu.:-0.03168               3rd Qu.:-0.4865              
##  Max.   : 1.00000               Max.   : 1.0000              
##  timeBodygyroscopeJerk-std()-Y timeBodygyroscopeJerk-std()-Z
##  Min.   :-1.0000               Min.   :-1.0000              
##  1st Qu.:-0.9922               1st Qu.:-0.9926              
##  Median :-0.9548               Median :-0.9503              
##  Mean   :-0.7861               Mean   :-0.7399              
##  3rd Qu.:-0.6268               3rd Qu.:-0.5097              
##  Max.   : 1.0000               Max.   : 1.0000              
##  timeBodyaccelerometermagnitude-mean()
##  Min.   :-1.0000                      
##  1st Qu.:-0.9819                      
##  Median :-0.8746                      
##  Mean   :-0.5482                      
##  3rd Qu.:-0.1201                      
##  Max.   : 1.0000                      
##  timeBodyaccelerometermagnitude-std()
##  Min.   :-1.0000                     
##  1st Qu.:-0.9822                     
##  Median :-0.8437                     
##  Mean   :-0.5912                     
##  3rd Qu.:-0.2423                     
##  Max.   : 1.0000                     
##  timeGravityaccelerometermagnitude-mean()
##  Min.   :-1.0000                         
##  1st Qu.:-0.9819                         
##  Median :-0.8746                         
##  Mean   :-0.5482                         
##  3rd Qu.:-0.1201                         
##  Max.   : 1.0000                         
##  timeGravityaccelerometermagnitude-std()
##  Min.   :-1.0000                        
##  1st Qu.:-0.9822                        
##  Median :-0.8437                        
##  Mean   :-0.5912                        
##  3rd Qu.:-0.2423                        
##  Max.   : 1.0000                        
##  timeBodyaccelerometerJerkmagnitude-mean()
##  Min.   :-1.0000                          
##  1st Qu.:-0.9896                          
##  Median :-0.9481                          
##  Mean   :-0.6494                          
##  3rd Qu.:-0.2956                          
##  Max.   : 1.0000                          
##  timeBodyaccelerometerJerkmagnitude-std()
##  Min.   :-1.0000                         
##  1st Qu.:-0.9907                         
##  Median :-0.9288                         
##  Mean   :-0.6278                         
##  3rd Qu.:-0.2733                         
##  Max.   : 1.0000                         
##  timeBodygyroscopemagnitude-mean() timeBodygyroscopemagnitude-std()
##  Min.   :-1.0000                   Min.   :-1.0000                 
##  1st Qu.:-0.9781                   1st Qu.:-0.9775                 
##  Median :-0.8223                   Median :-0.8259                 
##  Mean   :-0.6052                   Mean   :-0.6625                 
##  3rd Qu.:-0.2454                   3rd Qu.:-0.3940                 
##  Max.   : 1.0000                   Max.   : 1.0000                 
##  timeBodygyroscopeJerkmagnitude-mean()
##  Min.   :-1.0000                      
##  1st Qu.:-0.9923                      
##  Median :-0.9559                      
##  Mean   :-0.7621                      
##  3rd Qu.:-0.5499                      
##  Max.   : 1.0000                      
##  timeBodygyroscopeJerkmagnitude-std() frequencyBodyaccelerometer-mean()-X
##  Min.   :-1.0000                      Min.   :-1.0000                    
##  1st Qu.:-0.9922                      1st Qu.:-0.9913                    
##  Median :-0.9403                      Median :-0.9456                    
##  Mean   :-0.7780                      Mean   :-0.6228                    
##  3rd Qu.:-0.6093                      3rd Qu.:-0.2646                    
##  Max.   : 1.0000                      Max.   : 1.0000                    
##  frequencyBodyaccelerometer-mean()-Y frequencyBodyaccelerometer-mean()-Z
##  Min.   :-1.0000                     Min.   :-1.0000                    
##  1st Qu.:-0.9792                     1st Qu.:-0.9832                    
##  Median :-0.8643                     Median :-0.8954                    
##  Mean   :-0.5375                     Mean   :-0.6650                    
##  3rd Qu.:-0.1032                     3rd Qu.:-0.3662                    
##  Max.   : 1.0000                     Max.   : 1.0000                    
##  frequencyBodyaccelerometer-std()-X frequencyBodyaccelerometer-std()-Y
##  Min.   :-1.0000                    Min.   :-1.00000                  
##  1st Qu.:-0.9929                    1st Qu.:-0.97689                  
##  Median :-0.9416                    Median :-0.83261                  
##  Mean   :-0.6034                    Mean   :-0.52842                  
##  3rd Qu.:-0.2493                    3rd Qu.:-0.09216                  
##  Max.   : 1.0000                    Max.   : 1.00000                  
##  frequencyBodyaccelerometer-std()-Z
##  Min.   :-1.0000                   
##  1st Qu.:-0.9780                   
##  Median :-0.8398                   
##  Mean   :-0.6179                   
##  3rd Qu.:-0.3023                   
##  Max.   : 1.0000                   
##  frequencyBodyaccelerometerJerk-mean()-X
##  Min.   :-1.0000                        
##  1st Qu.:-0.9912                        
##  Median :-0.9516                        
##  Mean   :-0.6567                        
##  3rd Qu.:-0.3270                        
##  Max.   : 1.0000                        
##  frequencyBodyaccelerometerJerk-mean()-Y
##  Min.   :-1.0000                        
##  1st Qu.:-0.9848                        
##  Median :-0.9257                        
##  Mean   :-0.6290                        
##  3rd Qu.:-0.2638                        
##  Max.   : 1.0000                        
##  frequencyBodyaccelerometerJerk-mean()-Z
##  Min.   :-1.0000                        
##  1st Qu.:-0.9873                        
##  Median :-0.9475                        
##  Mean   :-0.7436                        
##  3rd Qu.:-0.5133                        
##  Max.   : 1.0000                        
##  frequencyBodyaccelerometerJerk-std()-X
##  Min.   :-1.0000                       
##  1st Qu.:-0.9920                       
##  Median :-0.9562                       
##  Mean   :-0.6550                       
##  3rd Qu.:-0.3203                       
##  Max.   : 1.0000                       
##  frequencyBodyaccelerometerJerk-std()-Y
##  Min.   :-1.0000                       
##  1st Qu.:-0.9865                       
##  Median :-0.9280                       
##  Mean   :-0.6122                       
##  3rd Qu.:-0.2361                       
##  Max.   : 1.0000                       
##  frequencyBodyaccelerometerJerk-std()-Z frequencyBodygyroscope-mean()-X
##  Min.   :-1.0000                        Min.   :-1.0000                
##  1st Qu.:-0.9895                        1st Qu.:-0.9853                
##  Median :-0.9590                        Median :-0.8917                
##  Mean   :-0.7809                        Mean   :-0.6721                
##  3rd Qu.:-0.5903                        3rd Qu.:-0.3837                
##  Max.   : 1.0000                        Max.   : 1.0000                
##  frequencyBodygyroscope-mean()-Y frequencyBodygyroscope-mean()-Z
##  Min.   :-1.0000                 Min.   :-1.0000                
##  1st Qu.:-0.9847                 1st Qu.:-0.9851                
##  Median :-0.9197                 Median :-0.8877                
##  Mean   :-0.7062                 Mean   :-0.6442                
##  3rd Qu.:-0.4735                 3rd Qu.:-0.3225                
##  Max.   : 1.0000                 Max.   : 1.0000                
##  frequencyBodygyroscope-std()-X frequencyBodygyroscope-std()-Y
##  Min.   :-1.0000                Min.   :-1.0000               
##  1st Qu.:-0.9881                1st Qu.:-0.9808               
##  Median :-0.9053                Median :-0.9061               
##  Mean   :-0.7386                Mean   :-0.6742               
##  3rd Qu.:-0.5225                3rd Qu.:-0.4385               
##  Max.   : 1.0000                Max.   : 1.0000               
##  frequencyBodygyroscope-std()-Z frequencyBodyaccelerometermagnitude-mean()
##  Min.   :-1.0000                Min.   :-1.0000                           
##  1st Qu.:-0.9862                1st Qu.:-0.9847                           
##  Median :-0.8915                Median :-0.8755                           
##  Mean   :-0.6904                Mean   :-0.5860                           
##  3rd Qu.:-0.4168                3rd Qu.:-0.2173                           
##  Max.   : 1.0000                Max.   : 1.0000                           
##  frequencyBodyaccelerometermagnitude-std()
##  Min.   :-1.0000                          
##  1st Qu.:-0.9829                          
##  Median :-0.8547                          
##  Mean   :-0.6595                          
##  3rd Qu.:-0.3823                          
##  Max.   : 1.0000                          
##  frequencybodyaccelerometerJerkmagnitude-mean()
##  Min.   :-1.0000                               
##  1st Qu.:-0.9898                               
##  Median :-0.9290                               
##  Mean   :-0.6208                               
##  3rd Qu.:-0.2600                               
##  Max.   : 1.0000                               
##  frequencybodyaccelerometerJerkmagnitude-std()
##  Min.   :-1.0000                              
##  1st Qu.:-0.9907                              
##  Median :-0.9255                              
##  Mean   :-0.6401                              
##  3rd Qu.:-0.3082                              
##  Max.   : 1.0000                              
##  frequencybodygyroscopemagnitude-mean()
##  Min.   :-1.0000                       
##  1st Qu.:-0.9825                       
##  Median :-0.8756                       
##  Mean   :-0.6974                       
##  3rd Qu.:-0.4514                       
##  Max.   : 1.0000                       
##  frequencybodygyroscopemagnitude-std()
##  Min.   :-1.0000                      
##  1st Qu.:-0.9781                      
##  Median :-0.8275                      
##  Mean   :-0.7000                      
##  3rd Qu.:-0.4713                      
##  Max.   : 1.0000                      
##  frequencybodygyroscopeJerkmagnitude-mean()
##  Min.   :-1.0000                           
##  1st Qu.:-0.9921                           
##  Median :-0.9453                           
##  Mean   :-0.7798                           
##  3rd Qu.:-0.6122                           
##  Max.   : 1.0000                           
##  frequencybodygyroscopeJerkmagnitude-std()    subject     
##  Min.   :-1.0000                           Min.   : 1.00  
##  1st Qu.:-0.9926                           1st Qu.: 9.00  
##  Median :-0.9382                           Median :17.00  
##  Mean   :-0.7922                           Mean   :16.15  
##  3rd Qu.:-0.6437                           3rd Qu.:24.00  
##  Max.   : 1.0000                           Max.   :30.00  
##    activity        
##  Length:10299      
##  Class :character  
##  Mode  :character  
##                    
##                    
## 
```


Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
