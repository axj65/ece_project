# Addressing Algorithmic Bias in Recidivism Score Predictions

## Overview
This project aims to mitigate the inherent bias in recidivism score predictions generated by the National Institute of Justice. The existing algorithms tend to exhibit biases towards gender and racial/ethnic groups, which can have profound implications on the lives of individuals affected by these predictions. We are leveraging innovative machine learning techniques to rectify and minimize these biases.

## Problem Statement

Recidivism scores play a crucial role in the criminal justice system, but they can perpetuate societal biases. This project aims to develop a fair and unbiased algorithmic decision-making model, focusing on gender and racial/ethnic groups.

## Key Features

- **Bias Mitigation Techniques:** Utilizing cutting-edge machine learning techniques to identify and mitigate biases in recidivism score predictions.
  
- **Fairness Evaluation Metrics:** Implementing rigorous fairness evaluation metrics to assess the model's performance across different demographic groups.

- **Transparency and Explainability:** Prioritizing transparency in the model's decision-making process and providing explanations for predictions to enhance accountability.

## Getting Started

- **Data:** All the datasets used in this study are accessible within the `data` folder. The primary datasets are identified with the prefix `NIJ_s_Recidivism_Challenge,` comprising three test datasets and one training dataset. The `Recidivism_Full_Dataset.csv` consolidates these datasets by incorporating an additional column specifying whether each entry belongs to the training or test set. Furthermore, there are two cleaned versions of the dataset available: `Recidivism_Data_Cleaned.csv` and `Recidivism_Full_Dataset_cleaned_shreshth.csv.` These cleaned datasets represent the result of preprocessing steps.

- **Analysis:** All models developed either in jupiter notebook and STATA are available in 'analysis' folder. `data_prep.ipynb` represents the data preprocessing done in this study, `Models.ipynb` represents the modelling the ml algorithms such as Logistic Regression, KNN, SVM, XGBoost, and CatBoost), their evaluations and comparison, and feature importance. `Logistic Regression Table.do` represents the tabular form of logisitic regression for impact evaluation on the odds of recidivism. `trained_models` stores the trained model, `tacc` presents model weights and prediction comparison, and `catboost_info` contains the information related to the CatBoost algorithm. Finally, `best_classifier_CatBoost.joblib` saved in the Joblib format containing the best trained machine learning model using CatBoost algorithm. 
