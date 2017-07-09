#!/bin/bash

vagrant halt
vagrant destroy -f
vagrant box update
vagrant up
