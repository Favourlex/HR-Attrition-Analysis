## 📊 Power BI Dashboard Preview
Here’s a snapshot of the HR Attrition Dashboard:

![Dashboard Screenshot](dashboard_screenshot.png



---

## 📝 Dataset

- **File:** `indicino_cleaned_engineered_v2.csv`  
- **Description:** Cleaned HR dataset including:
  - Employee demographics (Age, Gender, Marital Status, Education, etc.)
  - Job role and level
  - Compensation & salary hike
  - Work-life factors (OverTime, WorkLifeBalance, JobSatisfaction, etc.)
  - Attrition flag (target variable)
- **Source:** Company HR data (simulated for this project)

---

## 💻 Python Analysis

- **Notebook:** `HR_Attrition_Analysis.ipynb`  
- **Purpose:** Perform exploratory data analysis (EDA), feature engineering, and visualization to understand patterns in attrition.  
- **Key Steps:**
  1. Load and clean dataset  
  2. Explore attrition patterns across age, gender, department, and job role  
  3. Visualize correlations between features and attrition  
  4. Identify high-risk groups for employee turnover  

---

## 🗃 SQL Queries

- **File:** `queries.sql`  
- **Purpose:** Extract insights and generate reports directly from the database.  
- **Sample queries included:**
  - Overall attrition percentage  
  - Attrition by gender, department, and job role  
  - Average tenure, income, and promotion rates  
  - Attrition analysis for overtime, job satisfaction, and frequent job hops  

---

## 🔑 Key Insights

- Employees working overtime or with low job satisfaction have higher attrition rates.  
- Certain departments like Sales and Support show consistently higher turnover.  
- Higher income employees and those with recent promotions are more likely to stay.  
- Age, tenure, and manager experience also influence attrition patterns.  

---

## ⚡ How to Explore

1. **Python Notebook**  
   - Open `HR_Attrition_Analysis.ipynb` in Jupyter Notebook, VS Code, or Google Colab to view analysis and visualizations.  

2. **SQL Queries**  
   - Run `queries.sql` in your database to reproduce the insights.  

3. **Power BI Dashboard**  
   - Open `Indicino_Employee_Attrition_Dashboard.pbix` in Power BI Desktop to interact with the dashboard visuals.  

---

## 🛠 Tools Used

- Python (Pandas, Matplotlib, Seaborn, etc.)  
- SQL (PostgreSQL / MySQL compatible queries)  
- Power BI Desktop  

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).



