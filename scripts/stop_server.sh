#!/bin/bash

if systemctl is-active --quiet apache2; then
	systemctl stop apache2
fi
