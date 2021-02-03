## TED Spread (TEDRATE) | FRED

The source code outlining how this product gathers, transforms, revises and publishes its datasets is available at [https://github.com/rearc-data/fred-data-products](https://github.com/rearc-data/fred-data-products).

### Main Overview
The dataset file included with this product is provided in CSV format. The included dataset contains the following columns: 
`DATE`, `TEDRATE`
 
This dataset contains a historical time-series data of the TED Spread (TEDRATE) starting from `1986-01-02`. 

The values within the data field labeled `TEDRATE` represent the spread between [3-Month LIBOR based on US dollars (USD3MTD156N)](https://fred.stlouisfed.org/series/USD3MTD156N) and [3-Month Treasury Bill (DTB3)](https://fred.stlouisfed.org/series/DTB3) the spread between 3-Month LIBOR based on US dollars (USD3MTD156N) and 3-Month Treasury Bill (DTB3) at the time of the corresponding `DATE` field. The unit of the data field is Percent and the values are not seasonally adjusted.

The series is lagged by one week because the LIBOR series is lagged by one week due to an agreement with the source.
Starting with the update on June 21, 2019, the Treasury bond data used in calculating interest rate spreads is obtained directly from the [U.S. Treasury Department](https://www.treasury.gov/resource-center/data-chart-center/interest-rates/Pages/TextView.aspx?data=yield).

### Data Source
This dataset is provided by the [Federal Reserve Bank of St. Louis](https://www.stlouisfed.org) and published by its [Economic Data Website](https://fred.stlouisfed.org/). 

### More Information
- Source: 
  - [Federal Reserve Bank of St. Louis](https://www.stlouisfed.org)
  - [Federal Reserve Bank of St. Louis Economic Data](https://fred.stlouisfed.org/)
  - [Main Economic Indicators](http://www.oecd-ilibrary.org/economics/data/main-economic-indicators/main-economic-indicators-complete-database_data-00052-en)
- Dataset Page: [Federal Reserve Bank of St. Louis, TED Spread (TEDRATE)](https://fred.stlouisfed.org/series/TEDRATE)
- License: [FRED Terms Of Use FAQ](https://fred.stlouisfed.org/legal/)
- Frequency: Daily
- Format: CSV

### Contact Details
- If you find any issues with or have enhancement ideas for this product, open up a GitHub [issue](https://github.com/rearc-data/fred-data-products/issues) and we will gladly take a look at it. Better yet, submit a pull request. Any contributions you make are greatly appreciated :heart:.
- If you are looking for specific open datasets currently not available on ADX, please submit a request on our project board [here](https://github.com/orgs/rearc-data/projects/1).
- If you have questions about the source data, please contact [FRED](https://fred.stlouisfed.org/contactus/).
- If you have any other questions or feedback, send us an email at data@rearc.io.

### About Rearc
Rearc is a cloud, software and services company. We believe that empowering engineers drives innovation. Cloud-native architectures, modern software and data practices, and the ability to safely experiment can enable engineers to realize their full potential. We have partnered with several enterprises and startups to help them achieve agility. Our approach is simple — empower engineers with the best tools possible to make an impact within their industry.