# Hostinger DNS setup for cohort5pod10.online

## 1. Register the domain

Ensure **cohort5pod10.online** is registered in your Hostinger account.

## 2. Point Hostinger to AWS Route53

After `terraform apply` on **Pod10-infrastructure-main**, get nameservers:

```bash
terraform output route53_name_servers
```

In **Hostinger** → **Domains** → **cohort5pod10.online** → **DNS / Nameservers**:

1. Choose **Custom nameservers** (not Hostinger default DNS).
2. Enter all four Route53 nameservers (example format):
   - `ns-xxx.awsdns-xx.com`
   - `ns-xxx.awsdns-xx.net`
   - `ns-xxx.awsdns-xx.org`
   - `ns-xxx.awsdns-xx.co.uk`

Save and wait for propagation (often 15 minutes–48 hours).

## 3. What AWS creates automatically (Terraform)

| Record | Points to |
|--------|-----------|
| `bank.cohort5pod10.online` | Nginx ingress load balancer |
| `bankapi.cohort5pod10.online` | Nginx ingress load balancer |
| `argocd.cohort5pod10.online` | Nginx ingress load balancer |

## 4. App URLs after DNS propagates

| Service | URL |
|---------|-----|
| Frontend | https://bank.cohort5pod10.online |
| Backend API | https://bankapi.cohort5pod10.online |
| Swagger UI | https://bankapi.cohort5pod10.online/swagger-ui/index.html |
| Argo CD | https://argocd.cohort5pod10.online |

## 5. Old domain (gwinseapptest.online)

You can remove the old nameservers from Hostinger for the previous domain or leave it unused. Update bookmarks and CI to the new URLs only.

## 6. Verify DNS

```bash
nslookup bank.cohort5pod10.online 8.8.8.8
nslookup bankapi.cohort5pod10.online 8.8.8.8
```

TLS certificates will be re-issued by cert-manager for the new hostnames after ingresses sync.
