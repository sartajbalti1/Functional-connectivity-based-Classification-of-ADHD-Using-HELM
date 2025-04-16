flod5data is our data; I have already segmented it into 5-flod for the 5-fold-crossvalidation
HK_helm_train_1h.m is the code for khelm only one layer. I have written 4 scripts for one layer to four layers.
You can add more layers to record the result
I will help you rewrite the files main2_k.m and main1_hk_1h.m. The first one is the experience for Kelm, and the
second is for hkelm with one layer.
You can learn how to modify parameters.
You have to record some results, which are the classification accuracy of every fold:
for main2_k.m ,NC_Fold and ADHD_Fold are used to record result;
for main1_hk_1h.m,AD_result and NC_result are used to record result;
