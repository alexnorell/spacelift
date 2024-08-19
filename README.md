# Spacelift

Configuration for managing my personal [Spacelift](https://spacelift.io/) account for infrastructure.

## Do it yourself

If you want to do something simliar, you will need to follow these steps:

1. Create a new repo and add `versions.tf` and `main.tf`.
1. Create a [Spacelift](https://spacelift.io/) account using your GitHub account.
1. Create a new space under the `root` space
1. Note down the space ID and update `local.space_id`
1. Update `local.tool` and `local.tf_version` with appropriate values. [Refer to the provider docs](https://github.com/spacelift-io/terraform-provider-spacelift/blob/main/docs/resources/stack.md#optional)
1. Configure an administrative stack in Spacelift to monitor and deploy your repo
1. If the stack needs contexts(secrets), configure them and attach them following what I've done in here
