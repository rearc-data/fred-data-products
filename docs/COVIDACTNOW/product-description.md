#  COVID-19 Metrics by US County | CovidActNow

The source code outlining how this product gathers, transforms, revises and publishes its datasets is available at [https://github.com/rearc-data/fred-data-products](https://github.com/rearc-data/fred-data-products).

## Main Overview
The dataset file included with this product is provided in CSV format. Data definitions are as follows: 

-  Cases

   - Cases
   
        - Cumulative confirmed or suspected cases.  

        - Column name: **actuals.cases**

   - New Cases

        - New confirmed or suspected cases.

        - New cases are a processed timeseries of cases - summing new cases may not equal the cumulative case count.

        - Processing steps:

          1. If a region does not report cases for a period of time but then begins reporting again, we will exclude the first day that reporting recommences. This first day likely includes multiple days worth of cases and can be misleading to the overall series.

          2. We remove any days with negative new cases.

          3. We apply an outlier detection filter to the timeseries, which removes any data points that seem improbable given recent numbers. Many times this is due to backfill of previously unreported cases.

        - Column name: **actuals.newCases**

   - Case Density  
   
      - The number of cases per 100k population calculated using a 7-day rolling average.

      - Column name: **metrics.caseDensity**

   - Infection Rate
       
      - R_t, or the estimated number of infections arising from a typical case.

      - Column name: **metrics.infectionRate**

   - Infection Rate Ci90

       - 90th percentile confidence interval upper endpoint of the infection rate.

       - Column name: **metrics.infectionRateCI90**

- Tests

    - Positive Tests
    
      - Cumulative positive test results to date
      
      - Column name: **actuals.positiveTests**

  - Negative Tests
  
    - Cumulative negative test results to date

    - Column name: **actuals.negativeTests**

  - Test Positivity Ratio
 
    - Ratio of people who test positive calculated using a 7-day rolling average.

    - Column name: **metrics.testPositivityRatio**

  - Test Positivity Ratio Details

    - Data source for test positivity ratio metric

    - Column name: **metrics.testPositivityRatioDetails.source**

- Hospitalizations

  - Icu Beds
  
    - Information about ICU bed utilization details.

    - Fields:

        Field | Description | Column Name
        ---|---|---
        capacity | Current staffed ICU bed capacity | actuals.icuBeds.capacity
        total usage | Total number of ICU beds currently in use | actuals.icuBeds.currentUsageTotal
        COVID usage | Number of ICU beds currently in use by COVID patients | actuals.icuBeds.currentUsageCovid
        usage rate | Typical ICU utilization rate | actuals.icuBeds.typicalUsageRate
        
  - Hospital Beds
    
    - Information about acute bed utilization details.

    - Fields:
        
        Field | Description | Column Name
        ---|---|--- 
        capacity | Current staffed acute bed capacity | actuals.hospitalBeds.capacity
        total usage | Total number of acute beds currently in use | actuals.hospitalBeds.currentUsageTotal
        COVID usage | Number of acute beds currently in use by COVID patients | actuals.hospitalBeds.currentUsageCovid
        usage rate | Typical acute bed utilization rate | actuals.hospitalBeds.typicalUsageRate
           
  - Icu Capacity Ratio  

    - Ratio of staffed intensive care unit (ICU) beds that are currently in use.

    - Column name: **metrics.icuCapacityRatio**

  - Icu Headroom Ratio

    - Column name: **metrics.icuHeadroomRatio**

-  Vaccinations

   - Vaccines Distributed
  
      - Number of vaccine doses distributed.

      - Column name: **actuals.vaccinesDistributed**

   - Vaccinations Initiated
  
      - Number of vaccinations initiated.

      - This value may vary by type of vaccine, but for Moderna and Pfizer this indicates number of people vaccinated with the first dose.

      - Column name: **actuals.vaccinationsInitiated**

   - Vaccinations Completed
     
      - Number of vaccinations completed.

      - This value may vary by type of vaccine, but for Moderna and Pfizer this indicates number of people vaccinated with both the first and second dose.

      - Column name: **actuals.vaccinationsCompleted**

   - Vaccinations Initiated Ratio
     
      - Ratio of population that has initiated vaccination.

      - Column name: **metrics.vaccinationsInitiatedRatio**

   - Vaccinations Completed Ratio
      
      - Ratio of population that has completed vaccination.

      - Column name: **metrics.vaccinationsCompletedRatio**

-  Deaths

   - Deaths
   
     - Cumulative deaths that are suspected or confirmed to have been caused by COVID-19.

     - Column name: **actuals.deaths**

## Data Source
This dataset is provided by [CovidActNow](https://covidactnow.org/) (CAN). 

## More Information
- Source: [CovidActNow](https://covidactnow.org)
- Dataset API: [Accessing the API | CovidActNow](https://apidocs.covidactnow.org/access/)
- License: [Creative Commons](https://creativecommons.org/licenses/by-nc-nd/4.0/)
- Frequency: Daily
- Format: CSV

## Contact Details
- If you find any issues with or have enhancement ideas for this product, open up a GitHub [issue](https://github.com/rearc-data/fred-data-products/issues) and we will gladly take a look at it. Better yet, submit a pull request. Any contributions you make are greatly appreciated :heart:.
- If you are looking for specific open datasets currently not available on ADX, please submit a request on our project board [here](https://github.com/orgs/rearc-data/projects/1).
- If you have questions about the source data, please contact [CAN](https://covidactnow.org/contact).
- If you have any other questions or feedback, send us an email at data@rearc.io.

## About Rearc
Rearc is a cloud, software and services company. We believe that empowering engineers drives innovation. Cloud-native architectures, modern software and data practices, and the ability to safely experiment can enable engineers to realize their full potential. We have partnered with several enterprises and startups to help them achieve agility. Our approach is simple — empower engineers with the best tools possible to make an impact within their industry.
