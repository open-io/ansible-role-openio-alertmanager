[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-alertmanager.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-alertmanager)
# Ansible role `alertmanager`

An Ansible role for install alertmanager. Specifically, the responsibilities of this role are to:

- install and configure alertmanager

## Requirements

- Ansible 2.9+

## Role Variables

| Variable   | Default | Comments (type)  |
| :---       | :---    | :---             |
| `openio_alertmanager_namespace` | `"{{ namespace \| d('OPENIO') }}"` | OpenIO Namespace|
| `openio_alertmanager_maintenance_mode` | `"{{ openio_maintenance_mode \| d(false) }}"` | Maintenance mode |
| `openio_alertmanager_bind_address` | `"{{ openio_bind_mgmt_address \| d(ansible_default_ipv4.address) }}"` | Binding IP address |
| `openio_alertmanager_bind_port` | `6901` | Binding port |
| `openio_alertmanager_resolve_timeout` | `3m` | Resolve timeout |
| `openio_alertmanager_custom_receivers` | `[]` | Custom receivers |
| `openio_alertmanager_simple_email_enabled` | `false` | Enable simple email |
| `openio_alertmanager_simple_email_from` | `""` | |
| `openio_alertmanager_simple_email_to` | `[]` | |
| `openio_alertmanager_simple_email_smtp` | `""` | |
| `openio_alertmanager_simple_email_tls` | `false` | |
| `openio_alertmanager_simple_email_pwd` | `""` | |
| `openio_alertmanager_simple_email_receiver:` | `` | |
| `openio_alertmanager_simple_email_route:` | `` | |
| `openio_alertmanager_custom_routes` | `[]` | Custom routes|
| `openio_alertmanager_route:` | `` | route |
| `openio_alertmanager_inhibit_rules` | `[]` | Inhibit rules |
| `openio_alertmanager_default_receivers:` | `` | Default receivers |
| `openio_alertmanager_default_routes:` | `` | Default routes |

## Dependencies
- https://github.com/open-io/ansible-role-openio-service

## Example Playbook

```yaml
- hosts: all
  gather_facts: true
  become: true

  tasks:
    - include_role:
        name: alertmanager
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License
Copyright (C) 2015-2020 OpenIO SAS
