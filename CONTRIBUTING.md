# Contributing

## Environment
- Ensure you have the latest version of Node
- [Set up AWS CDK](https://docs.aws.amazon.com/cdk/v2/guide/getting_started.html#getting_started_tools)

### To build compiled js

````
npm run build
````

### To run lint

````
npm run lint
npm run lint:fix // clean up files per eslint config
````

## Making Changes

Pull requests are encouraged. If you want to add a feature or fix a bug:

1. [Fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) and [clone](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository) the [repository](https://github.com/akirchmyer/verdaccio-cdk-ec2)
2. [Create a separate branch](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/managing-branches) for your changes
3. Make your changes
4. Write tests that validate your change and/or fix.
5. Run `npm run build`
6. Push your branch and open a PR
