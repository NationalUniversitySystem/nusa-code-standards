# Check for needed global commands.
if ! command -v composer &> /dev/null
then
    echo "composer could not be found"
    exit
fi

if ! command -v phpcs &> /dev/null
then
    echo "global phpcs could not be found"
    exit
fi

# Remove the previously installed paths.
phpcs --config-delete installed_paths

# Actual install scripts.
echo "Installing NUSA standards"
composer global config repositories.nusa-code-standards vcs https://github.com/nationaluniversitysystem/nusa-code-standards
composer global require nationaluniversitysystem/nusa-code-standards "*"

echo "Set up specific configs for use"
phpcs --config-set default_standard NUSA-WP-VIP
phpcs --config-set colors 1
phpcs --config-set error_severity 1
phpcs --config-set warning_severity 1

# Display the config to the user for confirmation.
echo "Displaying phpcs config for settings confirmation"
phpcs --config-show
