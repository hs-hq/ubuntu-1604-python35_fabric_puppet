FROM holbertonschool/ubuntu-1604-python35
MAINTAINER Jesse Hedden <jesse.hedden@holbertonschool.com>

# Puppet
RUN apt-get install -y puppet-common
RUN puppet module install puppetlabs-stdlib

# Fabric
RUN apt-get install -y libffi-dev libssl-dev build-essential python3-dev libpython-dev
RUN pip3 install cryptography==2.4.2
RUN pip3 install fabric
RUN pip3 install --upgrade fabric
RUN pip3 install requests

ADD run.sh /etc/sandbox_run.sh
RUN chmod u+x /etc/sandbox_run.sh

# start run!
CMD ["./etc/sandbox_run.sh"]
