## Title
Business Time Pressures

## Patlet

Development releases can become pressurized by business causing needed steps to be dropped in favor of delivery. Continuous release cycle is upheld to ensure code quality and new requests are moved into next development phases. 

## Problem

Time drives development in most cases. It is not a problem per se, difficulties appear when some unfinished features need to be hidden to release or new unplanned features suddenly appear to be included in the next release. As a result, delivered artifacts usually contain too many changes and that makes their testing, deployment and maintenance difficult. One example is delaying complete testing to later stages, creating a lag in deployment originated from the difficulties for performing local tests of big amounts of code.
No proper code review in place. -> Middle Managers & Dev InnerSource Learning Path, Undocumented or Non-existent Code Revie Process
No proper testing in place. Testing is done during delivery to PRE in some cases. Delivery is delayed because errors are detected late. -> Late Delivery pattern
No time scheduled to tackle the previous two points. -> PO, Middle Managers & Dev InnerSource Learning Path
PO jumps over scheduled things to add new features. -> PO InnerSource Learning Path.

## Forces

Against:
Deadlines do not change.
Good testing provides stability. Stability is needed for faster delivery.

## Solutions

Known anti-pattern: surreptitious temporary fork, no communication.
Split contributions in small changes that can be easily reviewed and tested.
Allocate time for a proper code review process, based on a commonly established set of guidelines and automated tests.

## Resulting Context

New requirements are naturally moved into next development phases. Development teams are not forced to add late functionalities as there is a continuous release cycle.

## Known Instances 

Santander Bank

## Status 

Structured
Published internally in Santander Bank; drafted via pull-request in December of 2022

## Authors

Alberto Pérez García-Plaza
Daniel Izquierdo Cortázar
Addie Girouard

## Acknowledgements 

Igor Zubiaurre

## Related

Time Constraints Hamper Inner Source Progress pattern that can be found in the Appendix document.
