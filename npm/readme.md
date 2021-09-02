# Install npm
## https://www.npmjs.com/get-npm

choco install nodejs.install

# Links
[Automated publishing for continuous integration and delivery](https://docs.microsoft.com/en-gb/azure/data-factory/continuous-integration-deployment-improvements)
[Azure Data Factory utilities](https://www.npmjs.com/package/@microsoft/azure-data-factory-utilities)


Publish -> ADFUtilities validates and generates ARM template


There are two commands currently available in the package:
- Export ARM template
- Validate

```
npm run start export C:\DataFactories\DevDataFactory /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testResourceGroup/providers/Microsoft.DataFactory/factories/DevDataFactory ArmTemplateOutput

npm run start validate C:\DataFactories\DevDataFactory /subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/testResourceGroup/providers/Microsoft.DataFactory/factories/DevDataFactory
```


