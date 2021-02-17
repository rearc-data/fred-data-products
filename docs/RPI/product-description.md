## Real Personal Income (RPI) | FRED

The source code outlining how this product gathers, transforms, revises and publishes its datasets is available at [https://github.com/rearc-data/fred-data-products](https://github.com/rearc-data/fred-data-products).

### Main Overview
The dataset file included with this product is provided in CSV format. The included dataset contains the following columns: 
`DATE`, `RPI`
 
This dataset contains a historical time-series data of the Real Personal Income (RPI) starting from `1959-01-01`. 

The values within the data field labeled `RPI` is calculated by the Federal Reserve Bank of St. Louis as the Personal income in chained 2009 dollars (RPI) at the time of the corresponding `DATE` field. The calculated value is the personal income in current dollars (PI) deflated by the PCE chained price index (PCEPI). The unit of the data column is Billions of Chained 2012 Dollars and the values are based on seasonally adjusted annual rate.

### Data Source
This dataset is provided by the [U.S. Bureau of Economic Analysis](http://www.bea.gov/) and published by the [Federal Reserve Bank of St. Louis Economic Data](https://fred.stlouisfed.org/).

### More Information
- Source: 
  - [Federal Reserve Bank of St. Louis](https://www.stlouisfed.org)
  - [U.S. Bureau of Economic Analysis](http://www.bea.gov/)
  - [Personal Income and Outlays](https://www.bea.gov/data/income-saving/personal-income)
- Dataset Page: [U.S. Bureau of Economic Analysis, Real Personal Income (RPI)](https://fred.stlouisfed.org/series/RPI)
- License: [FRED Terms Of Use FAQ](https://fred.stlouisfed.org/legal/)
- Frequency: Monthly
- Format: CSV

### Contact Details
- If you find any issues with or have enhancement ideas for this product, open up a GitHub [issue](https://github.com/rearc-data/fred-data-products/issues) and we will gladly take a look at it. Better yet, submit a pull request. Any contributions you make are greatly appreciated :heart:.
- If you are looking for specific open datasets currently not available on ADX, please submit a request on our project board [here](https://github.com/orgs/rearc-data/projects/1).
- If you have questions about the source data, please contact [FRED](https://fred.stlouisfed.org/contactus/).
- If you have any other questions or feedback, send us an email at data@rearc.io.

### About Rearc
Rearc is a cloud, software and services company. We believe that empowering engineers drives innovation. Cloud-native architectures, modern software and data practices, and the ability to safely experiment can enable engineers to realize their full potential. We have partnered with several enterprises and startups to help them achieve agility. Our approach is simple — empower engineers with the best tools possible to make an impact within their industry.