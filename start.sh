#!/bin/bash

/opt/gitlab/embedded/bin/runsvdir-start & sleep 5 && gitlab-ctl start
