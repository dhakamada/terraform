## Terraform

The sequency of commands to make a deploy
- init - download dependencies
- plan - validate how the infra will be configured
- apply - deploy and provider resources

Helper
```
$ terraform plan - command creates an execution plan. By default, creating a plan consists of:

- Reading the current state of any already-existing remote objects to make sure that the Terraform state is up-to-date.
- Comparing the current configuration to the prior state and noting any differences.
- Proposing a set of change actions that should, if applied, make the remote objects match the configuration.

$ terrraform apply - command executes the actions proposed in a Terraform plan.
$ terraform show -  command is used to show the attributes of a single resource in the Terraform state.
$ terraform refresh -  command reads the current settings from all managed remote objects and updates the Terraform state to match
```

**tfstate** - snapshot from your infra

#### Remove resource

There are to options to remove a resource

1. Edit and remove directly in the file (main)
2. Run the follow code

```sh
terraform destroy -target aws_instance.dev5
```

Note: If you destroy a dependency, automatically will destroy father dependency. Moreover, If you don't pass any args in destroy command, the terraform will remove everything.


https://www.alibabacloud.com/help/doc-detail/145541.htm