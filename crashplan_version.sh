#!/bin/sh

### Script to detect CrashPlan version
### 3rd Stone Consulting
### Last modified Aug 8th 2016

### Requires CrashPlan Pro: https://www.crashplan.com/en-us/business/

# If CrashPlan is installed, report version
if [ -f "/Applications/CrashPlan.app/Contents/Info.plist" ] ; then
	CLIENT_VERSION=$( defaults read "/Applications/CrashPlan.app/Contents/Info.plist" CFBundleShortVersionString )
	echo "CrashPlan client version: $CLIENT_VERSION"
else 
	echo "CrashPlan client not installed"
fi

# If server present, report version
if [ -f "/Applications/PROServer.app/Contents/Info.plist" ] ; then
    SERVER_VERSION=$( defaults read "/Applications/PROServer.app/Contents/Info.plist" CFBundleShortVersionString )
	echo "CrashPlan server version: $SERVER_VERSION"
else
    echo "CrashPlan server not installed"
fi
