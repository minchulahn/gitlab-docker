#!/bin/bash

gitlab-ctl reconfigure
cp /etc/gitlab/gitlab.rb /var/opt/gitlab/gitlab.rb
