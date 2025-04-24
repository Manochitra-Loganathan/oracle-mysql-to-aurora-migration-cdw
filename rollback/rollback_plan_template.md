# 🔁 Rollback Plan | Oracle & MySQL to AWS Aurora Migration

**Prepared By:** Manochitra Loganathan  
**Context:** Cloud Migration Projects at CDW Technologies

---

## 📋 Rollback Scenarios

| Scenario | Trigger | Rollback Action |
|:--------|:--------|:----------------|
| Schema mismatch | Table definition errors found | Restore schema from pre-migration backup |
| Data validation failure | >1% hash mismatches | Restore data from backup, halt cutover |
| Replication lag or break | Lag exceeds threshold or stops | Re-initialize DMS tasks and re-sync |
| Connectivity issues | AWS endpoint issues | Failback to on-prem temporarily |
| Performance degradation | >20% query slowdown | Analyze slow queries, rollback patches if needed |

---

## 🛡️ Pre-Migration Backup Steps

- 📦 Oracle full export (`expdp`)  
- 📦 MySQL full logical backup (`mysqldump`)  
- 📂 Backup stored securely in S3 pre-staged buckets

---

## 🔄 Rollback Procedures

### 1. Oracle to Aurora PostgreSQL

- Recreate original schema using `expdp` backup
- Restore critical data tables manually or via DMS "full load only" mode
- Verify using row counts, hash checks
- Gradual user switch back to on-prem Oracle

### 2. MySQL to Aurora MySQL

- Restore MySQL dump into source environment
- Restart replication from last successful transaction ID (GTID)
- Validate primary key consistency and foreign key integrity

---

## 📝 Notes

- Downtime window contingency plans defined (5 min, 15 min, 1 hr fallback scenarios)
- Critical operations team informed at each rollback stage
- Monitoring active during rollback via Splunk/Dynatrace

---

## 📫 Questions?

Reach out to Manochitra Loganathan | mano.chitra4@gmail.com
