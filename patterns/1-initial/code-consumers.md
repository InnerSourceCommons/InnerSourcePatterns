# Title

Code Consumers

# Patlet

TBD

# Problem

There's several reasons why we might want to know who's using (consuming) our code. We can't do the following:

* notify downstream users/projects of found (fixed?) vulnerabilities
* audit flow of IP
* kill off code - knowing where (or if) it is used
* encourage others to use a project - by showing how many users there already are
* survey users for feedback

# Context

This is a general issue that affects potentially all InnerSource (and open source!) projects.
The act of opening code allows people to use it without letting you know.

# Forces

* The harder it is to download/integrate the project, the less it will be adopted (forcing people to give information when they use it adds barriers)
* Not all projects may want you to know what they're using (tightly closed source/top secret downstream project)
* Putting in callback/call home routines into projects may introduce distrust in downstream projects and users

# Solutions

The following are potential solutions that have been proposed to this problem:

* Scan all output artifacts for known signatures (manifests/npm/includes etc)
* Voluntary disclosure/signup upon installation/using
* Search for identifiers/markers in source control
* Audit code clones/artifact downloads
* Incentivise/Offer users a mailing list/update stream to which they can subscribe

# Resulting Context

_needs work..?_

# Known Instances

_needs work...?_

# Authors

* Georg Grütter (Robert Bosch GmbH)
* Raimund Hook (EXFO Inc)
* Katrina Novakovic (RedHat)

# Status

* Initial
* Drafted at the 2019 Spring InnerSource Commons Summit in Galway - 10 April 2019
