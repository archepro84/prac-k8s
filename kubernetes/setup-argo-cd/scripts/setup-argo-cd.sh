#!/bin/bash

# [Mac] Argo CD CLI 설치
brew install argocd

# Argo CD를 구성하기 위한 Namespace 생성
kubectl create namespace argocd

# Argo CD를 Kubernetes에 배포
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# argocd-server의 type을 LoadBalancer로 변경하여, 외부에서 접근 가능하도록 설정
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'

# Argo CD를 포트 포워딩 하여 8080 Port로 접속할 수 있도록 설정
kubectl port-forward svc/argocd-server -n argocd 8080:443

# Argo CD Web UI 접속시 admin 패스워드 확인한다.
argocd admin initial-password -n argocd

# Argo CD CLI를 이용하여 Argo CD 로그인
argocd login localhost:8080

# Argo CD 어드민의 비밀번호 변경
argocd account update-password