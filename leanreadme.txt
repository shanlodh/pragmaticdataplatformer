In 2022 the game evolved for data platform teams. As we face first stagflation (slowing growth, rising inflation) since widespread migration of data platforms to public cloud, it is no longer enough to just move data around. Data platform teams need to do this at lowest possible costs share our knowledge of public cloud providers with the wider organisation to drive business value



Here are five suggestions towards a lean data platform (examples use Azure, similar exist for others): 



Modernise your apps: to take full advantage of public cloud, companies must go serverless, scale horizontally and become event-driven as much as possible. Continuing to write apps the on-prem way leaves money on the table. For example, see Forrester study on 228% RoI from PaaS oriented app modernisation or listen to The Azure Podcast, Episode 444, where 8 mins in Microsoft CSA Mark Eisenberg makes a great point about "... going into cloud to save money alone and not changing your architecture is a non-starter, so costs are getting out of control ..." 



Instrument and observe: while observability gets increasing mentions, there is no observability without instrumentation. It should cover not only pipelines or DQ but the overall platform itself. Here benefit of public cloud is that providers offer comprehensive OOB instrumentation and you can add bespoke ones using context managers like Azure Resource Manager. Leverage the observability platform of Azure Monitor to get these details into your Azure Log Analytics Workspace and then run relevant KQL queries over the logs 



Make cost management a team sport: cost management API such as Azure/Microsoft Cost Management (also connects to AWS) is our new best friend for 2023. Know it thoroughly, and depending on your company's charge back policies, develop a consistent tagging policy so functional areas are aware of their public cloud costs. You can also use the Azure Cost Management connector in Power BI Desktop to share real-time cost trends within the company, thus making cost management a true team sport  



Seek professional help: as data platform grows, you may find certain services contribute large share of costs. Beyond resources from cloud providers themselves like the Microsoft Azure Well Architected Framework and your own analysis, at a certain cost level seek specialised help for parts of your stack. E.g., for Snowflake costs consider Bluesky or for Postgres and MySQL look at OtterTune for AI powered database optimisations  



Check tax laws for cost optimisations: depending on your jurisdiction, work with relevant teams to explore if any public cloud data platform build costs are eligible for capitalisation and depreciation. There may be other options, general principle being that lean data platform teams are always business first and instigates, participates in such conversations to lower costs and drive business value 



Full-article, with links, here: leandataplatform/README.md at main · shanlodh/leandataplatform (github.com)



***Views strictly personal***