# National University Marketing Web Dev team standards

Here you will find the coding standards that should be used by all members for some of the following reasons:

- Consistency across projects.
- Code should look like one person coded the project.
- Easier to jump into a project and start work right away, instead of learning the coding methods too.
- Standards from the community and technology.

## Installation and Adding NUSA Standards
Make sure you have [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer) _globally_ installed on your machine. Follow the main installation instructions from [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer#installation).

We have a slightly modified version of the WP and WPVIP standards for our team, [NUSA standards](https://github.com/NationalUniversitySystem/nusa-code-standards). To simplify the process of using these standards, these should be installed as a global composer package.
Highlights:
- The package will install all other required standards ([WordPress](https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards) and [WordPress-VIP-Go](https://github.com/Automattic/VIP-Coding-Standards) standards).
- It also installs the [PHP_CodeSniffer Standards Composer Installer Plugin](https://github.com/dealerdirect/phpcodesniffer-composer-installer) which will automatically install globally required composer standards.

### Method 1
To install:
- If you are updating and have standards installed already, run `phpcs --config-delete installed_paths`
- Since the code standards are in a version control system (VCS), in this case GitHub, we have to set up a property first in our global `composer.json` file. Run `composer global config repositories.nusa-code-standards vcs https://github.com/nationaluniversitysystem/nusa-code-standards`.
- Finally `composer global require nationaluniversitysystem/nusa-code-standards`.

Now all required packages should be installed and the paths for the standards configured (by **PHP_CodeSniffer Standards Composer Installer Plugin**).

Next, set up specific configs for use:
- `phpcs --config-set default_standard NUSA-WP-VIP`
- `phpcs --config-set colors 1`
- `phpcs --config-set error_severity 1`
- `phpcs --config-set warning_severity 1`

Confirm the settings were set with `phpcs --config-show`.

### Method 2
- Download and run the included bash script `install.sh` (not guaranteed to work for everyone).

## Tips and Recommendations
- `NUSA-WP` - For use with WordPress projects outside of VIP platform. e.g. Pantheon sites
- `NUSA-WP-VIP` - For use with VIP WordPress sites
- Install an inline linter for your code editor so you do not have to run `phpcs` commands in the command line frequently, as well as cleaning up after yourself as you code instead of after finishing tasks.
  - [phpcs](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs) plugin for Visual Studio Code
  - [linter-phpcs](https://atom.io/packages/linter-phpcs) package for Atom
  - [phpcs](https://packagecontrol.io/packages/Phpcs) package for Sublime Text
- `phpcs --config-show` to see all configured options
- The `default_standard` standard displayed by the command above in your command line (even inside the bash CLI of VS Code) will show the standard defined for your whole machine. On the other hand, the standard defined in the settings of your code editor is for the inline code sniffing done by the code editor's extension/add-on
- Please use the following feature sparingly unless you have enough experience with the tool:
  - PHP Code Beautifier and Fixer (`phpcbf`) is instealled along with PHPCS and can be run like `phpcs` to automatically fix certain errors and warnings
  - Reasons to use this sparingly are things may break, and fixing things manually is a good way of learning and get better at following the code standards

### Non Composer installed code standards
- Suggestion: Clone all standards into one folder.
- Although all standards might be inside a folder (e.g. `code-standards`), each folder (repo) inside of it has to be added uniquely.
- When installing multiple paths *do not* add spaces between each path (after the comma separating them)
- If having issues wrap the combined string in quotes (e.g. `"/path/to/one,/path/to/two"`).
- Use full path for each repo/folder. For example:
  - Mac: `"/Users/{yourusername}/path/one,/Users/{yourusername}/path/two"`
  - Windows: `"C:/Users/{yourusername}/path/one,C:/Users/{yourusername}/path/two"`

## Making Changes to Rulesets
Please discuss any possible rule changes with team members inside a repo issue for tracking. To see the specific code standard that is throwing an error that might be removed, changed, run `phpcs {filename.php} -s`. Use the string of the rule as reference in issues and finally when implementing a change.

To keep things organized, create a branch to make a change to the rulesets and then merge into `master`.
