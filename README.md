# [Resume Project Challenge - 4](https://codebasics.io/challenge/codebasics-resume-project-challenge)

### Provide Insights to Management in Consumer Goods Domain



## Overview:
Atliq Hardware is a leading  computer hardware company in India with operations in other countries. They focus on making high-quality products but want to improve their use of data to make faster, smarter decisions.

## Table of Contents:

- [Project Presentation](#project-presentation)
- [Tools & Technique used](#tools--technique)
- [Problem Statement](#problem-statement)
- [Business Model](#business-model)
- [Goal](#goal)
- [Role](#role)
- [Task](#task)
- [Data Source](#data-source)
- [Data Modeling](#data-modeling)
- [Business Question (ad-hoc request)](#business-question-ad-hoc-request)
- [SQL Query](#sql-query)
- [Results and Insights](#results-and-insights)


## Project Presentation:

<p align="center">
<a href="https://youtu.be/lBUfhgtP6m4" target="_blank">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/video-presentation-thumnail.png" alt="Presentation Preview" style="width: 70%; max-width: 360px;">
  
</a>
</p>

## Tools & Technique:
- Data Analysis
   - Microsoft Excel
   - Microsoft Power BI Desktop (for map visual)
   - Data Modeling
   - MySQL Workbench
   - SQL (CTE, Join, Sub Query, Window Function, Explain Analyze)

- Project Documentation
   - Git & Github
   - VS Code Editor

- Video Recording & Presentation
   - OBS Studio
   - Microsoft Clipchamp - Video Editor
   - Microsoft Power Point

## Problem Statement:
Atliq’s management noticed they lack the insights needed for quick decision-making. To fix this, they plan to hire junior data analysts who are skilled in both technology and communication.

Tony Sharma, the Data Analytics Director, has set up a SQL challenge to find the right candidates.

## Business Model:
Let's Explain how Atliq Hardware sell their products. 

<p align="center">
    <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/business_model/BM-2.png" alt="Sell flow Overview" >
  </p>

  You can understand by this above image. Atliq first send their prroducts from their warehouse to different **Customers** who have partnered with Atliq then these customers sell Atliq's products to end user who consume the products. They are called **Consumer**.

  Atliq sell products through different Platforms and different Channels.

  <p align="center">
    <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/business_model/BM-1.png" alt="Platform and Channel Overview" >
  </p>

  Through **Direct** channel, Atliq sell products diectly to the end user (Consumer).

  Atliq have different kinds of prroductline. Look at the below chart.

  <p align="center">
      <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/business_model/BM-3.png" alt="Product Line Overview" >
    </p>


## Goal:
The goal of this project is to provide clear and accurate insights for 10 specific 
business questions from the ad hoc requests. These insights will be used by Executive as
top management to improve decision-making.

## Role:
My role is to act as a Junior Data Analyst who is responsible for analyzing business data using SQL and presenting actionable insights to help top-level management make informed decisions.

## Task:
- Run SQL queries to answer the 10 ad hoc business requests.
- Analyze the data and identify key insights that respond to the needs of the business.
- Create a presentation that clearly shows these insights in a way that top-level management can easily understand and use for decision-making.

## Data Source:

A sql sump file is provided by Codebasics, which I have imported into MySQL Workbench and have got access the database named *_gdb023_* (atliq_hardware_db). It includes six main tables:

<p align="center"> Preview </p>


  <p align="center">
    <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/DS-overview.png" alt="Dataset Overview" >
  </p>

> To learn more about these tables in details, check out this [Meta Data](./Metadata.txt)

> [!IMPORTANT]
> Data is available from Fiscal Year 2020 to 2021. At Atliq Hardware fiscal year starts from September month of calendar year (Look at below table for reference).

<p align="center">
    <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/qtr-table.png" alt="Quarter Month Table" >
  </p>

## Data Modeling
Here you can check the Data Model which is used for this project. I have created this model in MySQL Workbench. 

<p align="center">
<img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/data_model/data-model-preview.png" alt="Data Model Preview" >
</p>

> You can also check the data model file [here](./data_model/adhoc_data_model.mwb). You can use by downloading it and then open MySQL Workbench: _file_ > _open model_ > select the file. The model is appeared automatically.

## Business Question (ad-hoc request):
There are 10 ad-hoc request on which I run SQL query to extract answers and then analyze it for getting key insights from that outputs.

You can see the ad-hoc requests [here](./ad-hoc-requests.pdf)

## SQL Query:
Check out all SQL Queries from [here](./sql_query/ad-hoc-requests-query.sql)

## Results and Insights: 
1. Provide the list of markets in which customer Atliq Exclusive operates its business in the APAC region.

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-1.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-1-map-visual.png">
</p>

<p align="center"> Insight </p>

- **Geographical Presence:** ***Atliq Exclusive*** has a broad presence across diverse markets in the APAC region, covering South Asia (India, Bangladesh), Southeast Asia (Indonesia, Philippines), East Asia (Japan, South Korea), and Oceania (Australia, New Zealand).

- **Market Expansion Opportunities:** Understanding the current markets where Atliq Exclusive operates allows stakeholders to explore further expansion opportunities within APAC, such as emerging markets like Vietnam or Thailand, where consumer goods demand may be rising.

- **Market-Specific Strategies:** Different markets may have unique consumer behaviors, regulatory requirements, or demand patterns. This data supports tailoring strategies to meet the distinct needs of each market for more effective engagement and growth.

2. What is the percentage of unique product increase in 2021 vs. 2020?

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-2.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-2-visual.png">
</p>

<p align="center"> Insight </p>

- **Product Expansion:** A 36.33% increase in unique products reflects a significant product expansion strategy.
- **Market Adaptability:** Growing product diversity may cater to evolving consumer demands, potentially enhancing market share.

3. Provide a report with all the unique product counts for each segment.

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-3.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-3-visual.png">
</p>

<p align="center"> Insight </p>

- **Focus Areas:** Prioritize Notebooks and Accessories, as they have the most products and likely the most customer demand.
- **Expansion Opportunity:** Consider adding more products in Storage and Networking to capture more of the market in these areas.

4. Which segment had the most increase in unique products in 2021 vs 2020?

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-4.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-4-visual.png">
</p>

<p align="center"> Insight </p>

- **Capitalize on Accessories Demand:** Accessories had the largest product increase, suggesting strong customer interest. Prioritize this segment for increased marketing and product development to maximize revenue.

- **Optimize Notebooks and Peripherals:** Consistent growth in these segments indicates steady demand. Focus on enhancing product quality and availability here to retain market share.

- **Explore Potential in Desktops:** Although traditionally lower in product count, Desktop’s growth (+15) suggests rising demand. Consider testing new products or targeted promotions to capture this emerging interest.

- **Evaluate Storage & Networking:** Minimal growth in Storage and Networking may indicate limited demand. Assess these segments for possible optimization or cost reduction.

5. Get the products that have the highest and lowest manufacturing costs

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-5.png">
</p>

<p align="center"> Insight </p>

- **Cost Optimization:** Consider evaluating high-cost products like AQ HOME Allin1 Gen 2 for possible cost-saving measures in manufacturing.
- **Product Portfolio Balance:** With a significant range in manufacturing costs, assess pricing strategies to ensure profitability across the product lineup.

6. Generate a report which contains the top 5 customers who received an average high Pre Invoice Discount %  for the fiscal year 2021 and in the Indian market.

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-6.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-6-Visual.png">
</p>

<p align="center"> Insight </p>

- **High Discount for Key Retailers:** Top customers like Flipkart, Viveks, and Ezone received average discounts above 30%. This strategy may be beneficial for volume sales but should be balanced against profit margins. Evaluate if these discounts are driving enough revenue to justify the lower margins.

- **Optimize Discount Strategy:** Consider refining the discount strategy by offering incentives tied to sales performance or long-term contracts with these high-volume customers. This could help maximize revenue while keeping discounts in check, especially for large accounts like Amazon and Croma.

7. Get the complete report of the Gross sales amount for the customer Atliq Exclusive for each month.

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-7.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-7-visual.png">
</p>

<p align="center"> Insight </p>

- **Growth with High November 2020 Peak:** Sales consistently grew, peaking sharply in November 2020, likely due to holiday promotions or special launches. This period saw the highest demand.

- **Low Sales Early 2020:** Sales were lower in early 2020, possibly due to economic slowdown or reduced consumer spending at the start of the pandemic.

8. In which quarter of 2020, got the maximum total sold quantity?

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-8.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-8-visual.png">
</p>

<p align="center"> Insight </p>

- The Q1 achieved the highest total sold quantity at 7.01 million units, indicating strong sales performance at the beginning of the year.

- Sales decreased in Q2, Q4, and dropped significantly in Q3, suggesting potential challenges like COVID-19 Pandemic Impact, economic uncertainty, Market Saturation, Retail and Distribution Challenges affecting sales as the year progressed.

9. Which channel helped to bring more gross sales in the fiscal year 2021 and the percentage of contribution?

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-9.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-9-visual.png">
</p>

<p align="center"> Insight </p>

- **Retailer Channel Leads Sales:** The retailer channel generated $1,219.08 million, contributing 73.23% of total gross sales, highlighting its crucial role in revenue generation.

- **Focus on Partnerships:** Strengthen relationships with retailers for better promotions while exploring ways to enhance sales through direct and distributor channels to improve overall contributions.

10. Get the Top 3 products in each division that have a high total sold quantity in the fiscal year 2021?

<p align="center"> Query Output </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/results/Req-10.png">
</p>

<p align="center" > Visual </p>

<p align="center">
  <img src="https://raw.githubusercontent.com/PuranjoyPatra/Resume_Project_Challenge_4/refs/heads/master/images/visuals/Req-10-visual.png">
</p>

<p align="center"> Insight </p>

- **Strong Demand for Storage and Gaming Products:** The top-selling products are pen drives and gaming mice, indicating a high consumer preference in these categories. This suggests opportunities to expand product offerings and marketing efforts in these areas.

- **Low Sales in PC Division:** The PC division's highest-selling product had significantly lower sales compared to other divisions, highlighting potential issues such as limited product variety or lack of market awareness. Further analysis is needed to improve performance.

- **Inventory and Marketing Recommendations:** Ensure sufficient stock for high-demand products and consider targeted marketing strategies for the PC division to boost sales and align with consumer trends.
