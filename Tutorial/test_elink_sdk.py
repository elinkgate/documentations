from elink_sdk import elink
from time import sleep

if __name__ == '__main__':
    """
    the script will create a new connection to ELinkKVM at ip address : 10.42.0.2
    """
    obj = elink.newConnection('10.42.0.2', 'admin', '')
    sleep(4)
    exit(0)
