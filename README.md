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
      uses: ravinpoudel/Github_Action_CondaPackage@1.0.1
      with:
        subDir: 'conda.recipe'
        AnacondaToken: ${{ secrets.MY_ANACONDA_TOKEN }}
```
