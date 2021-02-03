## ICE BofA US Corporate Index Option-Adjusted Spread (BAMLC0A0CM) | FRED

The source code outlining how this product gathers, transforms, revises and publishes its datasets is available at [https://github.com/rearc-data/fred-data-products](https://github.com/rearc-data/fred-data-products).

### Main Overview
The dataset file included with this product is provided in CSV format. The included dataset contains the following columns: 
`DATE`, `BAMLC0A0CM`

This dataset contains a historical time-series data of ICE BofA US Corporate Index Option-Adjusted Spread (BAMLC0A0CM) starting from `1996-12-31`. 
 
The values within the data field labeled `BAMLC0A0CM` repesents the Option-Adjusted Spreads (OASs) in `Percent` at the time of the corresponding `DATE` field. Values are not seasonally adjusted.

The ICE BofA Option-Adjusted Spreads (OASs) are the calculated spreads between a computed OAS index of all bonds in a given rating category and a spot Treasury curve. An OAS index is constructed using each constituent bond's OAS, weighted by market capitalization. The Corporate Master OAS uses an index of bonds that are considered investment grade (those rated BBB or better). When the last calendar day of the month takes place on the weekend, weekend observations will occur as a result of month ending accrued interest adjustments.

This data represents the ICE BofA US Corporate Index value, which tracks the performance of US dollar denominated investment grade rated corporate debt publicly issued in the US domestic market. To qualify for inclusion in the index, securities must have an investment grade rating (based on an average of Moody's, S&P, and Fitch) and an investment grade rated country of risk (based on an average of Moody's, S&P, and Fitch foreign currency long term sovereign debt ratings). Each security must have greater than 1 year of remaining maturity, a fixed coupon schedule, and a minimum amount outstanding of $250 million. Original issue zero coupon bonds, "global" securities (debt issued simultaneously in the eurobond and US
domestic bond markets), 144a securities and pay-in-kind securities, including toggle notes, qualify for inclusion in the Index. Callable perpetual securities qualify provided they are at least one year from the first call date. Fixed-to-floating rate securities also qualify provided they are callable within the fixed rate period and are at least one year from the last call prior to the date the bond transitions from a fixed to a floating rate security. DRD-eligible and defaulted securities are excluded from the Index.

### Data Source
This dataset is provided by the [Ice Data Indices, LLC](https://www.theice.com/market-data/indices) and published by the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org/) Economic Data (FRED). 

### More Information
- Source: 
  - [Federal Reserve Bank of St. Louis](https://www.stlouisfed.org)
  - [Ice Data Indices, LLC](https://www.theice.com/market-data/indices)
  - [ICE BofA Indices](https://www.theice.com/market-data/indices)
- Dataset Page: [Ice Data Indices, LLC, ICE BofA US Corporate Index Option-Adjusted Spread (BAMLC0A0CM)](https://fred.stlouisfed.org/series/BAMLC0A0CM)
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
