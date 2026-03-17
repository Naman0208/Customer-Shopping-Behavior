# 🛍️ Customer Shopping Behavior Analysis

## 🚀 Project Overview
This project analyzes customer shopping behavior using transactional data from **3,900 purchases** across multiple product categories.

The goal is to uncover insights into:
- Customer spending patterns  
- Product preferences  
- Customer segmentation  
- Subscription behavior  

These insights help drive **data-driven business decisions**.

---

## 🗂️ Dataset Summary

- 📌 **Rows:** 3,900  
- 📌 **Columns:** 18  

### Key Features:
- **Customer Demographics:** Age, Gender, Location, Subscription Status  
- **Purchase Details:** Item Purchased, Category, Purchase Amount, Season, Size, Color  
- **Behavioral Data:** Discount Applied, Promo Code Used, Purchase Frequency, Review Rating, Shipping Type  

<img width="624" height="219" alt="image" src="https://github.com/user-attachments/assets/1b36ec84-947b-44aa-9b41-77173c9e2b73" />

⚠️ **Missing Values:**  
- 37 null values in `Review Rating` column  

---

## 🧹 Data Cleaning & Preparation (Python)

Performed using **Pandas**:

- Loaded dataset and explored using `.info()` and `.describe()`  
- Handled missing values by imputing median rating per category  
- Standardized column names (snake_case)  
- Removed redundant columns (`promo_code_used`)  
- Ensured data consistency  

---

## ⚙️ Feature Engineering

Created new meaningful features:

- **age_group** → Categorized customers into age segments  
- **purchase_frequency_days** → Derived customer purchase intervals  

---

## 🛢️ Database Integration

- Connected Python with **PostgreSQL**  
- Loaded cleaned dataset into database  
- Enabled efficient SQL-based analysis  

---

## 📊 SQL Analysis (Business Insights)

Performed advanced queries to answer key business questions:

1. Revenue comparison by gender  
<img width="277" height="138" alt="image" src="https://github.com/user-attachments/assets/28dc6540-80b2-4c7f-909d-7606af2704b2" />


2. High-spending customers using discounts  
<img width="310" height="490" alt="image" src="https://github.com/user-attachments/assets/0964b2c3-0929-4d38-91c1-71d6dfb9d376" />

3. Top 5 products by review rating  
<img width="487" height="256" alt="image" src="https://github.com/user-attachments/assets/7474b9d6-88d3-4450-9f02-a00aa3568cda" />

4. Shipping type vs purchase behavior 
<img width="331" height="130" alt="image" src="https://github.com/user-attachments/assets/9b4a20a4-762d-4986-a36c-654c337bd135" />

5. Subscribers vs non-subscribers analysis  
<img width="624" height="113" alt="image" src="https://github.com/user-attachments/assets/1d333612-abb0-488e-9077-f7783468a26c" />

6. Discount-dependent products  
<img width="396" height="244" alt="image" src="https://github.com/user-attachments/assets/8408bb71-61b9-4e71-913f-ad361251cf53" />

7. Customer segmentation (New, Returning, Loyal) 
<img width="496" height="166" alt="image" src="https://github.com/user-attachments/assets/a8f3a801-c0fd-4258-8327-f21615f9bbad" />

8. Top 3 products per category 
<img width="624" height="455" alt="image" src="https://github.com/user-attachments/assets/62d9a48a-4851-4b61-9c53-2e1c6775e77f" />

9. Repeat buyers vs subscription behavior 
<img width="432" height="124" alt="image" src="https://github.com/user-attachments/assets/f3b77173-4a7c-40c7-9084-a2f60d95598b" />

10. Revenue contribution by age group  
<img width="357" height="204" alt="image" src="https://github.com/user-attachments/assets/9004f431-8ef0-47c4-b937-d9475cd01da0" />


---

## 📈 Dashboard (Power BI)

Built an interactive dashboard to visualize insights.

### Key Visuals:
- Revenue by Gender  
- Customer Segmentation  
- Top Products  
- Subscription Analysis  
- Revenue by Age Group  
- Shipping Type Analysis  

---

## 💡 Business Recommendations

- Increase subscription adoption with exclusive benefits  
- Implement loyalty programs for repeat customers  
- Optimize discount strategies to maintain profitability  
- Promote top-performing products  
- Target high-value customer segments  

---

## 🛠️ Tools & Technologies

- Python (Pandas)  
- PostgreSQL  
- Power BI  
- Jupyter Notebook  

---


## 📸 Dashboard Preview
<img width="668" height="373" alt="image" src="https://github.com/user-attachments/assets/21bda496-2e27-4c46-a36e-aa13ec512519" />


