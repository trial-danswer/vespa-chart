# vespa-chart
 Helm repository URL will be hosted on GitHub's raw content service. Here’s the Helm repository URL for Vespa Chart:

https://raw.githubusercontent.com/trial-danswer/vespa-chart/main/

Example:
To add this Helm repository to your local Helm configuration:


helm repo add vespa https://raw.githubusercontent.com/trial-danswer/vespa-chart/main/


Verify the Repo is Added:

helm repo update
helm search repo vespa


If the repository is properly set up, it should list the chart like this:


NAME         	CHART VERSION	APP VERSION	DESCRIPTION
vespa/vespa-chart  0.1.0          1.0         Vespa search engine Helm chart


Install the Chart:

helm install my-vespa vespa/vespa-chart --version 0.1.0




If you encounter any issues, ensure:
1. `index.yaml` and `.tgz` files are properly uploaded to the `main` branch.
2. GitHub raw URLs are accessible (test it in your browser).
3. If the repo is private, you'll need to authenticate using your personal access token.

