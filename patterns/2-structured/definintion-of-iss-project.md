# Title

The Definition of an InnerSource Software (ISS) Project. We will largely take the ideas that follow
from the definition of an Open Source Software (OSS) Project. Note, the definition of an OSS Project
follows from [opensource.com's definition](https://opensource.org/osd). Further,
[RedHat also supplies a defintion of OSS project](https://www.redhat.com/en/topics/open-source/what-is-open-source).

Our goal here is to mimic the [open source way that opensource.com](https://opensource.com/open-source-way)
provides. In doing this, we foster collaboration and community inside our enterprises.

## Definition(s)

The following are the components are essential for a project to be declared an InnerSource Software 
project. Note, the distinction between Open Source and InnerSource is merely
the network topology surrounding the source control management system instance. If the world at large
can view the code base, the project is Open Source. On the other hand if any portion of the project's source 
code lives on a restricted network topology such that it is not available to be read by the world at 
large then we deem it InnerSource, and refer to it as "private." Also, most OSS projects contain a 
[license (list taken from opensource.com)](https://opensource.org/licenses).
The licenses are legal parameters that developers and users adhere to for the development and consumption
of the project. Luckily we need not worry about licensing because we are concerned with "private" repositories.

We will use the term "population" in the following definitions 
to reference the user base that has readership based upon the respective network topology. Further, we
will use the term "owner" to refer to one who has privileges to delete the code base; we will refer to anyone
who has commits in a repository or documentation or issue list as a "contributor"; we will refer to any person who can 
push code to the repository a “committer”; we call any person using the repository a “user.” Naturally, the progression 
of trust follows (most to least trusted) as:

1. Owners (commonly referred to as project committee members)
2. Committers
3. Contributors
4. Users

### Tenets of an OSS/ISS Project

#### Code Base
For a project to be considered ISS, it's code base must be entirely browsable by the population
of users on a given network. It may or may not be hosted in a source code management system. That
is left up to the project owners.

#### Distributions
Clearly a project must be distributed for it to be used. The mechanics of how a project releases its 
distributions is left to the owners whether it be the source itself or more formally packaged convenience binaries.

#### Website
Without a project website there is unlikely to ever be any users. However, a considerable number of projects use 
the features of the GitHub (or source control management system more generally) user interface as the project’s 
primary website.

#### Asychronous Communications
Project communication is a must. There may be singlly owned projects that can be ISS, but they are few and far 
between. More often than not, other people are involved. Thus, a mechanism of communication is a requirement. 
Furthermore, one’s user base may live in a different time-zone. Thus, we find it a requirement for a project to be 
able to call itself ISS that it have an asychronous communication paradigm. For example, many projects use GitHub 
issues, while others use messaging applications, and some rely on plain old email. Although, we have yet to stumble 
upon a project solely relying upon paper mail as its communication mechanism, such a communication mechanism indeed 
falls within our definitions. 
