FROM registry.cn-shanghai.aliyuncs.com/jflab/base_images:v2

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=utf-8

COPY requirements/ /tmp/requirements

RUN pip install -U pip && \
    pip install --no-cache-dir -r /tmp/requirements/dev.txt
COPY . /src
ENV PATH "$PATH:/src/scripts"

WORKDIR /src
USER app

CMD ["sh",  "./scripts/start-dev.sh"]