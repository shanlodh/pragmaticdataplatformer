**AI Legislation is Coming:** Amidst the AI excitement a sobering thought is that currently there is no enforceable regulatory and legal framework for AI-enabled products and services across Europe and the US. The EU Artificial Intelligence (AI) Act would be one of the first pieces of legislation in these regions that collectively [account for a third of global GDP](https://www.worldeconomics.com/Share-of-Global-GDP/United%20States.aspx). The EU AI Act, like GDPR, will cover any AI system affecting EU citizens irrespective of where these systems are developed or hosted. So whether you are building, financing or integrating AI into your products and services, if these AI endpoints reach any EU jurisdiction or citizen you need to be aware of the broad provisions of the EU AI Act to ensure your business model is not upended when the Act becomes law. Non-compliance with the EU AI Act can incur fines of up to EUR 30 million or up to 6 % of worldwide annual company turnover, whichever is higher. Ethical and fair AI requires a symbiotic relationship between technology and regulation with both tracks about to witness unprecedented innovation and opportunities 

This article provides an overview of the EU legislative framework, describes the EU AI Act within this framework with a focus on auditable dimensions of high-risk (that may include general purpose) AI systems and outlines the timeline to legislation and compliance. : 

- EU legislative framework: the [EU decision making process](https://european-union.europa.eu/institutions-law-budget/decision-making-process/legislation_en) involves three main institutions: (a) European Parliament represents EU citizens, (b) Council of the European Union represents EU governments and (c) European Commission represents the EU’s overall interests and is the only institution empowered to initiate legislation. The process to draft, amend, consult and, eventually, legislate across these bodies is described [on the European Parliament's Legislative powers page](https://www.europarl.europa.eu/about-parliament/en/powers-and-procedures/legislative-powers). It ensures checks and balances between executive and legislative wings of governance with informal tripartite meetings, ([trilogue](https://www.europarl.europa.eu/thinktank/en/document/EPRS_BRI(2021)690614)), to speed the legislative process

- European Commission (EC) proposals for the EU AI Act (23 April, 2021): As legislation initiator, the [EC proposals](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:52021PC0206) cover following key areas:
  - **defining AI systems:** includes ML (supervised, unsupervised, RL, DL), logic and knowledge based approaches (representation learning, expert systems), statistical approaches, Bayesian estimation, search and optimisation methods 
  - **adopting a risk-based approach to AI**:
    - unacceptable risks: covers children, persons with disabilities, profiling, real-time biometric id in public spaces (with limited exceptions)
    - high risks: biometric id, IoT for critical infrastructure, access to and assessment in education and training, recruitment, promotion and termination of employment, provision of public services, credit scores, dispatch of first responders, assessment of (re)offending risks and polygraphs, migration, asylum and border controls, judicial assistance 
    - low or minimal risks: all other AI  
  - **requirements for high-risk AI systems:** covering data governance, documentation and recording keeping, transparency  and provision of information to users, human oversight, robustness, accuracy and security. It also covers the principle of horizontality (synchronisation with related legislation like GDPR), independent third party assessments (EU AI Board) and a EU wide database of high-risk AI systems. All businesses developing AI enabled products and services should review thoroughly [Annex IV (Technical Documentation) and Annex V (Declaration of Conformity)](https://artificialintelligenceact.eu/annexes/) detailing auditable dimensions of AI enabled systems. Even if your AI does not come under the Act these sections provide an excellent blueprint for AI platform owners on constructing robust, compliant AI platforms 
  - **requirements for minimal-risk AI systems:** that companies voluntarily follow a code-of-conduct covering the main tenets of AI systems as described above for high-risk systems 
  - **measures in support of innovation such as establishing AI regulatory sandboxes** 
  - **future scope:** the EC proposal mentions that it " ... strengthens significantly the Union’s role to help shape global norms and standards and promote trustworthy AI ...", key reason to assess this Act for broader impact 

- Council of the EU feedback on EU AI Act proposals: On 25 November, 2022 the Council of the EU released it's feedback (called 'General approach') on the EU AI Act proposal. Full document link [here](https://data.consilium.europa.eu/doc/document/ST-14954-2022-INIT/en/pdf) and it addresses all proposed sections described above. A summary of the EU Council's review is [here](https://www.consilium.europa.eu/en/press/press-releases/2022/12/06/artificial-intelligence-act-council-calls-for-promoting-safe-ai-that-respects-fundamental-rights/) and one worth calling out is with regards to general purpose (GP) AI "... where there may be circumstances where general purpose AI technology gets integrated into another system which may become high-risk". As GP AI powers current AI boom this is an extremely important observation to be aware of and follow to legislation to understand what it means for any AI providers looking to leverage ChatGPT, GPT-4 et al in their business model 

- European Parliament and the EU AI Act proposals: the Parliament has not produced their review yet on the EU AI Act proposals. The parliamentary discussions are being led by two committees and it ["... aims to vote on the text sometime in the first quarter of 2023."](https://iapp.org/news/a/a-look-at-european-parliaments-ai-act-negotiations/)

- **EU AI Act next steps, timings:** Once the EU Parliament review is submitted the trilogue process ensues leading to eventual legislation. Calling legislative deadlines is tricky but several commentators (e.g., [here](https://www.arnoldporter.com/en/perspectives/advisories/2023/01/europe-ai-act-moves-forward)) expect the EU AI Act to pass into law later in 2023. There is usually a two-year grace period ([*vacatio legis*](https://www.responsible.ai/post/eu-ai-act-explained)) from the passage of law to help relevant parties prepare for compliance 

Following is a stylised outline [ERD in mermaid.js](https://mermaid.js.org/syntax/entityRelationshipDiagram.html) of the overall process and its current state. The [source code](https://raw.githubusercontent.com/shanlodh/pragmaticdataplatformer/main/20230318_AIRegulation/AIRegulation.md) is under the [MIT license](https://en.wikipedia.org/wiki/MIT_License)   

### **EU AI Act - Outline (as of March, 2023)**

```mermaid

erDiagram

    "European Commission" {
        role    legislation_initiation "represents EU's overall interests"
        status  proposals_published "published EU AI Act proposals 23 Apr 2021"
    }
    "EU AI Act Proposals"{
        typeAI algorithm_types "(un)supervised, RL, DL, statistical, Bayesian, search, optimisation, expert systems, et al"
        typeAIRisk algorithm_risk_types "unacceptable, high, low/minimal"
        highRiskAI  requirements "technical documentation, horizontality (GDPR), EU AI Board, high-risk AI database"
        minimalRiskAI  requirements "voluntary code of conduct"
        innovationAccelerators    proposed "establish AI regulatory sandboxes" 
        futureScope     desired "shape global norms and standards and promote trustworthy AI"
    }
    "Council of the EU"{
        role legislation_review_signoff "represents EU governments"
        status feedback_released "released General approach 25 Nov 2022"
        feedback general_purpose_AI "where general purpose AI technology gets integrated ... may become high-risk"
    }
    "European Parliament"{
        role legislation_review_signoff "represents EU citizens"
        status  pending "being led by two committees" 
        feedback pending
    }
    "EU AI Act Legislation" {
        expectedDate late_2023   "see links in post" 
        gracePeriod  two_years   "two years from date of legislation" 
        nonCompliance penalties "up to greater of EUR 30 million or 6 % of total worldwide turnover"
    }
    
    "European Commission" ||--|| "EU AI Act Proposals" :"proposed"
    "EU AI Act Proposals" ||--|| "Council of the EU" : "being reviewed by"
    "EU AI Act Proposals" ||--|| "European Parliament" : "being reviewed by"
    "Council of the EU" ||--|| "EU AI Act Legislation" :"upon acceptance"
    "European Parliament" ||--|| "EU AI Act Legislation" : "upon acceptance"
  
```

**Views strictly personal** 