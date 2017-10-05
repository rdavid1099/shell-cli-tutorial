# Buildr
Buildr is a simple CLI that constructs a Ruby workspace and generates code and files for Ruby workspaces. Created as part of Ryan Workman's [Shell CLI Tutorial](https://medium.com/@rdavid1099/create-a-simple-cli-with-shell-script-1-of-2-e9b22c7f1eaa).

## Installation
- Clone down this repository
- Inside the repository, run `./config/install.sh`
- Restart your terminal

## Current Functionality
`buildr new <app name>` - Creates a basic Ruby workspace for the given application's name.

```
./<app name>/
├── config/
│   └── .keep
├── lib/
│   └── .keep
├── test/
│   └── test_helper.rb
├── .gitignore
├── Gemfile
├── Rakefile
└── README.md
```

## Future Functionality
`buildr generate <component> <name>` - Builds the given component using the given name and saves it in the corresponding directory.

`generate` will be built out in part two of the tutorial.

## Credits
Buildr was created by Ryan Workman for the sole purpose of learning the basics of CLI construction using shell scripting languages. Stay tuned for the second part of the tutorial as we continue to add functionality to this CLI.