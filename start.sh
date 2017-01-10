#!/bin/bash

/opt/gitlab/embedded/bin/runsvdir-start & gitlab-ctl reconfigure
gitlab-ctl start
