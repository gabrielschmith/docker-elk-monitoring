#!/bin/bash

# Search Guard must be initialized after Elasticsearch is started
sleep 60 && bin/init_sg.sh
