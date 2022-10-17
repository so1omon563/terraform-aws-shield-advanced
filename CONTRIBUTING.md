# Contributing to this Terraform module

Thank you for showing interest in contributing to this Terraform module.

This document will hopefully help answer some common questions you may have.

All partcipants are expected to follow the [Code of Conduct](CODE_OF_CONDUCT.md).

## Submitting Issues

We utilize **Github Issues** for issue tracking and contributions. You can contribute in two ways:

1. Reporting an issue or making a feature request [here](../../issues/new).
2. Adding features or fixing bugs yourself and contributing your code to InSpec.

## Contribution Process

We have 3 step process for contributing to this Terraform module:

1. Commit changes to a git branch, making sure to sign-off those changes for the [Developer Certificate of Origin](#developer-certification-of-origin-dco).
2. Create a Github Pull Request for your change, following the instructions in the pull request template.
3. Perform a [Code Review](#code-review-process) with the project maintainers on the pull request.

### Code Review Process

Code review takes place in Github pull requests. See [this article](https://help.github.com/articles/about-pull-requests/) if you're not familiar with Github Pull Requests.

Once you open a pull request, project maintainers will review your code and respond to your pull request with any feedback they might have. The process at this point is as follows:

1. An approval is required from code owners to approve the pull request.
2. When ready, your pull request will be merged into `main`, we may require you to rebase your PR to the latest `main`.
3. Once the PR is merged, you will be included in the change log in a subsequent release.

### Developer Certification of Origin (DCO)

Licensing is very important to open source projects. It helps ensure the software continues to be available under the terms that the author desired.

Please review the [license](LICENSE) prior to contributing.

The license tells you what rights you have that are provided by the copyright holder. It is important that the contributor fully understands what rights they are licensing and agrees to them. Sometimes the copyright holder isn't the contributor, such as when the contributor is doing work on behalf of a company.

To make a good faith effort to ensure these criteria are met, we are requiring that the Developer Certificate of Origin (DCO) process be followed.

The DCO is an attestation attached to every contribution made by every developer. In the commit message of the contribution, the developer simply adds a Signed-off-by statement and thereby agrees to the DCO, which you can find below or at <http://developercertificate.org/>.

```
Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the
    best of my knowledge, is covered under an appropriate open
    source license and I have the right under that license to
    submit that work with modifications, whether created in whole
    or in part by me, under the same open source license (unless
    I am permitted to submit under a different license), as
    Indicated in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including
    all personal information I submit with it, including my
    sign-off) is maintained indefinitely and may be redistributed
    consistent with this project or the open source license(s)
    involved.
```

### DCO Sign-Off Methods

The DCO requires a sign-off message in the following format appear on each commit in the pull request:

    Signed-off-by: Fake Name <fake.name@fakemail.com>

The DCO text can either be manually added to your commit body, or you can add either **-s** or **--signoff** to your usual git commit commands. If you forget to add the sign-off you can also amend a previous commit with the sign-off by running **git commit --amend -s**. If you've pushed your changes to Github already you'll need to force push your branch after this with **git push -f**.

# Technical Requirements

Testing and pre-commit checks are performed using a docker image specified in [.image](.image). This image is maintained [here](https://github.com/so1omon563/tf_testing_image).

In order to perform the tests, you will need a working [docker](https://docker.com) environment.

We also suggest ensuring that you have your `awscli` environment set up, and using `aws-runas` to assist with AWS permissions.:

- [awscli](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- [aws-runas](https://mmmorris1975.github.io/aws-runas/)

## Technical requirements for commits and testing

### Technical requirements for commits

You will need to set up the required `pre-commit` git hooks to ensure that your commits are valid. You can see the specific hooks that are required in [pre-commit-config.yaml](pre-commit-config.yaml).

Run script to set .githooks

    scripts/githooks.sh

This will ensure that `pre-commit` is run before each commit.

## Technical requirements for testing using `kitchen-terraform` and `inspec`

**Note that any `kitchen-terraform` tests will create live infrastructure that incurs cost. Make sure that you destroy it after each test.**

We are using the same image for our testing as we use for pre-commit, so only one image is required.

You can call the image by issuing the following command from the root of the project:

    ./testing_image

This will start the container and mount the project directory into the container. It also will mount your local user's `.aws` and and `.ssh` directories into the container. This allows for you to use your own AWS credentials and SSH keys.

### AWS authentication for testing

We do not have a dedicated AWS account for testing purposes, so we require using the credentials of the user that runs the tests. You can use the `aws-runas` utility to help with this. It is installed in the image.

**Remember that testing may incur cost.**

If you wish to pass in your credentials to the container at runtime, you can do so by running the following command (assuming you have `aws-runas` installed locally):

    aws-runas -E <profile_name> ./testing_image

This will set the appropriate `AWS_*` environment variables in the container.

Another useful option is to use the [EC2 metatdata server](https://mmmorris1975.github.io/aws-runas/metadata_credentials.html) built in to `aws-runas`.

### Running `kitchen-terraform` tests

Once inside the container, with your AWS credentials set, you can run the tests by running the following command:

    bundle exec kitchen test

Note that if using `aws-runas` in the container to set your AWS profile, you will need to call it with the -E flag, like so:

    aws-runas -E <profile_name> bundle exec kitchen test

If the test fails, you can run the individual pieces to create, verify, and destroy if required.

    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

Note that if using `aws-runas` in the container to set your AWS profile, you will need to call it with the -E flag, like so:

    aws-runas -E <profile_name> bundle exec kitchen converge
    aws-runas -E <profile_name> bundle exec kitchen verify
    aws-runas -E <profile_name> bundle exec kitchen destroy

# Processes

## Versioning

This module follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

The `main` branch should never have its history rewritten. Tags should never be deleted.

Tags are automatically created when a Pull Request is merged by including `#major`, `#minor`, or `#patch` in the merge commit message.

Tags should never be manually added to a project.

## Branching

Please note that we follow a trunk based development model, with `main` as the default branch of record.

We do not maintain long term additional branches. By convention, origin branches are deleted upon merge to `main`.

Branch names should begin with the user's GitHub name followed by a `-`, then a descriptor of the change.

Branch descriptors should begin with one of the following prefixes and should use dashes `-` as separators:

    feature-
    bug-

An example of a branch name would be `so1omon563-feature-add-dco-sign-off`.
