# Main commands for terraform:

  `terraform init`        - Prepare your working directory for other commands

  `terraform validate`    - Check whether the configuration is valid

  `terraform plan`        - Show changes required by the current configuration

  `terraform apply`       - Create or update infrastructure

  `terraform destroy`     - Destroy previously-created infrastructure

## Environment option
  export TF_VAR_hcloud_token=""

# Сode-review

1. Determine the narrative by reading the pull request description and list of commits. If the commits seem to jump between topics or address, leave a comment asking for clarification or changes.

2. Lightly scan the message and contents of each commit, starting from the beginning of the branch. Verify smallness and atomicity by checking that the commit does one thing and that doesn’t include any incomplete implementations. Recommend splitting or combining commits that are incorrectly scoped.
3. Thoroughly read each commit. Ensure the commit message sufficiently explains the code by first checking that implementation matches the intent, then that the code matches the stated implementation. Use the context and justification to guide your understanding of the code. If any of the requisite information is missing, ask for clarification from the author.
4. Finally, with a complete mental model of the commit’s changes and the overarching narrative, confirm the code is efficient and bug-free.