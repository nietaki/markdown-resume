---
title: Christine M. Pukropski

margin-left: 1cm
margin-right: 1cm
margin-top: 1cm
margin-bottom: 1cm
papersize: a4

style: default
---

<hr />

## Contact information

christine (at) christinepuk.net\
+1 856 796 2156\
<https://www.thedizzyengineer.com>\
<https://www.linkedin.com/in/cpukropski>\

## Occupation
### Akamai

#### Senior SRE, _Akamai_, Philadelphia `Sept. 2023 - Present`

- Currently leading the effort to deploy "Devcloud": an isolated linode environment to enable teams to have a private cloud to build pre-prod environments for their CI/CD pipelines
- Kept all changes inline with production, so this environment remains as close to production as possible
- Deployed various systems in devcloud suchas our internal API, Backups, Login, and served as interim DBA
- Managed several "chicken and egg" problems in Devcloud and technical dependency mgmt 
- Enabled local developlement using ansible, vagrant and salt to replicate "prod" locally (this was the first time this was done for SRE owned assets)
- Migated a Sev 1 incident by intiating and driving through completion a "Cert Expiry Project" that ensured our environment was migrated to our new CA, this included our central DB.
- SME For various systems: Salt, Terraform, Internal Infra, Storage, Reverse proxies
- Create a "phase 0" incident process to augment the "classic akamai" incident process

#### SRE II, _Akamai_, Philadelphia, PA `Nov. 2022 - Sept. 2023`

- Led the effort to deploy 14+ datacenters in one year (this was more than we had at the time) and tripled our compute capacity
- Led the automation effort to enable us to do the datacenter deployments
- Built automation into our wrapper around the public linode terraform provider to enforce naming, dns, IP format, toolings, etc. standards
- Automation was multipronged but the goal was to "highstate" and elminate all manual tasks
- Process was find the tasks to be done, document them in LDAT, work through step by step to remove all toil. Used various tools such as salt, python, terraform, bash, adding endpoints
- Moved our certificates to auto-rotate using a salt runner and vault integration
- Moved our manual mTLS certificate process to be automated using the above tooling and collaborating with our dev team to change how the auth worked
- Developed the "LDAT" process to standardize Datacenter infrastructure deployments. This has since been copied and used by other parts of the company. This managed all aspects from documentation, technical dependencies, resource mgmt., bootstrapping infra. It allows multiple Datacenters to be deployed in parrallel. Time to Deployment went from 5 months to 1 month. The SRE portion from 3 Weeks to 1 day.
 
#### Site Reliability Engineer, _Akamai_, Philadelphia, PA `March 2022 - Nov. 2022`

- Deployed NVMe Clusters for Object Storage
- moved from the Storage to SRE Linux and helped setup broad team structures in our various tools


### Linode

#### Linux Systems Engineer, _Linode_, Philadelphia, PA `June 2020 - March 2022`
- Rebuilt our "Nodebalancer" product, streamlining the deployment, and increasing the HA
- Joined the storage team and lead various hardware collaboration efforts with the DC Ops Team to standardize our nodes
  - We had many HW combination types as a result of reusing retired builds, and I led the effort to standardize this and making checks to validate the hardware
- Standardized the salt pillar (configs) for storage to keep deployments "DRY"
- Standardized the OS of the various storage nodes (was a mix of debian, ubuntu and centos)
- Deployed NVMe-based Block Storage Clusters in all Datacenters (and the process to do so)
- Developed NFT Tables and FRR salt state to use in those efforts and beyond
- Built and deployed customer guest images using packer and deployed to the fleet of compute hosts same day of distro release
 
#### Junior Systems Engineer, _Linode_, Philadelphia, PA `Dec. 2019 - June 2020`
- Rebuilt our "loadbal" (nginx reverse proxy) machines that sits in front of all critical assets (api, cloud, login, website)
- Rebuilt our "stats" boxes that deliver basic network information about a customers linode via rdd to our api 
- Implemented "vizalerts" for the customer success team that integrated with our Tableau Instance 
- Owned Certificate Managemt, Tableau, and all critical public facing infra
- Particiated in on-call


#### Technical Project Manager, _Linode_, Philadelphia, PA `April 2018 - Dec. 2019`
- Facilitated roll out of 3 Data Center implementations for our Block Storage Product (from Hardware, Shipping, Networking, and Systems implementation) 
- Helped develop our project management infrastructure via., templates, processes, and "leading by doing"
- Delivered the "One Click Apps" product from inception to GA
- Delivered the "Linode Kubernetes Engine" product from inception to GA
- Delivered various internal projects related to networking upgrades, CVE vulns, hardware refreshes to GA 
- Created a Formal Incident Management Process
- Implemented standards for documentation and tracking (Jira and Confluence)

### Rudraya

#### Technical Project Manager, _Rudraya_, North Brunswick, New Jersey `July 2016 - April 2018`
- Managed several projects from initial implementation, minor and major version releases, and
change control enhancements following Rudraya SDLC or our client SDLC for GNU/Linux based
HPC systems.
- Conducted several large data migration and data archival projects in highly controlled Title 21
CFR Part 11 compliant and validated internal-client systems.
- Designed various pillars of the entire project life cycle including program or application logic,
system implementation, UI/UX enhancements, and business process work-flows.
- Agilely developed a data visualization web application and correlated dynamic database upload
administrator interface using R, Shiny Server, Flask, and Bootstrap.
- Documented processes via a local personal Wiki, internal README guides, lengthy Require-
ments Specifications, User and Administrator Guides or Project Implementation Plans.
- Administered various trainings and test case walk-through on topics extending past the scope of
the project implementation including: general GNU/Linux best practices and intro to the bash
command line, MPI, Parallelization, SGE Grid Engine, R/RStudio, our internal application a
central SVN data repository Sonic.

#### IT Project Coordinator, _Rudraya_, North Brunswick, New Jersey `July 2015 - July 2016`
- Administered development for internal applications and provided various feature suggestions.
- Established and governed work-streams for meticulously tracking bugs and issues.
- Performed day-to-day administrative tasks including fielding phone or email queries, handling
mail filing/photocopying, ordering supplies.
- Maintained and monitored the monthly office budget
- Tracked client SLA’s, PO’s, invoices as well as handled payroll information and established a
structure for new employee on-boarding
- Debugged enterprise PHP-SQL Web application using MySQL, Oracle SQL Developer, MyPH-
PAdmin, and tools such as putty, FileZila, and X2Go.
- Ran system and user test cases for enterprise validated environments.

## Education

#### Rutgers University, _Bachelor of Arts_ Information Technology Informatics & English `2011-2015`

Activities and societies: Bhakti Club, NJ Film Festival, Anthologist Literature Magazine

## Publications

**2024** [Careers and the DisABLED](https://drive.google.com/file/d/1N0_brkdJ0k1rHaoArUEM_1zsCFYqcVjY/view?usp=sharing) ([alt link](https://bt.e-ditionsbyfry.com/publication/frame.php?i=825813&p=32&pn=&ver=html5&view=issueViewer))

**2020** [Behind the Scenes: Sharing Inspiration from 6 Female & Non-Binary Linodians](https://www.linode.com/blog/linode/behind-the-scenes-sharing-inspiration-from-6-female-non-binary-linodians/)

## Employee Resoure Groups

At linode I created the first ERG 'Intersect' in 2018, when women made up less than 5% of the company. We grew and retained several women, non-binary, and trans folks and made a cross department community that thrives to this day. We pushed for policy changes such as improving our parental leave to adding pronouns in Slack.

With a small collaition, I created a framework for future ERGs to be created. This carried over to the aquisition, where Intersect was expanded into 'Out@Akamai'. 

After the aquisition, I decided to lend my efforts to the disability ERG _In Reach_ and took the position of Chair in Jan 2023. I brought the frameworks I created previously and adjusted them to _In Reach_ and helped oversee and merge the US and India Geo into a larger collaborative team. I am currently the US Geo Chair for the ERG.

## Skills
Linux, Bash, Python, CI/CD, Ceph, mTLS, Terraform, Saltstack, Orchestration at Scale, Hypervisors (qemu, kvm)

## Interests
DIY, Hiking, Nature, Music (Folk, Experimental, Clasical), Linux, HAM, Literature, Birding, My Cats 
