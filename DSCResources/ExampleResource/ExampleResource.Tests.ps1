. ${PSScriptRoot}\ExampleResource.ps1
Describe "Example Test" {

  It "should test the function" {
    ExampleFunction | Should Be "This is not a code smell"
  }

}

