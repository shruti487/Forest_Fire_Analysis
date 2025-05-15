# Forest_Fire_Analysis
Forest Fire Data Analysis of Temperature Versus Area using R



# 🌲 Forest Fires Analysis in R

This project performs exploratory data analysis (EDA) on the UCI Forest Fires dataset using R. The objective is to examine how **temperature** affects the **area of forest burned**, identify outliers, and explore seasonal fire patterns by **month**.

---

## 📁 Project Structure

```
forest_fire_project/
├── forestfires.csv         # Dataset (UCI Forest Fire dataset)
├── forest_fire_analysis.R  # Main R script with code
└── scatter_plot.png        # Output image saved by script
```

---

## 📦 Requirements

Before running the project, ensure you have the following installed:

* **R** (version ≥ 4.0)
* R packages:

  * `tidyverse`
  * `ggplot2`

You can install the required packages in R using:

```r
install.packages("tidyverse")
```

---

## 📊 How to Run

1. **Clone or download** this project folder.

2. **Place the dataset file** (`forestfires.csv`) inside the project directory.
   If your dataset is stored elsewhere, update the file path in the script accordingly:

   ```r
   forest_fires <- read.csv("path/to/forestfires.csv")
   ```

3. **Open RStudio** or any R environment.

4. **Run the script** `forest_fire_analysis.R` step by step or all at once.

   You can do this by:

   * Opening the script in RStudio and clicking **Source**
   * Or by running:

     ```r
     source("forest_fire_analysis.R")
     ```

5. **Outputs**:

   * Several **ggplot2 visualizations** showing temperature vs. area burned.
   * An image file `scatter_plot.png` saved to your working directory.
   * The **correlation value** between temperature and area burned will be printed in the console.

---

## 🔍 Analysis Features

* Data loading and inspection using `head()`, `str()`, `summary()`
* Factor conversion for `month` and `day` columns
* Scatter plots with:

  * Trendlines
  * Highlighted outliers (area > 200 ha)
  * Grouping by month
* Correlation calculation between temperature and burned area

---

## 📌 Notes

* Ensure your working directory is set correctly or use `setwd()` if needed.
* The dataset must match the format of the UCI Forest Fire dataset (CSV with columns like `temp`, `area`, `month`, `day`, etc.).

---

## 📚 Dataset Source

* UCI Machine Learning Repository: [Forest Fires Data Set](https://archive.ics.uci.edu/ml/datasets/forest+fires)

---
