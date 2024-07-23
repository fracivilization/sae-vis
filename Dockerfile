FROM python:3.11.9

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH /root/.local/bin:$PATH
RUN poetry config virtualenvs.in-project true
RUN git config --global --add safe.directory /myapp
WORKDIR /myapp
# COPY pyproject.toml /myapp/
# RUN huggingface-cli login --token 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
