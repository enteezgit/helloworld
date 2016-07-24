#!/bin/bash

f=`date | tr ':, ' '_'` ; opFile=${f}'.txt'

echo "Build Step: ", $1 >> $opFile
echo "BRANCH_NAME: " $BRANCH_NAME >> $opFile
#For a multibranch project, this will be set to the name of the branch being built, for example in case you wish to deploy to production from master but not from feature branches.
echo "CHANGE_ID: " $CHANGE_ID >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the change ID, such as a pull request number.
echo "CHANGE_URL: " $CHANGE_URL >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the change URL.
echo "CHANGE_TITLE: " $CHANGE_TITLE >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the title of the change.
echo "CHANGE_AUTHOR: " $CHANGE_AUTHOR >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the username of the author of the proposed change.
echo "CHANGE_AUTHOR_DISPLAY_NAME: " $CHANGE_AUTHOR_DISPLAY_NAME >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the human name of the author.
echo "CHANGE_AUTHOR_EMAIL: " $CHANGE_AUTHOR_EMAIL >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the email address of the author.
echo "CHANGE_TARGET: " $CHANGE_TARGET >> $opFile
#For a multibranch project corresponding to some kind of change request, this will be set to the target or base branch to which the change could be merged.
echo "BUILD_NUMBER: " $BUILD_NUMBER >> $opFile
#The current build number, such as "153"
echo "BUILD_ID: " $BUILD_ID >> $opFile
#The current build ID, identical to BUILD_NUMBER for builds created in 1.597+, but a YYYY-MM-DD_hh-mm-ss timestamp for older builds
echo "BUILD_DISPLAY_NAME: " $BUILD_DISPLAY_NAME >> $opFile
#The display name of the current build, which is something like "#153" by default.
echo "JOB_NAME: " $JOB_NAME >> $opFile
#Name of the project of this build, such as "foo" or "foo/bar".
echo "JOB_BASE_NAME: " $JOB_BASE_NAME >> $opFile
#Short Name of the project of this build stripping off folder paths, such as "foo" for "bar/foo".
echo "BUILD_TAG: " $BUILD_TAG >> $opFile
#String of "jenkins-${JOB_NAME}-${BUILD_NUMBER}". Convenient to put into a resource file, a jar file, etc for easier identification.
echo "EXECUTOR_NUMBER: " $EXECUTOR_NUMBER >> $opFile
#The unique number that identifies the current executor (among executors of the same machine) that’s carrying out this build. This is the number you see in the "build executor status", except that the number starts from 0, not 1.
echo "NODE_NAME: " $NODE_NAME >> $opFile
#Name of the agent if the build is on an agent, or "master" if run on master
echo "NODE_LABELS: " $NODE_LABELS >> $opFile
#Whitespace-separated list of labels that the node is assigned.
echo "WORKSPACE: " $WORKSPACE >> $opFile
#The absolute path of the directory assigned to the build as a workspace.
echo "JENKINS_HOME: " $JENKINS_HOME >> $opFile
#The absolute path of the directory assigned on the master node for Jenkins to store data.
echo "JENKINS_URL: " $JENKINS_URL >> $opFile
#Full URL of Jenkins, like http://server:port/jenkins/ (note: only available if Jenkins URL set in system configuration)
echo "BUILD_URL: " $BUILD_URL >> $opFile
#Full URL of this build, like http://server:port/jenkins/job/foo/15/ (Jenkins URL must be set)
echo "JOB_URL: " $JOB_URL >> $opFile
#Full URL of this job, like http://server:port/jenkins/job/foo/ (Jenkins URL must be set)
echo "SVN_REVISION: " $SVN_REVISION >> $opFile
#Subversion revision number that's currently checked out to the workspace, such as "12345"
echo "SVN_URL: " $SVN_URL >> $opFile
#Subversion URL that's currently checked out to the workspace.


