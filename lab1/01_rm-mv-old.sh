#!/bin/sh

rm ${1:-.}/*.old
rename 's/$/.old/' ${1:-.}/*
