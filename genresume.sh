#!/bin/bash

# 模板变量
title="裴灵晖的个人简历"
author="裴灵晖"
date="2017-02-26"
lang="zh-CN"

pandoc -s -S resume.md -o resume.html -t html5 --self-contained --section-divs --template=resume-template.html -T $title -c css/main.css  \
    --variable lang=$lang --variable author-meta=$author --variable date-meta=$date

echo 'Generate resume.html success!'
