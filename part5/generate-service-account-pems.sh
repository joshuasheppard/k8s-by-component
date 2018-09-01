# Based on https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/04-certificate-authority.md

# Generate ca files
# * ca-config.json
# * ca-csr.json
# * ca-key.pem
# * ca.pem

cat > ca-config.json <<EOF
{
  "signing": {
    "default": {
      "expiry": "8760h"
    },
    "profiles": {
      "kubernetes": {
        "usages": ["signing", "key encipherment", "server auth", "client auth"],
        "expiry": "8760h"
      }
    }
  }
}
EOF

cat > ca-csr.json <<EOF
{
  "CN": "Kubernetes",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Minneapolis",
      "O": "Kubernetes",
      "OU": "CA",
      "ST": "Minnesota"
    }
  ]
}
EOF

./go/bin/cfssl gencert -initca ca-csr.json | ./go/bin/cfssljson -bare ca

# Generate service account files
# * service-account-csr.json
# * service-account-key.pem
# * service-account.pem

cat > service-account-csr.json <<EOF
{
  "CN": "service-accounts",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Minneapolis",
      "O": "Kubernetes",
      "OU": "Dissecting Kubernetes",
      "ST": "Minnesota"
    }
  ]
}
EOF

./go/bin/cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -profile=kubernetes \
  service-account-csr.json | ./go/bin/cfssljson -bare service-account

