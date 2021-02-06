## Title

Reluctance to accept contributions

## Patlet

TBD

## Problem

The core team that owns a shared asset is reluctant to adopt contributions of contributing business divisions, because this implies adoption of the maintenance responsibility for the contributed software as well, a burden the core team does not want to adopt.

## Context

An organizational unit (e.g. a business division or development team) is using an InnerSource product (a ‘shared asset’), and finds it is missing a certain feature that they need and would like to integrate into the shared asset. The core team that owns the shared asset is responsible for its design and maintenance. The potentially contributing organizational unit has no champion on the core team.

## Forces

* The core team is responsible for maintenance, and therefore accepting contributions implies accepting the maintenance burden of new contributions. The core team is reluctant to take on this burden.
* The unit that uses the asset requires the feature to be implemented for their product, but it is not clear where or how the feature “fits”--and thus they have difficulty implementing it because they lack knowledge of the shared asset.
* Contributors that are not part of the core team do not have the same knowledge as the core team has about the shared asset.
* The core team is offered a contribution that doesn’t fit with their vision of the shared asset--the contributor doesn’t understand all the intricacies that the core team needs to consider.
* Contributions are not suitable for the core team to handle, either because of quality problems (e.g. lack of architectural compliance) or that the contribution is too large--the contributor isn’t aware of how to contribute.

## Solutions

Define a clear contribution process for potential contributors.

* Implement a “support warranty” of limited time duration (e.g. 30 days) during which the contributor fixes any issues that the core team finds.
* Define clear contribution guidelines that define a set of expectations of contributions.
* Define a contribution workflow that describes submission, review, and acceptance steps, and which specifies how contributions can be tested.
* Provide training through tutorials, documentation, and one-on-one guidance.

## Resulting Context

Potential contributors have clear guidance available and process to follow so they know what to consider when preparing contributions. The core team is better able to handle incoming contributions.

## Known Instances

Philips Healthcare, “Feature Advocate” described in: VK Gurbani et al. (2010) Managing a corporate open source software asset, Communications of the ACM vol. 53(2)

## See Also

* Support Warranty - most likely [30 Day Warranty](../2-structured/30-day-warranty.md)
* Negotiate Contributions (unknown pattern)
* Architecture for Participation (unknown pattern)
* Feature Advocate (unknown pattern)

*Note:*
The last 3 patterns above were mentioned to be "under construction" at the time where this pattern was written. Right now we don't know where these patterns are.

## Status

11 Oct 2016 - First draft
13 Apr - Reviewed & Revised

## Author

Klaas-Jan Stol

## Acknowledgments

* Georg Grütter
* Bob Hanmer
* Udo Preiss
* Padma Sudarsan
* Tim Yao
* Nick Yeates

## References

Pattern was first created in the gDoc: [Reluctance to Receive Contributions](https://docs.google.com/document/d/13QDN-BpE_BixRFVGjao32n4Ctim0ROXAHbBWMBOijb4/edit)

(this section can be deleted once the conversion from gDoc to markdown is complete)
