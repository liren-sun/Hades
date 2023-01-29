FROM registry.cn-shanghai.aliyuncs.com/jflab/base_images:v1

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=utf-8

COPY . /src
ENV PATH "$PATH:/src/scripts"

WORKDIR /src
USER app

CMD ["sh",  "./scripts/start-dev.sh"]