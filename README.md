# Interactive Story Generator

This project is an interactive story generator that uses the HuggingFace Transformers library integrated with PyTorch. It leverages an OPT model with 350M parameters as a generator, a BERT model trained for multiple choice classification tasks as a ranker, and a RoBERTa model trained on sentiment analysis tasks as a model guider. This architecture is based on this [research paper](https://www.frontiersin.org/articles/10.3389/fcomp.2021.674333/full#h10). The generator is fine-tuned on a corpus of horror stories to produce horror-themed story continuations.

This project is part of the professional certification Machine Learning Engineer (Concepteur Développeur en Science des données) and represents bloc 6 of the certification titled: "Lead a Data Project".

The deployed application can be found [here](http://ec2-13-38-121-134.eu-west-3.compute.amazonaws.com//)<br>
(Subject to availability of the remote server.)

The slide deck of the project can be found [here](https://docs.google.com/presentation/d/1szg09ewC6zDsKlA_djPe_GvQUZgQhXgxdJKAojpxr10/edit?usp=sharing)

The Presentation of our project can be found [here](https://www.youtube.com/live/16IlbCWOvUU?feature=share&t=3778)

The link to the vidyard video is [here](https://share.vidyard.com/watch/TS8KG9H1ZCPNZrmRBxtVbw?)
## Project Structure

This project consists of several components:
- `collaborative-story-app`: Contains the docker-compose file for running the entire application stack and the EC2 commands for running the app on an Amazon EC2 instance.

    - `01-deep-learning`: Contains Jupyter notebooks for preprocessing the horror story data and fine-tuning the generator model.

    - `02-generator-endpoint`: Contains the FastAPI application for the generator model, including the Dockerfile, build script, run script, and requirements file.

    - `03-ranker-endpoint`: Contains the FastAPI application for the ranker model, including the Dockerfile, build script, run script, and requirements file.

    - `04-sentiment-endpoint`: Contains the FastAPI application for the sentiment analysis model, including the Dockerfile, build script, run script, and requirements file.

    - `05-story-app`: Contains the Streamlit application for the interactive story generator interface, including the Dockerfile, build script, run script, and requirements file.

## Running the Application

To run the application, navigate to the `branching-story-app` directory and run the docker-compose file:

```bash
docker-compose up

```

## Interacting with the App

The application is presented through a Streamlit web app UI where the user can either choose or write their own story start. Once the model generates a continuation, the user can write their own part and back and forth, creating a collaborative interactive story.

## Deployment

The application is containerized with Docker for easy deployment and scalability, and it's designed to be deployed on an Amazon EC2 instance.

To deploy the application on an Amazon EC2 instance, execute the commands in the ec2-commands.sh file.
You need to access your EC2 instance via SSH (make sure to execute the commands in the terminal where your key-pair.pem file resides).

## Team

This project was created with the help and collaboration of:
- Morgane Berrod
- Serdar Cekinmez
- Lionel Shaghlil

## Acknowledgments

A big thank you to Morgane Berrod, Serdar Cekinmez, and Lionel Shaghlil for their contributions and collaboration on this project.