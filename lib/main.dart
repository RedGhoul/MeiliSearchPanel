import 'package:flutter/material.dart';
import 'package:meilisearch/meilisearch.dart';
import 'package:meilisearchpanel/pages/login_page.dart';

void main() async {
  await createDummyData();
  runApp(const MyApp());
}

Future<void> createDummyData() async {
  var client = MeiliSearchClient('http://127.0.0.1:7700', 'MASTER_KEY');

  // An index is where the documents are stored.
  var index = client.index('jobs');

  const documents = [
    {
      "id":1,
      "title": "Java Software Developer",
      "originalPostingUrl": "https://boards.greenhouse.io/callibrity/jobs/5853353002?gh_src=",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/java-software-developer-118418",
      "company": "Callibrity",
      "location": "Columbus, OH",
      "postDate": "2022-09-05 10:05:04 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "java-software-developer-118418",
      "sentiment": {
        "polarity": 0.23928687,
        "subjectivity": 0.45978808
      },
      "dateAdded": "2022-09-06T21:59:03.198048-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Callibrity"
        },
        {
          "affinity": 1,
          "text": "development"
        },
        {
          "affinity": 1,
          "text": "business"
        },
        {
          "affinity": 1,
          "text": "problems"
        },
        {
          "affinity": 1,
          "text": "experience"
        }
      ],
      "tags": [
        {
          "text": "Callibrity"
        },
        {
          "text": "development"
        },
        {
          "text": "business"
        },
        {
          "text": "problems"
        },
        {
          "text": "experience"
        }
      ],
      "summary": "This role is remote based but must work on US Eastern or Central Time working hours Strongly prefer candidates in Midwestern and Eastern Southeastern US cities Will not consider nonUS based candidatesCallibrity is a developer owned and managed custom software development consulting company that is dedicated to creating quality software using modern technologies and adding unquestionable business value to companies across multiple industries and verticals We are problem solverspeople who like a challenge and enjoy working with modern tech stacks We offer an incredibly collaborative culture and enjoy solving complex problems with our clients If you are looking for a company where you can grow in your career and that values people transparency and flexibility we would like to talk to youAs a Software Developer you are a leader by example you are a subject matter expert and you help lead strategic technical direction You will get to interact with key client stakeholders on a regular basis and use your experience to prove business ROI through innovative greenfield technology solutions Software Developers typically have longer tenures and higher retention rates with Callibrity than other companies because the work is challenging and rewarding we have a strong engineering culture and we invest in the best peopleResponsibilitiesAre trusted advisors to our clients and seen as thought leaders in the tech industryAre keenly aware of big picture business problems and goals and capable of a leadership roleMentor train and upskill your Callibrity peers and clientsrsquo teamsCan solve a wide variety of problems with the appropriate solution drawn from a large subsetCommunicate complex ideas effectively both verbally and in writingProactively identify problems challenges and issues and recommend the best possible solutionDemonstrate mastery and cable to teach software development best practices Agile DevOps Test Automation CICD TDD to othersStay ahead of the curve by exploring new technologies including AI Machine Learning Cloud and IoTThrive in an environment where there is close interaction among different roles and teamsAre admired by the client as someone they can count on regardless of title or seniorityRequirements3+ years of fullstack enterprise Java development experienceExperience with Git GitHub Bootstrap GradleMaven or other similar tool is preferredExperience with SQL JavaScript frameworks Angular React Version Control and Agile is preferredDesired experience with Kafka and Jenkins is a plusCloud experience with AWS Azure andor Google Cloud Platform preferredExperience with Docker Kubernetes andor developing applications for a major public cloud provider is a plusExtensive professional experience in Information Technology andor ConsultingSuccessfully solve Callibrityrsquos HackerRank and Code Pairing ChallengesInterpersonal skills Influencer professionalism and accountability passion for learning us not them mentality shared responsibilityInterest and enthusiasm for learning and growing in your careerEmbodies Callibritys core valuesMust be authorized to work in the United States without sponsorshipBenefits of Being a Callibrity ConsultantHealthVisionDental insurance effective first day of employment401k match vested immediatelyProfit Sharing BonusAnnual professional development stipend 1500One time bonus for remote office set upPaid parental leavePaid bench timePaid flex time for training blogging speaking engagements and thought leadershipPaid time off for vacation 25 weeks depending on level holidays 8Competitive industry salaryLunch and learnsTeam building eventsSmall company feel with the resources of a sustainable and proven business modelHigh employee retention and satisfaction One of Cincinnatirsquos Best Places to WorkWorklife balance Callibrity is based in Cincinnati Ohio"
    },
    {
      "id":2,
      "title": "Senior Java Developer - AB3910",
      "originalPostingUrl": "https://jobs.lever.co/nisum/ee4480f1-d9f1-4323-b7b8-f3409e739679/apply?lever-origin=applied&lever-source%5B%5D=BuiltInNationwide",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/senior-java-developer-ab3910-118368",
      "company": "Nisum",
      "location": "East Bay",
      "postDate": "2022-09-05 11:35:22 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "senior-java-developer-ab3910-118368",
      "sentiment": {
        "polarity": 0.103198655,
        "subjectivity": 0.33416307
      },
      "dateAdded": "2022-09-06T21:57:13.007754-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Spring"
        },
        {
          "affinity": 0.6,
          "text": "Nisum"
        },
        {
          "affinity": 0.6,
          "text": "digital"
        },
        {
          "affinity": 0.6,
          "text": "development"
        },
        {
          "affinity": 0.6,
          "text": "Java"
        }
      ],
      "tags": [
        {
          "text": "Spring"
        },
        {
          "text": "Nisum"
        },
        {
          "text": "digital"
        },
        {
          "text": "development"
        },
        {
          "text": "Java"
        }
      ],
      "summary": "channelsWhat Yoursquoll DoDevelop code using latest Java Spring and NO SQL technologiesSolve technical problems using cutting edge technologies and best practicesPropose different ways to solve the same problem and showcase why one solution is betterEnsure all aspects of the technical design are correctly incorporatedContribute technical expertise to all projects as requiredContribute research and implementing POCrsquos as requiredWhat You Know710 years of JavaJ2EE development experienceJavamicroservices ndash Java 78 Spring Boot some messaging background preferably KafkaProficient experience with SOA Rest Services and Spring Spring Batch Spring BootEmbody passion for new technology open source and continued skill development Experienced in GIT SVN or other distributed version control systemExpert practitioner and teacher of AgileDeep understanding of and experience in Java design concepts patterns and coding standardsIndependent thinker that can identify problems and provide creative solutionsPivotal Cloud Foundry or other Cloud platform like Azure is a plusGood communicator and team playernbspPrefer local in PSTEducationBachelorrsquos degree in Computer Science Information Systems Engineering Computer Applications or related fieldNisum is an Equal Opportunity Employernbspand wenbsparenbspproud of our ongoing efforts to foster diversity and inclusion in the workplace Nisum is a leading global digital commerce firm headquartered in California with services spanning digital strategy and transformation insights and analytics blockchain business agility and custom software development Founded in 2000 with the customercentric motto ldquoBuilding Success Togetherregrdquo Nisum has grown to over 1800 professionals across the United States ChileColombia India Pakistan and CanadanbspA preferred advisor to leading Fortune 500 brands Nisum enables clients to achieve direct business growth by building the advanced technology they need to reach end customers in todayrsquos world with immersive and seamless experiences across digital and physical"
    },
    {
      "id":3,
      "title": "Principal Software Engineer-Java",
      "originalPostingUrl": "https://jobs.fidelity.com/job-details/16255361/?source=Built In",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/principal-software-engineer-java-118136",
      "company": "Fidelity Investments",
      "location": "Raleigh-Durham, NC",
      "postDate": "2022-09-06 9:20:05 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "principal-software-engineer-java-118136",
      "sentiment": {
        "polarity": 0.20369218,
        "subjectivity": 0.42035088
      },
      "dateAdded": "2022-09-06T21:49:37.033187-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "work"
        },
        {
          "affinity": 1,
          "text": "build"
        },
        {
          "affinity": 1,
          "text": "Management"
        },
        {
          "affinity": 0.8,
          "text": "Asset"
        },
        {
          "affinity": 0.8,
          "text": "experience"
        }
      ],
      "tags": [
        {
          "text": "work"
        },
        {
          "text": "build"
        },
        {
          "text": "Management"
        },
        {
          "text": "Asset"
        },
        {
          "text": "experience"
        }
      ],
      "summary": "Job DescriptionThe RoleInvestment Compliance Technology team is seeking a Senior JavaScala lead to work on the development of a brandnew Compliance Monitoring product This is a highly concurrent system performing complex real time calculations all within a subsecond SLAWe are looking for a technical leader with strong engineering focus and passion for building complex distributed systemsRole will also involve growing a strong engineering team that could challenge the status quo and build next generation applications for Asset ManagementDurham Merrimack Boston SmithfieldThe Expertise and Skills You BringBachelors or Masters degree in Computer Science or related technical field10+ years of experience developing in JavaProficient in Scala with at least 2+ years of hands on experienceThorough knowledge of the Akka frameworkExtensive working experience in Rest based Microservices built using frameworks like Spring Mybatis etcWorking knowledge of Event driven systems using Kafka Messaging platformWorking experience in Cloud based infrastructure and Continuous Integration Continuous Delivery CICD practicesUnderstanding of the Asset Management specifically Compliance domain is a plusExperience working in an Agile teamYou have great collaboration skills and can work with different partners and drive business solutionsOut of the box problem solving skills and willingness to learn and experiment new technologiesProactive working style with ability to multitask and handle multiple priorities at oncePossess good interpersonal skills and can articulate your thoughts and questions clearlyYou have the ability to lead and mentor team with compassionThe TeamAsset Management Technology AMT provides worldwide technology and support to all the Investment Management Research Trading and Investment Operations functions We are an integral partner for Asset Management to deliver innovative scalable industryleading investment tools that enable Asset Management to achieve competitive advantage globallyOur teams build products and capabilities that continue to distinguish our brand as the best customer experience in the financial services industryCertificationsCompany When Fidelity employees eventually return to the office our goal is for most people to work flexibly in a way that balances both personal and business needs with time onsite and offsite through what were calling Dynamic WorkingWe invite you to Find Your Fidelity at fidelitycareerscomFidelity Investments is an equal opportunity employer We believe that the most effective way to attract develop and retain a diverse workforce is to build an enduring culture of inclusion and belongingFidelity will reasonably accommodate applicants with disabilities who need adjustments to participate in the application or interview process To initiate a request for an accommodation contact the HR Leave of AbsenceAccommodation Team by sending an email to accommodations fmrcom or by calling 8008355099 prompt 2 option 3 We assist companies and nonprofit organizations in delivering benefits to their employees And we provide institutions and independent advisors with investment and technology solutions to help invest their own clients moneyJoin UsAt Fidelity youll find endless opportunities to build a meaningful career that positively impacts peoples lives including yours You can take advantage of flexible benefits that support you through every stage of your career empowering you to thrive at work and at home Honored with a Glassdoor Employees Choice Award we have been recognized by our employees as a Best Place to Work in 2022"
    },
    {
      "id":4,
      "title": "Java Developers (Juniors / Intermediates / Seniors)",
      "originalPostingUrl": "https://boards.greenhouse.io/digitalonus/jobs/6222835002?gh_src=",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/java-developers-juniors-intermediates-seniors-117969",
      "company": "DigitalOnUs",
      "location": "Other US Location",
      "postDate": "2022-09-06 1:50:05 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "java-developers-juniors-intermediates-seniors-117969",
      "sentiment": {
        "polarity": 0.18043478,
        "subjectivity": 0.43152174
      },
      "dateAdded": "2022-09-06T21:44:17.643261-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Java"
        },
        {
          "affinity": 1,
          "text": "user"
        },
        {
          "affinity": 1,
          "text": "application"
        },
        {
          "affinity": 1,
          "text": "personal"
        },
        {
          "affinity": 1,
          "text": "data"
        }
      ],
      "tags": [
        {
          "text": "Java"
        },
        {
          "text": "user"
        },
        {
          "text": "application"
        },
        {
          "text": "personal"
        },
        {
          "text": "data"
        }
      ],
      "summary": "Java Developers Junior Intermediate SeniornbspWe are looking for highly skilled programmers with experience building web applications in Java Java Developers are responsible for analyzing user requirements and business objectives determining application features and functionality and recommending changes to existing Javabased applications among other dutiesnbspJava Developers need to compile detailed technical documentation and user assistance material requiring excellent written communicationnbspJava Developer ResponsibilitiesnbspDesigning and implementing Javabased applicationsAnalyzing user requirements to inform application designDefining application objectives and functionalityAligning application design with business goalsDeveloping and testing softwareDebugging and resolving technical problems that ariseProducing detailed design documentationRecommending changes to existing Java infrastructureDeveloping multimedia applicationsDeveloping documentation to assist usersEnsuring continuous professional selfdevelopmentnbspJava Developer RequirementsnbspExperience with APIs desirableExperience with SQL desirableKnowledge with Python SQL ETL Springboot and React desirableDegree in Computer Science or related fieldExperience with user interface design database structures and statistical analysesAnalytical mindset and good problemsolving skillsExcellent written and verbal communicationGood organizational skillsAbility to work as part of a teamAttention to detailIf you apply for this opportunity we will get you resume and its contain personal data whose treatment has been authorized by its owner for Digital OnUs S de RL de CV the Companyrdquo If you are not the owner of this information or have no relation whatsoever with the subjects treated in it you are requested in the most attentive way not to make copies of it and or its attached files and delete it immediately under the risk of being considered as responsible for the unauthorized treatment of personal data in accordance with the Federal Law on Protection of Personal Data Held by Private Parties its Regulations and other applicable regulations If you are the owner of personal data in possession of the Company and wish to obtain further information regarding the processing of your personal data or the exercise of your ARCO rights please consult our integral privacy notice on the website httpswwwdigitalonuscomprivacypolicy"
    },
    {
      "id":5,
      "title": "Software Developer Lead - Java (Remote)",
      "originalPostingUrl": "https://pnc.wd5.myworkdayjobs.com/External/job/Home-Location-PA-PAH01/Software-Developer-Lead--Java-_R078448-1?source=Built In",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/software-developer-lead-java-remote-117769",
      "company": "PNC",
      "location": "Remote",
      "postDate": "2022-09-06 2:35:05 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "software-developer-lead-java-remote-117769",
      "sentiment": {
        "polarity": 0.11880368,
        "subjectivity": 0.35484225
      },
      "dateAdded": "2022-09-06T21:38:22.078927-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "technical"
        },
        {
          "affinity": 0.9,
          "text": "business"
        },
        {
          "affinity": 0.8,
          "text": "software"
        },
        {
          "affinity": 0.8,
          "text": "application"
        },
        {
          "affinity": 0.7,
          "text": "Knowledge"
        }
      ],
      "tags": [
        {
          "text": "technical"
        },
        {
          "text": "business"
        },
        {
          "text": "software"
        },
        {
          "text": "application"
        },
        {
          "text": "Knowledge"
        }
      ],
      "summary": "In addition you will also display an innovative approach to apply modern principles methodologies and tools to advance business initiatives and capabilities In this role you will become extremely knowledgeable of the values and practices that align with our customer needs and satisfaction as primary considerations in all business decisions and then be able to leverage that information in creating customized customer solutionsDue to the nature of the position preferred candidates will have hands on development experience as well as experience with the followingJava S8OracleSpring frameworkMicroserviceOpenShiftJenkinsGitJob DescriptionCreates and leads the technical design and development of software solutionsProposes designs software solutions to address complex business needs Prepares technical and procedural documentation requiredFacilitates complex problem resolutionProvides technical guidance and support to colleagues Reviews coding testing and documentation of softwareApplies modern principles methodologies and tools to advance business initiatives and capabilitiesPNC Employees take pride in our reputation and to continue building upon that we expect our employees to beCustomer Focused Knowledgeable of the values and practices that align customer needs and satisfaction as primary considerations in all business decisions and able to leverage that information in creating customized customer solutionsManaging Risk Assessing and effectively managing all of the risks associated with their business objectives and activities to ensure they adhere to and support PNCs Enterprise Risk Management FrameworkCompetenciesApplication Delivery Process Knowledge of major tasks deliverables and formal application delivery methodologies ability to utilize these in order to deliver new or enhanced applicationsApplication Design Architecture Knowledge of application design activities tools and techniques ability to utilize these to convert business requirements and logical models into a technical application designApplication Development Tools Knowledge of and ability to utilize a variety of specific tools and toolkits for the development and support of applicationsApplication Testing Knowledge of application testing and ability to design plan and execute application testing strategies and tactics to ensure software quality throughout all stages of application developmentPackaged Application Integration Knowledge of and the ability to implement packaged application software and integrate it with company applications databases and technology platformsSystem Development Life Cycle Knowledge of project management techniques and the ability to plan design develop test implement and maintain system development life cycle segments and phasesTechnical Troubleshooting Knowledge of technical troubleshooting approaches tools and techniques and the ability to anticipate recognize and resolve technical hardware software application or operational problemsWork ExperienceRoles at this level typically require a university college degree with 3+ years of relevant direct industry experience Certifications are often desired In lieu of a degree a comparable combination of education and experience including military service may be consideredEducationBachelorsAdditional Job DescriptionBase Salary Commensurate with skills and experienceBenefitsPNC offers employees a comprehensive range of benefits to help meet your needs now and in the future As a Software Developer Lead Java you will be responsible for providing detailed technical design and development of software solutions using existing and emerging technology platforms where you will also be writing code testing and deploying software You will also be responsible for proposing designing coding software solutions to address complex business needs as well as overseeing any technical and procedural documentation required as a result Additionally you will also be heavily involved with assessing and effectively managing all of the risks associated with their business objectives and activities to ensure they adhere to and support PNCs Enterprise Risk Management Framework Depending on your eligibility options for fulltime employees include medicalprescription drug coverage with a Health Savings Account feature dental and vision options employee and spousechild life insurance short and longterm disability protection maternity and parental leave paid holidays vacation days and occasional absence time 401k pension and stock purchase plans dependent care reimbursement account backup childelder care adoption assistance educational assistance and a robust wellness program with financial incentives To learn more about these and other programs including benefits for parttime employees visit pncbenefitscom > New to PNCDisability Accommodations StatementThe PNC workplace is inclusive and supportive of individual needs If you have a physical or other impairment that might require an accommodation including technical assistance with the PNC Careers website or submission process please call 8779687762 and select Option 4 Recruiting or contact us via email at pathfinderpnccom"
    },
    {
      "id":6,
      "title": "Senior Software Engineer (Java)",
      "originalPostingUrl": "https://ad.doubleclick.net/ddm/clk/521474371;329231967;l?https://jobs.walgreens.com/en/job/-/-/1242/32654354880?utm_source=builtinchicago.org&utm_medium=job_posting&utm_campaign=IT_Campaign&utm_content=niche_site&utm_term=329231967&ss=paid/",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/senior-software-engineer-java-117434",
      "company": "Walgreens",
      "location": "Chicago, IL",
      "postDate": "2022-09-05 9:06:10 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "senior-software-engineer-java-117434",
      "sentiment": {
        "polarity": 0.11678459,
        "subjectivity": 0.4929406
      },
      "dateAdded": "2022-09-06T21:18:01.353155-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "software"
        },
        {
          "affinity": 0.6923077,
          "text": "applications"
        },
        {
          "affinity": 0.61538464,
          "text": "design"
        },
        {
          "affinity": 0.53846157,
          "text": "years"
        },
        {
          "affinity": 0.53846157,
          "text": "experience"
        }
      ],
      "tags": [
        {
          "text": "software"
        },
        {
          "text": "applications"
        },
        {
          "text": "design"
        },
        {
          "text": "years"
        },
        {
          "text": "experience"
        }
      ],
      "summary": "Job SummarySeasoned experienced professional with a full understanding of area of specialization who will perform and implement activities that impact components processes of specified functional areas of the Walgreens DigitalOnline application Anticipates and prevents problems and roadblocks before they occur Typically assigned to important complicated undertakings Implements activities that generally impact important components processes of the work of own unit team projects of the platform operation in an Agile environment This role is developing design skills but has a comprehensive understanding of the organizations current software applications and tools Has indepth knowledge of programming languages important to the organization and is proficient with them Receives work in the form of short and midterm assignments that regularly require the application of independent judgment Mentors less experienced members of the team Job Responsibilities Plans designs develops and tests backend software systems or applications for software enhancements and new products including cloudbased or internetrelated tools  Writes code that meets specifications for large and highly complex software programs and systems  Develops software applications and tools Participates in software design  Develops software applications and tools using Agile development methodologies  Delivers software features with exceptional quality meeting designated release plans and delivery commitments  This role is assigned to important complicated undertakings  Contributes to and participates actively in the design architecture and build phases to aim at producing high quality deliverables working with existing architects where appropriate Participates in the evaluation of compatibility of programs with existing communications hardware and software features  Interacts with internal and external peers and managers to exchange complex information related to areas of specialization Works closely with other team members in guiding software architecture and technology decisions  Demonstrates proficiency in most areas of the professional function and indepth specialization in some Works on problems of diverse scope where analysis of data requires evaluation of identifiable factors Anticipates and prevents problems and roadblocks before they occur  Networks with senior internal and external personnel in own area of expertise to exchange semicomplex information related to assigned activities  Developing professional expertise applies company policies and procedures to resolve a variety of issues  Developing design skills Has a comprehensive understanding of the organizations current software applications and tools Has indepth knowledge of programming languages important to the organization  Resolves a wide range of issues in creative ways  Developing design skills and has a comprehensive understanding of the organizations current software applications and tools Has indepth knowledge of programming languages important to the organization  Anticipates and prevents problems and roadblocks before they occur  Mentors less experienced members of the team Basic Qualifications Bachelors degree in Computer Science Information Technology or related field of study and at least 4 years of professional work experience in Engineering Software Engineering or similar  At least 3 years of experience writing code for moderately complex applications  At least 3 years of experience with programming languages for online applications microservices or mobile applications  At least 3 years of experience designingbuilding moderately complex applicationsautomation  Experience writing automation test or deployment scripts  Experience creating codingscripting solutions to fix moderately complex problems  Experience identifying operational issues and recommending and implementing strategies to resolve problems  Experience in design development security scalability of highvolume services implemented in Java NodeTypescript NET or Python etc  Experience of design development query database optimization of distributed SQL eg Oracle MySQL NoSQL MongoDB Cassandra databases  At least 2 years of experience contributing to financial decisions in the workplace  At least 2 years of direct leadership indirect leadership andor crossfunctional team leadership  Willing to travel up toat least 10 of the time for business purposes within state and out of state Preferred Qualifications Experience with full stack development ranging from frontend user interfaces to backend systems  At least 3 years of experience with software engineering best practices including coding standards code reviews source control management build process testing operations  A mindset to take up most challenging coding tasks  Demonstrated experience of Enterprise Integration Design patterns in development of loosely coupled resilient systems  Hands on with modern UI frameworks like React with excellent knowledge of clientside security frontend design pattern stateless components conditional rendering controlled components hooks etc  Experience with implementation security capacity planning performance tuning of solutions deployed to Cloud technologies Azure ACS AKS Google IBM AWS or Cloud Foundry"
    },
    {
      "id":7,
      "title": "Contract: Lead Backend Java Engineer",
      "originalPostingUrl": "https://boards.greenhouse.io/upwork/jobs/5190162003?gh_src=8f0d240c3us",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/contract-lead-backend-java-engineer-116984",
      "company": "Upwork",
      "location": "Remote",
      "postDate": "2022-09-06 8:05:06 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "contract-lead-backend-java-engineer-116984",
      "sentiment": {
        "polarity": 0.28009406,
        "subjectivity": 0.5324974
      },
      "dateAdded": "2022-09-06T21:04:45.548647-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "work"
        },
        {
          "affinity": 0.6666667,
          "text": "design"
        },
        {
          "affinity": 0.5,
          "text": "Upwork"
        },
        {
          "affinity": 0.5,
          "text": "code"
        },
        {
          "affinity": 0.5,
          "text": "gender"
        }
      ],
      "tags": [
        {
          "text": "work"
        },
        {
          "text": "design"
        }
      ],
      "summary": "Upwork UPWK is the worldrsquos work marketplace We serve everyone from oneperson startups to over 30 of the Fortune 100 with a powerful trustdriven platform that enables companies and talent to work together in new ways that unlock their potentialnbspnbspLast year more than 33 billion of work was done through Upwork by skilled professionals who are gaining more control by finding work they are passionate about and innovating their careersnbspThis is an engagement through Upworkrsquos Hybrid Workforce Solutions HWS Team Our Hybrid Workforce Solutions Team is a global group of professionals that support Upworkrsquos business Our HWS team members are located all over the world WorkProject ScopenbspUpwork is looking for an experienced Lead Backend Engineer to work on our monetization services platform Must be very familiar with Java REST and SCA design principles Must be able to collaborate on design and participate in code reviewsThe scope of these projects is long term and successful candidates will be engaged every week full time 40 hoursweek working on exciting new projectsMust Haves Required SkillsnbspMust be very familiar with Java REST and SCA design principles Must be able to collaborate on design and participate in code reviewsExperience with Netflix OSS components eg EvCache Hystrix Guice Git Dropwizard and Jetty is a plusWork independently and with minimal supervisionCommunicate frequently and effectively in EnglishDeliver robust and highquality code with unit testsAble to work for 40 hours per week during US business hours Upwork is proudly committed to fostering a diverse and inclusive workforce We never discriminate based on race religion color national origin gender including pregnancy childbirth or related medical condition sexual orientation gender identity gender expression age status as a protected veteran status as an individual with a disability or other applicable legally protected characteristics nbspnbspLIMP1"
    },
    {
      "id":8,
      "title": "Software Engineer, Java - Pet Health",
      "originalPostingUrl": "https://careers.chewy.com/us/en/job/4536948?gh_jid=4536948&gh_src=ea171f631",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/software-engineer-java-pet-health-116934",
      "company": "Chewy",
      "location": "Miami, FL",
      "postDate": "2022-09-06 2:20:15 PM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "software-engineer-java-pet-health-116934",
      "sentiment": {
        "polarity": 0.17475,
        "subjectivity": 0.54525
      },
      "dateAdded": "2022-09-06T21:03:28.604346-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Pet"
        },
        {
          "affinity": 1,
          "text": "engineering"
        },
        {
          "affinity": 1,
          "text": "code"
        },
        {
          "affinity": 1,
          "text": "CICD"
        },
        {
          "affinity": 1,
          "text": "experienceExperience"
        }
      ],
      "tags": [
        {
          "text": "Pet"
        },
        {
          "text": "engineering"
        },
        {
          "text": "code"
        },
        {
          "text": "CICD"
        },
        {
          "text": "experienceExperience"
        }
      ],
      "summary": "Our TeamnbspChewys Pet Health is on a mission to build innovative solutions for our pet parents and our partner vets such as Pet Insurance Practice Hub and Telehealth Service Engineering plays a critical role in defining and executing our platform roadmap We take the time to understand the why before we start shaping up the how We celebrate engineering successes and promote a blameless and continuous learning and improvement engineering culture We set the bar high for delivering productionready code by adopting CICD and DevOps engineering best practices Our engineers are encouraged to contribute ideas and code to our own platform and to other partner teamsYour OpportunityAs a Software Engineer on the Pet Health development team you will build robust resilient and scalable platforms that will directly impact tens of millions of customers who care for their furry family members every day You will be part of an agile team and own the design review and development of high quality performant productionready code with CICD processes to ensure speed and qualitySkills we look for4+ years of Software Engineering experienceExperience designing building deploying and scaling systems using JavanbspExperience with frameworks like Spring Boot for RESTful APIs and microservicesnbspnbspExperience with building deploying CICD pipelines and using cloud platformsnbspBachelors degree Computer Science or similar technical field of study preferred or equivalent work experienceExperience with AWS andor similar cloud platformsnbspBonusEcommerce andor Healthcare experienceExperience in frontend technologies and frameworks such as React Angular or TypeScriptExperience in Kubernetes and Helm ChartsnbspChewy is committed to equal opportunity We value and embrace diversity and inclusion of all Team MembersIf you have a disability under the Americans with Disabilities Act or similar law or you require a religious accommodation and you wish to discuss potential accommodations related to applying for employment at Chewy please contact HRchewycomnbspTo access Chewyrsquos Privacy Policy which contains information regarding information collected from job applicants and how we use it please click herenbsphttpswwwchewycomappcontentprivacy"
    },
    {
      "id":9,
      "title": "Lead Java Engineer - Remote",
      "originalPostingUrl": "https://careers.jobscore.com/apply_flow/applications/go?job_id=dtf6R8JLHh-zJ3Q6O2RToH&name=BuiltIn&ref=rss&sid=69",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/lead-java-engineer-remote-116486",
      "company": "Cognizant Softvision",
      "location": "Remote",
      "postDate": "2022-09-05 12:05:12 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "lead-java-engineer-remote-116486",
      "sentiment": {
        "polarity": 0.2440107,
        "subjectivity": 0.4846435
      },
      "dateAdded": "2022-09-05T22:14:11.376787-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "experience"
        },
        {
          "affinity": 0.75,
          "text": "development"
        },
        {
          "affinity": 0.625,
          "text": "OpenShift"
        },
        {
          "affinity": 0.5,
          "text": "Softvision"
        },
        {
          "affinity": 0.5,
          "text": "engineering"
        }
      ],
      "tags": [
        {
          "text": "experience"
        },
        {
          "text": "development"
        },
        {
          "text": "OpenShift"
        }
      ],
      "summary": "About Cognizant SoftvisionCognizant Softvision is a leading software product engineering company creating impactful endtoend digital products and solutions that connect brands with customers Delivering sustainable innovation agility and a connection that inspires engagement and business transformation wersquove worked with some of the worldrsquos largest leading brandsCognizant Softvision has more than 5000 product design and engineering professionals across a network of global studios in 9 countries and five continents Learn how Cognizant Softvision designs experiences and engineers outcomes that result in memorable interactions at wwwcognizantsoftvisioncom or follow us WeAreSoftvisionnbspWe are looking for an exceptional Lead Java Engineer to work with our crossfunctional team and join our worldclass community of talented experts Core to this need are expertise inWork closely with development teams to ensure that solutions are designed with customer user experienceAble to scaleperformance and operability in mindDesign and Develop the automation to validate the builds in the CICD pipelineWork across Dev Ops modelDesign build and configure applications to meet business process and application requirementsTechnical Experience 8+ years of application development experience on the RedHat OpenShift Container PlatformExpertise with KubernetesExpeiesrience in DevOps engineering and experienced on scripting Jenkins DockerKubernetes OpenShift GitExperience with AWS cloud PAASIAAS technologExperience working with infrastructure as code technologies such as TerraformExperience in Infrastructure provisioning monitoring and OpsWork closely with development teams to ensure that solutions are designed with customer user experience scaleperformance and operability in mindExperience in Environment ManagementKnowledge on Docker Kubernetes Jenkins and OpenShift is mustGood analytical Problemsolving skills7+ years of experience in custom application development most recently with Java 8+ leveraging the Spring Boot frameworkExperience in application development experience on the RedHat OpenShift Container PlatformExperience in DevOps engineering and experienced on scripting Jenkins DockerKubernetes OpenShift GitExperience working with infrastructure as code technologies such as Terraformtions using current bestpractice patterns and methodologies 12 Factor principles MicroservicesExtensive backend development expertise in modern domain driven API architectureProven ability to develop complex APIs in high volume highly available environments leveraging published API contractsOpenShift cloud experience preferredKafka Streaming experience preferred3+ years of experience developing in an Agile environment preferably SAFeA strong curiosity about our clientsrsquo business needs coupled withnbspa passion to stay on the cutting edgeMust currently reside in the continental USA and be authorized to work for any employerIdeally you will also haveAn Agile mindset with experience working in Agile environmentA spirit of collaboration and transparent communicationA natural curiosity for new scripting languages frameworks and technologiesnbspHigh personal codedevelopment standards peer testing unit testing documentation etcWe are a thriving Community of top technology talent that is globally connected We Engage Make Run and Evolve the technology that makes many brands that you know and love So letrsquos take this journey together No matter where you are on your digital career roadmap we can help you grow and have fun doing itnbspCognizant Softvision is an Equal Opportunity Employer No 3rd Party Agency Candidates"
    },
    {
      "id":10,
      "title": "Senior Java Full Stack Developer - Remote",
      "originalPostingUrl": "https://careers.jobscore.com/apply_flow/applications/go?job_id=bjEwns0_9iWkInjRW76jWj&name=BuiltIn&ref=rss&sid=69",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/senior-java-full-stack-developer-remote-116485",
      "company": "Cognizant Softvision",
      "location": "Des Moines, IA",
      "postDate": "2022-09-05 12:05:13 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "senior-java-full-stack-developer-remote-116485",
      "sentiment": {
        "polarity": 0.17694335,
        "subjectivity": 0.41758892
      },
      "dateAdded": "2022-09-05T22:14:09.787418-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Softvision"
        },
        {
          "affinity": 1,
          "text": "work"
        },
        {
          "affinity": 0.75,
          "text": "development"
        },
        {
          "affinity": 0.75,
          "text": "technology"
        },
        {
          "affinity": 0.5,
          "text": "Cognizant"
        }
      ],
      "tags": [
        {
          "text": "Softvision"
        },
        {
          "text": "work"
        },
        {
          "text": "development"
        },
        {
          "text": "technology"
        }
      ],
      "summary": "Cognizant Softvision is a leading software product engineering company creating impactful endtoend digital products and solutions that connect brands with customers Delivering sustainable innovation agility and a connection that inspires engagement and business transformation wersquove worked with some of the worldrsquos largest leading brandsCognizant Softvision has more than 5000 product design and engineering professionals across a network of global studios in 9 countries and five continents Learn how Cognizant Softvision designs experiences and engineers outcomes that result in memorable interactions at wwwcognizantsoftvisioncom or follow us WeAreSoftvisionRequirementsExperience with Java Spring Boot Micro Services JUnit JGroups Web Services RESTSOAP Cloud DevelopmentExperience with public cloud vendor offerings in Pivotal AWS Azure andor GCPExperience with SQL and NoSQL databases2+ years of React7+ years development experience in SDLC analysis documentation and clientfacing skillsProven track record of architecting and implementing enterprise solutions using current bestpractice patterns and methodologiesA strong curiosity about our clientsrsquo business needs coupled with a passion to stay on the cutting edgeAgile DevelopmentConsulting skills including team building flexibility and customer serviceAbility to demonstrate skills in analysis design implementation and development processThe ability to coach and mentor othersWhat We DoAs a services company we get to work a wide range of projects from low level IoT projects and blockchain to apps websites and backend services for household namesWork with team members all across the world and closely collaborate to ensure the things we work on are successfulCreate amazing user experiences for our clients and for ourselvesWhat We ProvideOpen culture opportunity to work on exciting technology and learn new thingsHealth benefits personal development budget and flexible work scheduleRemote workUnlimited PTO and 10 holidaysWe are a thriving Community of top technology talent that is globally connected We Engage Make Run and Evolve the technology that makes many brands that you know and love So letrsquos take this journey together No matter where you are on your digital career roadmap we can help you grow and have fun doing itCognizant Softvision is an Equal Opportunity Employer No 3rd Party Agency Candidates"
    },
    {
      "id":11,
      "title": "Sr. Java Developer Lead",
      "originalPostingUrl": "https://us62e2.dayforcehcm.com/CandidatePortal/en-US/fleetcor/Posting/View/16512?source=Built In",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/sr.-java-developer-lead-116360",
      "company": "FLEETCOR",
      "location": "Atlanta, GA",
      "postDate": "2022-09-05 2:20:02 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "sr.-java-developer-lead-116360",
      "sentiment": {
        "polarity": 0.18325269,
        "subjectivity": 0.43755454
      },
      "dateAdded": "2022-09-05T22:09:51.788939-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "FLEETCOR"
        },
        {
          "affinity": 0.6666667,
          "text": "development"
        },
        {
          "affinity": 0.6,
          "text": "team"
        },
        {
          "affinity": 0.46666667,
          "text": "Experience"
        },
        {
          "affinity": 0.46666667,
          "text": "experience"
        }
      ],
      "tags": [
        {
          "text": "FLEETCOR"
        },
        {
          "text": "development"
        },
        {
          "text": "team"
        }
      ],
      "summary": "Microsoft SQL Server  Experience working with NoSQL databases is a plus AWS DynamoDB MongoDB etc  Experience working with message processing systems or data streaming is a plus AWS SQS Apache Kafka etc  Familiarity with AWS Cloud technologies eg S3 autoscaling experience building resilient and scalable applications  Experience working with Kubernetes or OpenShift is a plus  Understanding of the concepts of SOLID TDD BDD and handson experience with automated testing frameworks such as Cucumber  Ability to work well with people from many different disciplines with varying degrees of technical experience is required  Excellent communication skills both oral and written with internal and external customers team members other teams and corporate functions and management  Ability to lead and coach others  Advanced technical and analytical skills required to diagnose isolate and resolve problems  Experience in FinTech industry a plus Professional Competencies  Possesses sustained energy to set and meet challenging objectives the ability to organize resources to achieve a standard of excellence in outcomes and monitor ongoing performance  The ability to effectively share ideas thoughts information and feelings with a diverse range of audiences to develop twoway understanding it includes speaking listening and written communication skills the ability to influence other towards a desired way of thinking or course of action and to secure agreement to achieve common goals through effective negotiation  Is open and receptive to appropriate change the ability to manage and shift priorities as required and to incorporate new approaches in support of changing organizational needs possesses confidence in challenging the status quo and providing input to change efforts  A desire to help or meet the needs of customers the ability to respond to changing needs of the customer while maintaining a high standard of quality and adhering to company policies standards practices and processes  Is able to establish and maintain cooperative relationships with customers and coworkers able to work cooperatively across organizational boundaries to achieve shared goals possesses an understanding of team dynamics and provides tangible contributions to teams fostering collaboration and an environment of mutual trust and respect  The ability to identify build and maintain formal and informal networks and productive relationships with both internal and external stakeholders it includes leveraging these contacts to influence positive outcomes for the business  Maintains a commitment to personal and professional development keeping abreast of current professional knowledge is personally committed to and actively works to continuously improve  Uses rigorous logic and methods to solve difficult problems with effective solutions able to think critically to recognize and anticipate a problem technical operational process organizational and to identify and implement the best solution in a timely manner  Establishes plans and manages resources to ensure work is completed efficiently on time and on budget  Interacts with others in a way that gives them confidence in ones motives and representations and those of the organization is seen as direct truthful keeps confidences promises and commitments acts in an honest and trustworthy manner based on personal accountability and moral conviction to do the right thing LIDR1 INDTECH About the Company FLEETCOR Technologies Inc FLEETCOR is a leading global provider of business payment solutions We help companies of all sizes control simplify and secure payment of various domestic and crossborder payables using specialized payment products We serve businesses partners merchants consumers and payment networks in North America Latin America Europe and Asia Pacific   28B Annual Revenue   800000 Directly Served Business Clients   9700  Leads the development team handson from the frontlines participates in Scrum ceremonies helps to remove roadblocks adheres to Agile practices  Proactively identifies system improvement opportunities embraces a culture of innovation and continuous improvement  Conducts technical research generating POCs for new technologies software components and tools documenting adoption path and usage and mentoring junior team members  Organizes troubleshooting discussions code fixes and rapid response to production issues  Reports to the Application Development Manager assisting with the team in accomplishing the larger crossteam project objectives Education Experience Bachelors degree in computer sciencerelated field or equivalent experience  Eight+ years experience in software development technologies Required Knowledge Skill Handson Team Lead architect and Java development experience using J2EE Spring framework Hibernate framework and REST API technologies  Handson coding experience interfacing with REST APIs Swagger consuming and providing REST APIs for internal external clients etc  Strong familiarity with Microservicebased application architecture  Experience working with SQL databases Experience working with one of the following databases is a plus Oracle PostgreSQL Software Development Team LeadThe Software Development Team Lead is a handson role responsible for leading the efforts of an agile team thats deeply engaged in design development and implementation of core parts of the FleetCor next generation billing system the Core Systems Transformation project CTX CTX is a highly visible and collaborative development effort involving multiple teams host systems and technologies You will be aiding in the adoption of testdriven development and participate in behaviordriven development designing using SOLID principles conducting code reviews and relying on automated testing to enhance the manual quality assurance and regression testing efforts You will regularly collaborate with stakeholders other agile teams and various operations groups serving as a team liaison and partner Your handson knowledge of design development coding and testing across various technology domains will be counted on to solve complex and missioncritical problemsMain Responsibilities Translates highlevel requirements into detailed technical designs leading technical discussions collaborating with other technologists architects and infrastructure experts  Ensures adherence of the team development efforts to business requirements architecture principles quality and security standards"
    },
    {
      "id":12,
      "title": "Senior Java Software Developer",
      "originalPostingUrl": "https://boards.greenhouse.io/callibrity/jobs/5852566002?gh_src=",
      "jobTransparencyUrl": "https://www.jobtransparency.com/JobPostings/DetailsBySlug/senior-java-software-developer-116358",
      "company": "Callibrity",
      "location": "Columbus, OH",
      "postDate": "2022-09-05 4:42:38 AM",
      "salary": "",
      "jobSource": "BuiltIn",
      "slug": "senior-java-software-developer-116358",
      "sentiment": {
        "polarity": 0.24784338,
        "subjectivity": 0.4696536
      },
      "dateAdded": "2022-09-05T22:09:41.303919-04:00",
      "keyPhrases": [
        {
          "affinity": 1,
          "text": "Callibrity"
        },
        {
          "affinity": 1,
          "text": "development"
        },
        {
          "affinity": 1,
          "text": "business"
        },
        {
          "affinity": 1,
          "text": "problems"
        },
        {
          "affinity": 1,
          "text": "Software"
        }
      ],
      "tags": [
        {
          "text": "Callibrity"
        },
        {
          "text": "development"
        },
        {
          "text": "business"
        },
        {
          "text": "problems"
        },
        {
          "text": "Software"
        }
      ],
      "summary": "This role is virtual remote based but must works on US Eastern Time working hours Strongly prefer candidates in Midwestern and Eastern Southeastern US cities Will not consider nonUS based candidatesCallibrity is a developer owned and managed custom software development consulting company that is dedicated to creating quality software using modern technologies and adding unquestionable business value to companies across multiple industries and verticals We are problem solverspeople who like a challenge and enjoy working with modern tech stacks We offer an incredibly collaborative culture and enjoy solving complex problems with our clients If you are looking for a company where you can grow in your career and that values people transparency and flexibility we would like to talk to youAs a Senior Java Software Developer you are a leader by example you are a subject matter expert and you help lead strategic technical direction You will get to interact with key client stakeholders on a regular basis and use your experience to prove business ROI through innovative greenfield technology solutions Senior Software Developers typically have longer tenures and higher retention rates with Callibrity than other companies because the work is challenging and rewarding we have a strong engineering culture and we invest in the best peopleResponsibilitiesAre trusted advisors to our clients and seen as thought leaders in the tech industryAre keenly aware of big picture business problems and goals and capable of a leadership roleMentor train and upskill your Callibrity peers and clientsrsquo teamsCan solve a wide variety of problems with the appropriate solution drawn from a large subsetCommunicate complex ideas effectively both verbally and in writingProactively identify problems challenges and issues and recommend the best possible solutionDemonstrate mastery and cable to teach software development best practices Agile DevOps Test Automation CICD TDD to othersStay ahead of the curve by exploring new technologies including AI Machine Learning Cloud and IoTThrive in an environment where there is close interaction among different roles and teamsAre admired by the client as someone they can count on regardless of title or seniorityRequirements5+ years of fullstack enterprise Java development experienceProfessional experience in corporate Information Technology andor ConsultingExperience leading a team of Software Developers and Associate Software Developers is a plusMentorship and pair programming experienceFouryear degree or successful completion of respected developer bootcampaccelerator or extensive mentorship programExperience with Git GitHub Spring Boot Bootstrap GradleMaven or other similar tool is preferredExperience with SQL JavaScript Angular React Version Control and Agile is preferredDesired experience with Kafka and Jenkins is a plusCloud experience with AWS Azure andor Google Cloud Platform preferredExperience with Docker Kubernetes andor developing applications for a major public cloud provider is a plusSuccessfully solve Callibrityrsquos HackerRank and Code Pairing ChallengesInterpersonal skills Influencer professionalism and accountability passion for learning us not them mentality shared responsibilityInterest and enthusiasm for learning and growing in your careerEmbodies Callibrityrsquos Core ValuesMust be authorized to work in the United States without sponsorshipBenefits of Being a Callibrity ConsultantHealthVisionDental insurance effective first day of employment401k match vested immediatelyProfit Sharing BonusAnnual professional development stipend 1500One time bonus for remote office set upPaid parental leavePaid bench timePaid flex time for training blogging speaking engagements and thought leadershipPaid time off for vacation 25 weeks depending on level holidays 8Competitive industry salaryLunch and learnsTeam building eventsSmall company feel with the resources of a sustainable and proven business modelHigh employee retention and satisfaction One of Cincinnatirsquos Best Places to WorkWorklife balance Callibrity is based in Cincinnati Ohio"
    }
  ];

  // If the index 'movies' does not exist, Meilisearch creates it when you first add the documents.
  var task = await index.addDocuments(documents); // => { "uid": 0 }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage()
    );
  }
}


