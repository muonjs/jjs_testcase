#!/bin/sh

echo "[job_builder]
ignore_cache=True
keep_descriptions=False
include_path=.:scripts:~/git/
recursive=True
exclude=.*:manual:./development
allow_duplicates=False

[jenkins]
user=1
password=1
url=http://localhost/
query_plugins_info=False
##### This is deprecated, use job_builder section instead
#ignore_cache=True

[hipchat]
authtoken=dummy" > jenkins_jobs.ini

jenkins-jobs --conf jenkins_jobs.ini test job_builder_result/

rm jenkins_jobs.ini
