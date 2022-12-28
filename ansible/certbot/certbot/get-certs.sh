#!/usr/bin/env bash

set -x

certbot certonly \
	--quiet \
	--agree-tos \
	--email jeremy@gryffindor.house \
	--dns-linode \
	--dns-linode-credentials /root/certbot/credentials.ini \
	--dns-linode-propagation-seconds 1000 \
	-d "*.blackbeltballerina.com"
