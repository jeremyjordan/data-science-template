# project

![Tests](https://github.com/jeremyjordan/data-science-template/workflows/Tests/badge.svg?branch=main) ![Formatting](https://github.com/jeremyjordan/data-science-template/workflows/Linter/badge.svg?branch=main)

> Note: Search for the keyword "project" when adapting this template. Also remember to update the badge URLs above.


(2-3 sentences introducing project)

## Getting started

1. Spin up a [Colab notebook](https://colab.research.google.com/).
2. Install [colabcode](https://github.com/abhishekkrthakur/colabcode).
3. Start the code server.

```
from colabcode import ColabCode
ColabCode(port=10000, mount_drive=True)
```
4. Go to the ngrok link provided.
5. Clone the repo.

```
git clone https://github.com/jeremyjordan/project.git
```

6. Run `make colab` to set up the project on your Colab instance (or run `make init` if running locally).

## Training a model

(Describe how to train a model for the project)

## Contributing

In order to commit code from a Colab machine, you'll need to do the following:

1. Make sure you have an Github auth token (https://github.com/settings/tokens)
2. Configure the `git` settings on the machine
```
git config --global user.name "Jeremy Jordan"
git config --global user.email ""
gh auth login --with-token <<< INSERT_TOKEN_HERE
```

> Note: make sure you've ran `make colab` before setting this up.
