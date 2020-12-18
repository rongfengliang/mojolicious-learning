FROM perl:5.26
RUN cpan install  Mojolicious::Lite \
    && mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY app.pl /usr/src/app/
ENTRYPOINT [ "perl","/usr/src/app/app.pl","daemon","-m","production","-l","http://*:8080" ]