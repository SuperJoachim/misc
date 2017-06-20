# Azure undervisning - basics

Basal undervisning i Azure, for at komme i gang med at bruge de forskellige muligheder. 


## Kom i gang

Filer og links i dette repository vil vise eksempler på hvordan Azure virker, samt øvelser så folk kan komme i gang med basics.


### Prerequisites

En Microsoft Account der har adgang til en Azure subscription med credits nok til at teste på.

En bærbar med adgang til internettet og en browser.

PowerShell med Azure modul installeret.


### Installing PowerShellGet

Først skal PowerShellGet installeres, da dette bruges til at installere Azure PowerShell

```
Get-Module PowerShellGet -list | Select-Object Name,Version,Path
```

Output skal se nogenlunde således ud

```
Name          Version Path
----          ------- ----
PowerShellGet 1.0.0.1 C:\Program Files\WindowsPowerShell\Modules\PowerShellGet\1.0.0.1\PowerShellGet.psd1
```

## Installing PowerShell Azure

```
Install-Module AzureRM
```


## Gode links

* [DTU Calculator](http://dtucalculator.azurewebsites.net/) - Udregning af nødvendige DTU for en SQL database.
* [Reddit Azure](https://www.reddit.com/r/AZURE/) - Azure på Reddit
* [Azure Marketplace](https://azuremarketplace.microsoft.com/en-us/marketplace/apps?page=1&src=blogTestDrive) - Azure Marketplace, kan bl.a. bruges til test drive.
* [Preview features](https://azure.microsoft.com/en-us/services/preview/) - Liste over alle preview features.


## Authors

* **Joachim Stapelfeldt** - *Initial work* - [joachim@stapelfeldt.com](mailto:joachim@stapelfeldt.com)
