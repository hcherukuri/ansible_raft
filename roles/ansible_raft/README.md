ansible_raft
=====


Dependencies
------------

The role depends on collections:
  - name: community.general
  - name: ansible.posix

To install, `ansible-galaxy collection install -r requirements.yml`


<!--start argument_specs-->

Role Variables
--------------

| Variable | Description | Required |
|:---------|:------------|:---------|
|`upstream_name`| The prefix for roles in the upstream collection to transform | `yes` |
|`downstream_name`| The name of the downstream collection to generate | `yes` |
|`project_git_url`| If provided, the git url used to fetch the upstream project repository | no |
|`project_git_version`| If provided along with `project_git_url`, the branch to fetch the upstream project from | no |


Role Defaults
-------------

| Variable | Description | Default |
|:---------|:------------|:--------|
|`upstream_collection_name`| Optional name of upstream collection | `{{ upstream_name }}` |
|`upstream_namespace`| Name of the upstream namespace to transform | `middleware_automation` |
|`downstream_namespace`| Name of the downstream namespace to generate the collection into | `redhat` |
|`workdir`| Working directory to run the transformation process onto | `{{ lookup('env', 'PWD') }}` |
|`upstream_projects_dir`| Directory where the upstream project is cloned from git | `{{ workdir }}/upstream` |
|`downstream_projects_dir`| Directory where the downstream collection will be generated | `{{ workdir }}/downstream` |
|`skip_setup`| Whether to skip the pre-transformation setup phase | `True` |
|`post_processors_replacements`| List of { match, replace, file } dicts for post processing replacements. `match` and `replace` are regexes for string replacements while `file` is a regex matcher filtering filenames to post-process | `[]` |
|`upstream_downstream_collections_map`| List of dependency mappings {upstream_name, downstream_name} for renaming in tasks, galaxy.yml and requirements.yml | `[]` |
<!--end argument_specs-->


Example Playbook
----------------
```
---
- hosts: all
  collections:
    - middleware_automation.ansible_raft
  roles:
    - ansible_raft
```
