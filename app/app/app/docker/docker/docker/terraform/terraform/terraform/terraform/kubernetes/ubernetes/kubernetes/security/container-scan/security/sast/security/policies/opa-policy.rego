package kubernetes.security

deny[msg] {
  input.spec.containers[_].securityContext.runAsRoot == true
  msg := "Containers must not run as root"
}
