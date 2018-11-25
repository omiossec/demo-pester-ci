. .\test-planet.ps1

Describe -name "Test Planet Tests" {

    Context "Context Test function" {

        $PlanetWithoutPeople =  @(@{"TestPlanet"="Mercury"},@{"TestPlanet"="Venus"},@{"TestPlanet"="Jupiter"},@{"TestPlanet"="Saturn"},@{"TestPlanet"="Uranus"},@{"TestPlanet"="Neptune"})
        

        It "Test if the Planet <TestPlanet> is empty"  -TestCase $PlanetWithoutPeople {

            param($TestPlanet)
            test-planet -Name $TestPlanet | Should be 0

        }

        It "Test if Their is at least on Rover on Mars "   {

            test-planet -Name "Mars" | Should BeGreaterOrEqual 1

        }

        It "Test if Their is more than 10 people here on Earth"   {

            test-planet -Name "Earth" | Should BeGreaterThan 10

        }


    }

  

}