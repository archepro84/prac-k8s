#!/bin/bash

# application.yaml 파일을 이용하여 쿠버네티스 어플리케이션을 배포한다.
kubectl apply -f application.yaml -n argocd
