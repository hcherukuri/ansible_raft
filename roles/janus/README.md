janus
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


Role Defaults
-------------

| Variable | Description | Default |
|:---------|:------------|:--------|

<!--end argument_specs-->


Example Playbook
----------------
```
---
- hosts: all
  collections:
    - middleware_automation.janux
  roles:
    - janus
```
