FROM andrey01/taiga
RUN pip3 install taiga-contrib-ldap-auth

# Copy template seeds
COPY seeds/*.tmpl /tmp/

COPY launch /
CMD /launch
