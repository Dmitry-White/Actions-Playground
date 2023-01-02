# Hello world JavaScript action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log. To learn how this action was built, see "[Creating a JavaScript action](https://help.github.com/en/articles/creating-a-javascript-action)" in the GitHub Help documentation.

## Inputs

### `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

### `time`

The time we greeted you.

## Example usage

```yaml
uses: actions/hello-world-javascript-action@master
with:
  who-to-greet: 'Mona the Octocat'
```


## Dependencies

GitHub downloads each action run in a workflow during runtime and executes it as a complete package of code before workflow commands like `run` can be used to interact with the runner machine. 

This means there are a couple of ways to address that:

1. Install dependencies outside the action
2. Include any package dependencies required to run the JavaScript code by committing `node_modules`
3. Include any package dependencies required to run the JavaScript code by bundling/compiling everything into a single file

Toolkit `core` and `github` packages need to be checked in to the action's repository. Checking in the `node_modules` directory can cause problems. As an alternative, `@vercel/ncc` can be used to compile the code and modules into one file used for distribution.

```
npx @vercel/ncc build index.js
```
