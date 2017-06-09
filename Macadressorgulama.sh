#!/bin/bash
echo Please enter the mac adress
read mac
curl http://api.macvendors.com/$mac
