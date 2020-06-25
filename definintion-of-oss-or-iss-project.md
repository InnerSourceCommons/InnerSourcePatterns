# Title

The Definition of an Open Source Software (OSS) or InnerSource Software (ISS) Project.

## Definition(s)

The following are the components are essential for a project to be declared an Open Source Software
or InnerSource Software project. Note, the distinction between Open Source and InnerSource is merely
the network topology surrounding the source control management system instance. If the world at large
can view the code base, the project Open Source. On the other hand if any portion of the project's source 
code lives on a restricted network topology such that it is not available to be read by the world at 
large then we deem it InnerSource. 

We will use the term "population" in the following definitions 
to reference the user base that has readership based upon the respective network topology. Further, we
will use the term "owner" to refer to one who has privileges to delete the code base; we will refer to anyone
who has commits in a repository or documentation or issue list as a "contributor"; we will refer to any person who can 
push code to the repository a “committer”; we call any person using the repository a “user.” Naturally, the progression 
of trust follows (most to least trusted) as

1. Owners (commonly referred to as project committee members)
2. Committers
3. Contributors
4. Users

### Tenents of an OSS/ISS Project

#### Code Base
For a project to be considered OSS/ISS, it's code base must be entirely browsable by the population
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
Project communication is a must. There may be singlly owned projects that can be OSS/ISS, but they are few and far 
between. More often than not, other people are involved. Thus, a mechanism of communication is a requirement. 
Furthermore, one’s user base may live in a different time-zone. Thus, we find it a requirement for a project to be 
able to call itself OSS/ISS that it have an asychronous communication paradigm. For example, many projects use GitHub 
issues, while others use messaging applications, and some rely on plain old email. Although, we have yet to stumble 
upon a project solely relying upon paper mail as its communication mechanism, such a communication mechanism indeed 
falls within our definitions. 