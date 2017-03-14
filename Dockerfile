FROM andrey01/taiga
MAINTAINER "Damien MARIAGE <damien.mariage@groupeonepoint.com>"
RUN virtualenv -p /usr/bin/python3.4 venvtaiga \
    && . venvtaiga/bin/activate \
    && pip3 install taiga-contrib-ldap-auth \
    && deactivate

# Copy template seeds
COPY seeds/*.tmpl /tmp/

COPY launch /
CMD /launch
