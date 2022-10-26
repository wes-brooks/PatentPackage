library("usethis")

# run the test-coverage action
use_github_action( "test-coverage" )

# run release check and add a badge
use_github_action( "check-release" )
use_github_actions_badge( "check-release")

# use the MIT liense
use_mit_license()

# create tests
use_test( "read_patents.R" )
