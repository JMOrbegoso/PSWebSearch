function Invoke-Web-Search {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $WebSite,

    [Parameter( Position = 1, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )

  switch ($WebSite) {
    "bing" { $WebSearchEngineUrl = "https://www.bing.com/search?q="; }
    "google" { $WebSearchEngineUrl = "https://www.google.com/search?q="; }
    "duckduckgo" { $WebSearchEngineUrl = "https://www.duckduckgo.com/?q="; }
    "youtube" { $WebSearchEngineUrl = "https://www.youtube.com/results?search_query="; }
    "github" { $WebSearchEngineUrl = "https://github.com/search?q="; }
    "stackoverflow" { $WebSearchEngineUrl = "https://stackoverflow.com/search?q="; }
    default { Write-Output "Web Search Engine not found." -ForegroundColor "Red"; Return; }
  }

  $WebSearchUrl = $WebSearchEngineUrl + $SearchTerm.Replace(" ", "+");
  Start-Process $WebSearchUrl;
};

function Invoke-Web-Search-Bing() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "bing" -SearchTerm $SearchTerm;
}
function Invoke-Web-Search-Google() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "google" -SearchTerm $SearchTerm;
}
function Invoke-Web-Search-Duckduckgo() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "duckduckgo" -SearchTerm $SearchTerm;
}
function Invoke-Web-Search-Youtube() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "youtube" -SearchTerm $SearchTerm;
}
function Invoke-Web-Search-Github() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "github" -SearchTerm $SearchTerm;
}
function Invoke-Web-Search-Stackoverflow() {
  [CmdletBinding()]
  param (
    [Parameter( Position = 0, Mandatory = $TRUE)]
    [String]
    $SearchTerm
  )
  Invoke-Web-Search -WebSite "stackoverflow" -SearchTerm $SearchTerm;
}

Set-Alias -Name "bing" -Value "Invoke-Web-Search-Bing";
Set-Alias -Name "google" -Value "Invoke-Web-Search-Google";
Set-Alias -Name "duckduckgo" -Value "Invoke-Web-Search-Duckduckgo";
Set-Alias -Name "youtube" -Value "Invoke-Web-Search-Youtube";
Set-Alias -Name "github" -Value "Invoke-Web-Search-Github";
Set-Alias -Name "stackoverflow" -Value "Invoke-Web-Search-Stackoverflow";

Export-ModuleMember -Function Invoke-Web-Search-Bing, Invoke-Web-Search-Google, Invoke-Web-Search-Duckduckgo, Invoke-Web-Search-Youtube, Invoke-Web-Search-Github, Invoke-Web-Search-Stackoverflow -Alias "bing", "google", "duckduckgo", "youtube", "github", "stackoverflow";
