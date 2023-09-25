# Reproduction Steps
1) Install Smithy cli
2) `yarn build`
3) View logs (should be similar to below)

```
src/models/models_0.ts(210,50): error TS2345: Argument of type 'AsyncIterable<PublishEvents> | undefined' is not assignable to parameter of type 'PublishEvents | null | undefined'.
   Type 'AsyncIterable<PublishEvents>' is not assignable to type 'PublishEvents | null | undefined'.
```

# Quickstart Template
Smithy [quickstart](https://smithy.io/2.0/quickstart.html) example built using the Smithy CLI

## Building
Once you have the CLI installed run: 
```console
yarn build
```
From the root of this template directory.