## Title
Include product owners 

### Problem
KPIs are very product focused and don't consider things like product collaboration.

### Forces
* KPIs discourages you from contributing to someone else in InnerSource
* You want to grow your circle of influence but limit use of your own resources
* Products have different priorities; they have their own best interests at heart but possibly not the company's (Products care about their ROI as pushed down by product management)
* product owners don't see the benefits of InnerSource. (Educating the product owners so they see the longer term benefits)
* InnerSource changes resource distribution; need up-front discussions (time needs to be allocated)--people don't understand how it can impact them in terms of resources. Too often people talk about InnerSource about what will be saved but don't talk about the costs up front.
* How you split up your resources if you can educate Product, they might invest some piece of that pie. By educating, you can have them invest in that.
* InnerSource will sometimes save time and money. If we had to wait until the original time had time to do your product it would be 2. If another team had to do it, it could be 3.2 but you get it on time. There is savings over if people weren't InnerSourcing at all. Writing a new thing would be a 7 or a 10. Reuse of software has much greater savings.
* Internal advertising is needed to find InnerSource reuse opportunities. Blogging can help. Labeling the blog "Tales from InnerSource" -- success stories, projects to work with. Create a champions program and have them identify the projects to work on. 
* Discoverability is a huge problem for product owners. Product owners when they hear about InnerSource want to do this for themselves; but how do they found out about collaboration opportunities.
* Product owner personal metrics are different; and their turnover can be higher than engineers. They don't care about longer term.
* Fear of loss of control. Resistance to allowing people to come in (there are big payoffs to allow people to come in and work on stuff).
    - Motivation: I can't get a feature in unless I get a feature in--external teams cleared old backlogs.
    - Sometimes contributors want to get in (if they have a requirement)
    - Other teams of contributors might not be highly motivated; you have to figure out how to help them. Developers generally will want to.
    - Motivation: Internal/receiving team: you can get external teams to help (staff augmentation)
* Testing standards become obsolete quicker; automating checking of standards is a better solution.

### Contexts
* People are not rewarded for software component reuse.
* Motivations of product aren't aligned with InnerSource initiative.
* Every product area has their own limited resource/budget.
* Delivery deadlines aren't movable. 
* Product owners rarely make compromises across their area in technical things.

### Solution
* By bringing in the impacted product owners, the overall resources cost would be lower. Cost for one team might be higher. Doing InnerSource avoids teams having to write new software from scratch. E.g., it is faster and easier to use open source than to write a new database.
* Change the collaboration model on the Product side, gather stakeholders together; then they will understand it is important.
* Some time needs to be invested to understand the choices.
* Technical collaboration will result in better quality decisions. There might be risk that the component might not be shared. Having the conversation builds trust and may result in evolution of the software component.
* Effective Enterprise search is essential with the education piece. Need useful information to feed the Enterprise search.
* Adjust KPIs (mandate) to motivate people (e.g., to put in tests, through Quality and Performance). Work through executives to get the needed mandates (e.g., Security) to "encourage" Product owners to enable InnerSource.
    - Make their goals fit your needs.
* Talk with the Product Owners to understand Product Owner priorities
* Read their Rally (CA Agile Central) user stories and roadmap where it is available.
* Find out their motivation.

### Resulting Context
* Initial time investment is rewarded by the outcomes.
* Product managers are now collaborating with one another.
* Resulting development costs less overall.
* Product owner KPIs might not change but reuse collaboration still occurs (a faster way to achieve them).
* Product owners factor in InnerSource so they reach their KPIs more efficiently.

### Known instance
* PayPal is looking into finding a search solution for their project agora. They found team using older tech: solr (pulled down different sources and searched them independently); decided to use elasticsearch. By approaching this team, discovered they would like to use elasticsearch. In that case, this team had a huge amount of code and it was unsupportable.
* No redundant efforts.
* Previously, Confluence was regarded as the single source of truth; they tried to put everything there and search on it there. But they had to de-index search on the large Confluence instance and so search there was not effective.

### Authors
* Silona Bonewald
* Erin Bank
* Tim Yao
