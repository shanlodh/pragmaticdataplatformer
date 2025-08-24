If AI Architecture was a Swiss Army knife …
… then selecting its right blade for any task is critical

During this period of rapid innovation in AI, mapping business objectives to architecture options and evaluating trade-offs is overwhelming. In this project I describe five GenAI solutions I considered for one clear objective, and how I chose between them.

My objective (and one many readers will relate to) is:
Find and summarise AI-related news articles from the provided RSS feeds, ensuring concise summaries that clearly communicate how AI is applied in industry today

In my write-up I define, describe and evaluate five AI architectures. Defining these terms is important, as some get mixed up (e.g. AI Agent vs Agentic AI):

Task: A simple ChatGPT PLUS Task schedule that runs the prompt daily and emails the result—quick, but not easily saved or integrated into a knowledge base.
Chain: A linear sequence of LLM calls (via LangChain) using helper functions to fetch, filter and summarise articles. Stateless and deterministic, but limited for conditional logic.
Workflow: A LangGraph StateGraph that manages state and conditional edges, reusing the same helper functions. Declarative, handles retries and human-in-the-loop, but each node and edge must be defined manually.
AI Agent: A ReAct-style agent (LangGraph tools wrapped around helper functions) that selects tools dynamically based on function docstrings. Offers autonomy and flexibility, but additional reasoning steps translate to higher token usage and cost.
Agentic AI: A multi-agent collaboration (LangGraph Swarm) where specialised agents hand off control. Overkill for simple tasks, but illustrates how complex systems decompose goals, share context and persist state.

Spoiler: the decision came down to Workflow vs AI Agent. For this use-case, Workflow was chosen—up to 5× cheaper with identical outputs.

The project is written in Python using OpenAI (Plus and API plans), LangChain, LangGraph, LangGraph Swarm and Pydantic for data modelling. While other frameworks exist, these architecture patterns are industry standard—from a simple UI-based solution to a full multi-agent system.

Key learnings:

Good data modelling (Pydantic) is vital for AI architectures and must be a collaboration between business and engineering.

A robust test-data suite enables meaningful evaluation of architectures, models and prompts. Business and technical teams should define “good” and “bad” outcomes together.

Much of the code was reusable between Chain, Workflow, AI Agent and Agentic AI, reinforcing that AI engineering is still software engineering—building on established disciplines accelerates innovation.

Full write-up, with further extension ideas, here:
https://shanlodh.github.io/ai-news-updates/