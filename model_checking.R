model <- lmer(log_price ~ log_score+log_house + log_revie + (1+log_score|room_type) + (1+log_house|room_type) +(1+log_revie|room_type) ,listings_imp)
model1 <- lmer(log_price ~log_score+log_house+log_revie + (1+ log_score+log_house+log_revie|neighbourhood_cleansed) ,a)
model2 <- lmer(log_price ~ log_house+log_revie + (1+log_revie|neighbourhood_cleansed) ,a)
model3 <- lmer(log_price~ log_house+log_score+log_bed+log_bedroom + (1+log_score|neighbourhood_cleansed), a)
model4 <- lmer(log_price~ log_house+log_revie+log_score+log_bed+log_bedroom + (1|neighbourhood_cleansed), a)
model5 <- lmer(log_price~ log_house+log_score+log_bed+log_bedroom + (1+log_house|neighbourhood_cleansed), a)
model6 <- lmer(log_price~ log_house+log_score+log_bed+log_bedroom + (1+log_bed+log_bedroom|neighbourhood_cleansed), a)
model7 <- lmer(log_price~ log_house+log_score+log_bed+log_bedroom + (1+log_bed+log_bedroom|neighbourhood_cleansed) +(1+log_bed+log_bedroom|room_type), a)
model8 <- lmer(log_price ~ log_house +log_score +log_bed+ log_bedroom + (1 | neighbourhood_cleansed) + (0 + log_bed +log_bedroom | neighbourhood_cleansed), data=a)
model9 <- lmer(log_price ~ log_house  +log_bed+ log_bedroom + (1 | neighbourhood_cleansed) + (0 + log_bed +log_bedroom | neighbourhood_cleansed), data=a)

# model comparsion

model.comparison(model1,model2)

multilevel.icc(a$log_bed, cluster = a$neighbourhood_cleansed)
multilevel.icc(a$log_bedroom, cluster = a$neighbourhood_cleansed)

