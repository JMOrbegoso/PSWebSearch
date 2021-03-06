@{

    RootModule        = 'PSWebSearch.psm1'
    ModuleVersion     = '1.0.1'
    GUID              = '912d0dea-5f95-4879-b7cd-d73f474d52a1'
    Author            = 'JMOrbegoso'
    CompanyName       = 'JMOrbegoso'
    Copyright         = '(c) 2021 JMOrbegoso. All rights reserved.'
    Description       = 'This module adds aliases for searching with Bing, Google, YouTube, GitHub and other popular services.'
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Invoke-Web-Search-Bing', 'Invoke-Web-Search-Google', 'Invoke-Web-Search-Duckduckgo', 'Invoke-Web-Search-Youtube', 'Invoke-Web-Search-Github', 'Invoke-Web-Search-Stackoverflow')
    CmdletsToExport   = @()
    VariablesToExport = @()
    AliasesToExport   = @('bing', 'google', 'duckduckgo', 'youtube', 'github', 'stackoverflow')
    PrivateData       = @{

        PSData = @{
			
            Tags         = @('PowerShell', 'Web-Search', 'Search', 'Bing', 'Google', 'YouTube', 'GitHub', 'StackOverflow')
            LicenseUri   = 'https://github.com/JMOrbegoso/PSWebSearch/blob/main/LICENSE'
            ProjectUri   = 'https://github.com/JMOrbegoso/PSWebSearch/'
            # IconUri = ''
            ReleaseNotes = 'Initial release.'

        }

    }

}

