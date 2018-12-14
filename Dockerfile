FROM nexus.ravago.com:5000/luc/akamai-cli:latest
COPY . .
ENTRYPOINT ["/usr/local/bin/akamai"]
# to parameterize
CMD ["pipeline", "promote", "nonprod",  "--network", "staging",  "--emails", "luc.douwen@ravago.com"]
