## S&P 500 (SP500) | FRED

The source code outlining how this product gathers, transforms, revises and publishes its datasets is available at [https://github.com/rearc-data/fred-data-products](https://github.com/rearc-data/fred-data-products).

### Main Overview
The dataset file included with this product is provided in CSV format. The included dataset contains the following columns: 
`DATE`, `SP500`
 
This dataset contains a historical time-series data of the S&P 500 (SP500) starting from `2011-02-03`. 

The values within the data field labeled `SP500` represent the daily index value at market close at the time of the corresponding `DATE` field. The market typically closes at 4 PM ET, except for holidays when it sometimes closes early. The values are not seasonally adjusted.

The Federal Reserve Bank of St. Louis and S&P Dow Jones Indices LLC have reached a new agreement on the use of Standard & Poors and Dow Jones Averages series in FRED. FRED and its associated services will include 10 years of daily history for Standard & Poors and Dow Jones Averages series.

The S&P 500 is regarded as a gauge of the large cap U.S. equities market. The index includes 500 leading companies in leading industries of the U.S. economy, which are publicly held on either the NYSE or NASDAQ, and covers 75% of U.S. equities. Since this is a price index and not a total return index, the S&P 500 index here does not contain dividends.

Copyright © 2016, S&P Dow Jones Indices LLC. All rights reserved. Reproduction of S&P 500 in any form is prohibited except with the prior written permission of S&P Dow Jones Indices LLC ("S&P"). S&P does not guarantee the accuracy, adequacy, completeness or availability of any information and is not responsible for any errors or omissions, regardless of the cause or for the results obtained from the use of such information. S&P DISCLAIMS ANY AND ALL EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, ANY WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE OR USE. In no event shall S&P be liable for any direct, indirect, special or consequential damages, costs, expenses, legal fees, or losses (including lost income or lost profit and opportunity costs) in connection with subscriber's or others' use of S&P 500.

### Data Source
This dataset is provided by the [S&P Dow Jones Indices LLC](https://us.spindices.com/) and published by the [Federal Reserve Bank of St. Louis Economic Data](https://fred.stlouisfed.org/).

### More Information
- Source: 
  - [Federal Reserve Bank of St. Louis](https://www.stlouisfed.org)
  - [S&P Dow Jones Indices LLC](https://us.spindices.com/)
  - [Standard & Poors](https://us.spindices.com/indices/equity/sp-500)
- Dataset Page: [S&P Dow Jones Indices LLC, S&P 500 (SP500)](https://fred.stlouisfed.org/series/SP500)
- License: [FRED Terms Of Use FAQ](https://fred.stlouisfed.org/legal/)
  - Permission to reproduce S&P 500 can be requested from `index_services@spdji.com`. More contact details are available [here](http://us.spindices.com/contact-us), including phone numbers for all regional offices.
- Frequency: Daily, Close
- Format: CSV

### Contact Details
- If you find any issues with or have enhancement ideas for this product, open up a GitHub [issue](https://github.com/rearc-data/fred-data-products/issues) and we will gladly take a look at it. Better yet, submit a pull request. Any contributions you make are greatly appreciated :heart:.
- If you are looking for specific open datasets currently not available on ADX, please submit a request on our project board [here](https://github.com/orgs/rearc-data/projects/1).
- If you have questions about the source data, please contact [FRED](https://fred.stlouisfed.org/contactus/).
- If you have any other questions or feedback, send us an email at data@rearc.io.

### About Rearc
Rearc is a cloud, software and services company. We believe that empowering engineers drives innovation. Cloud-native architectures, modern software and data practices, and the ability to safely experiment can enable engineers to realize their full potential. We have partnered with several enterprises and startups to help them achieve agility. Our approach is simple — empower engineers with the best tools possible to make an impact within their industry.