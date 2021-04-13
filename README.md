# Publish Anaconda Package using Github Action
A Github Action to publish your Python package to Anaconda.

### Example workflow
```yaml
name: Publish

on: [release]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:

    - name: Checkout
      uses: actions/checkout@v2

    - name: publish-to-conda
      uses: ravinpoudel/Github_Action_CondaPackage
      with:
        CondaDir: 'conda'
        Channels: 'conda-forge bioconda' 
        Platforms: 'osx-64 linux-32 linux-64 win-32 win-64'
        anacondatoken: ${{ secrets.MY_ANACONDA_TOKEN }}

```
