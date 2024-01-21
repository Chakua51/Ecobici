<h1>ECOBICI ETL PROJECT 2023</h1>

This project combines historical information from trips made by the Mexico City Ecobici public bicycle system. The information is categorized by month and year in delimited text files, allowing for the analysis of data in a visualization tool.</h2>
![imagen](https://github.com/Chakua51/Ecobici/assets/133459446/0e2ef28b-d35e-414f-9b7b-1639d212263e)
<h2>Tools Used</h2>

- Azure Data Lake Storage Gen2.
- Azure DataBricks.
- Azure Synapse Analytics.
- Azure Key Vault.
- Azure Active Directory (AAD).
- Power BI.

<h3>Architecture</h3>

The project follows a medallion architecture with data layers (bronze, silver, gold) for different stages of data transformation and storage.

### Steps
1. **Enviroment Setup:** Creation of a resource group, Azure Data Lake Storage Gen2, Azure Databricks, Azure Synapse Analytics, Azure Key Vault, and Azure Active Directory (AAD), deployment of Azure services.
2. **Data Ingestion:** Load delimited text files into Azure Data Lake Storage Gen 2, in the container named "Source."
https://ecobici.cdmx.gob.mx/datos-abiertos/
3. **Data Transformation:** Utilizing Azure Databricks to join delimited text files, transforming raw data into curated data through the implementation of a Lakehouse architecture. Implemented Bronze, Silver, and Gold layers to progressively refine and clean the data.
4. **Data Loading:**  Transfer the processed data from the Gold layer of Azure Data Lake Storage Gen2 to Azure Synapse Analytics.
5. **Data Reporting:** Using Power BI to create interactive Dashboard on the migrated data stored in Azure Synapse Analytics.

![imagen](https://github.com/Chakua51/Ecobici/assets/133459446/a5ab2a19-e255-40f3-9406-0de21b36c698)

![imagen](https://github.com/Chakua51/Ecobici/assets/133459446/f42355ed-3fd0-4145-8872-74797cfbd435)
https://app.powerbi.com/view?r=eyJrIjoiODZjMjk3YmYtOGYzOC00YThhLTg5ZGUtNTAzNGFlNDlkZDVhIiwidCI6IjhjOGVmOGZjLTEyYWEtNGQ0ZS1iN2UwLTNmZDNiZTU0MTJkYiIsImMiOjJ9

6. **Security and Governance:** Implementing security using Azure Active Directory and Azure Key Vault.
7. **End-to-End Pipeline Testing:** Thoroughly test the entire pipeline to ensure smooth data flow and address any potential issues.





