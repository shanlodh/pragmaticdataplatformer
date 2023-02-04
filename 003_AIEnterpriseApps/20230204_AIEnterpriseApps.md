# AI Applications for Enterprises

The ChatGPT UI is not *your* enterprise application, it is *OpenAI's* enterprise application. As a business leader if you truly want your organisation to ride the AI tsunami an off the shelf, prompt driven AI adds little business value. You also need to think carefully about security and governance of the underlying AI models and data 

This note addresses some of the main considerations for enterprise scale AI/LLM deployments, customisation and governance: 

- **API first:** UI, text-box are interfaces for end-users but to produce that AI enabled customer journey businesses must  go API first. This enables the AI-driven functionality to integrate with main business application(s) in a [service-mesh](https://www.mulesoft.com/resources/api/what-is-a-service-mesh) topology. To achieve this use [Docker](https://hub.docker.com/) to [containerise](https://code.visualstudio.com/docs/containers/quickstart-python) your ["best"](https://en.wikipedia.org/wiki/Confusion_matrix) AI model, push that Docker image to a container registry like [DockerHub](https://hub.docker.com/), pull this image into your CI pipeline ([GitHub Actions](https://docs.github.com/en/actions)) and upon all [tests and stage-gates](https://www.vtestcorp.com/blog/practical-guide-on-continuous-integration-for-automation-tests/) passing, CD the model artefact to defined HTTPS end-points (with [KEDA](https://keda.sh/) autoscaling if required) as per your [deployment strategies](https://www.harness.io/blog/blue-green-canary-deployment-strategies) (rolling, blue-green, canary). Less well known than it's UI but the [OpenAI Python Library](https://github.com/openai/openai-python) is the SDK wrapper around the underlying REST API that renders the UI   

- **Product differentiation with AI:** Even an AI/LLM microservice hosting open-source models without injection of business domain or customers' needs has limited value. True competitive advantage arises from augmenting these models with business context to create domain specific agents. For this, you could download a base LLM model from [Hugging Face](https://huggingface.co/models?pipeline_tag=text-generation&sort=downloads) and then and use a [SentenceTransformer](https://www.sbert.net/docs/training/overview.html) to augment it with company's training data but this does have significant engineering overheads. A quicker GTM strategy would be to use a LLM/transformer/AI-as-a-service vendor. Below image is from [the startup co:here's Classify product](https://cohere.ai/classify) which is being used for sentiment analysis, intent recognition, content moderation. [Aisera's AI Service Management](https://aisera.com/platform/) provides a similar functionality for support tickets. Since ChatGPT's launch domain specific AI-as-a-service has become one of the hottest areas of tech and VC funding with new players appearing each week! 

- **Identity and access management:**

- **Data governance:**

<p align="center">
  <img src="https://github.com/shanlodh/pragmaticdataplatformer/blob/main/003_AIEnterpriseApps/Images/CoHereClassify.jpg" />
</p>