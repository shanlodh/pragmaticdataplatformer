Retrieval Augmented Generation (RAG) has become the go-to LLM exploration and deployment use-case for several enterprises. There are also several great write-ups on RAG implementations and strategies but what I have yet to encounter is a unified Directed Acyclic Graph (DAG) for RAG programmes highlighting the design choices and options at each stage from conception of the business use case to actual installation 

```mermaid

graph TD
  A[OpenAI LLM] --> B[LangChain]
  B --> C[Chat Models]
  B --> D[Prompt Templates]
  B --> E[LLMs]
  B --> F[Embedding Models]
  B --> G[Document Loaders]
  B --> H[Document Transformers]
  B --> I[Vector Stores]
  B --> J[Retrievers]
  B --> K[Tools and Toolkits]
  B --> L[Memory and Graphs]
  B --> M[Callbacks]
  B --> N[Chat Loaders]
  B --> O[Adapters]
  B --> P[Stores]
  C --> Q[ChatPromptTemplate]
  D --> R[PromptTemplate]

  subgraph LangChain Libraries
    Q --> S[LangChain Python Library]
    R --> T[LangChain JavaScript Library]
  end

  subgraph Off-the-shelf Chains
    S --> U[Chain 1]
    S --> V[Chain 2]
    T --> W[Chain 3]
    T --> X[Chain 4]
  end

  subgraph LangSmith
    W --> Y[Debugging]
    W --> Z[Testing]
    W --> AA[Evaluation]
    W --> AB[Monitoring]
  end

  subgraph Streamlit App
    P --> AC[User Interface]
    AC --> AD[Display Responses]
  end

  ```