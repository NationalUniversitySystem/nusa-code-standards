# National University Marketing Web Dev team standards

Here you will find the coding standards that should be used by all members for some of the following reasons:

- Consistency across projects.
- Code should look like one person coded the project.
- Easier to jump into a project and start work right away, instead of learning the coding methods too.
- Standards from the community and technology.

## Installation and Adding NUSA Standards
Make sure you have [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer) installed on your machine. Follow the main installation instructions from [PHPCS](https://github.com/squizlabs/PHP_CodeSniffer#installation).

These standards also require for the standard [WordPress](https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards) and [WordPress-VIP-Go](https://github.com/Automattic/VIP-Coding-Standards) standards to be installed.

To add these standards (without getting rid of other standards), add the WordPress, WordPress VIP, and NUSA standards following the [PHPCS wiki instructions](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Configuration-Options#setting-the-installed-standard-paths).

- Suggestion: Clone all standards into one folder.
- Although all standards might be inside a folder (e.g. `code-standards`), each folder (repo) inside of it has to be added uniquely.
- When installing multiple paths *do not* add spaces between each path (after the comma separating them)
- If having issues wrap the the combined string in quotes (e.g. `"/path/to/one,/path/to/two"`).
- Use full path for each repo/folder. For example:
  - Mac: `"/Users/{yourusername}/path/one,/Users/{yourusername}/path/two"`
  - Windows: `"C:/Users/{yourusername}/path/one,C:/Users/{yourusername}/path/two"`

## Tips and Recommendations
- `NUSA-WP` - For use with WordPress projects outside of VIP platform. e.g. Pantheon sites
- `NUSA-WP-VIP` - For use with VIP WordPress sites
- [phpcs](https://marketplace.visualstudio.com/items?itemName=ikappas.phpcs) plugin for Visual Studio Code
- [linter-phpcs](https://atom.io/packages/linter-phpcs) package for Atom
- [phpcs](https://packagecontrol.io/packages/Phpcs) package for Sublime Text
- `phpcs --config-show` to see all configured options
- The `default_standard` standard displayed by the command above in your command line (even inside the bash CLI of VS Code) will show the standard defined for your whole machine. On the other hand, the standard defined in the settings of your code editor is for the inline code sniffing done by the code editor's extension/add-on.
