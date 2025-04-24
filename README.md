# 🚀 Oracle & MySQL to AWS Aurora Migration | CDW Project

**Author:** Manochitra Loganathan  
**Role:** Data Operations Manager  
**Client:** CDW Technologies  
**Location:** India → NZ (Remote Transition Project)

---

## 🧭 Project Overview

This project demonstrates two real-world cloud migrations from on-prem to AWS Aurora:

1. **Oracle to PostgreSQL Aurora**
2. **MySQL to Aurora MySQL**

The migrations focused on minimizing downtime, maintaining data integrity, and improving scalability across CDW’s distributed systems.

---

## 🔁 Migration Summaries

### 1. Oracle → PostgreSQL (Aurora)
- 🔄 Schema transformation with datatype mapping
- 📤 Migration via AWS DMS and pgloader
- 🧪 Data validation using row count + hash-based checks
- ⚙️ Performance tuning post-migration (indexes, connection pooling)

### 2. MySQL → Aurora MySQL
- 🔁 Planned via AWS DMS with rollback strategies
- ⏱️ Downtime managed via replication sync windows
- 📊 Monitoring using custom shell + SQL log metrics

---

## 🛠️ Tech Stack

- Oracle, PostgreSQL, MySQL
- AWS Aurora (PostgreSQL & MySQL), AWS DMS
- pgloader, Bash, Python
- Power BI (for validation dashboards)

---

## 📂 Folder Structure

```bash
oracle-mysql-to-aurora-migration-cdw/
├── scripts/
│   ├── oracle_pgloader_template.load
│   ├── mysql_to_aurora_dms_config.json
│   └── data_validation_hash_check.sql
├── diagrams/
│   └── aurora_migration_architecture.png
├── rollback/
│   └── rollback_plan_template.md
└── README.md
```

---

## 📈 Outcomes

- Reduced operational DB cost by 40% with Aurora PostgreSQL
- Achieved seamless migration with <5 min downtime window
- Created audit trail and rollback SOPs as part of compliance

---

## 📫 Let’s Connect

Feel free to explore the repo or connect with me on [LinkedIn](https://linkedin.com/in/manochitraloganathan) to discuss enterprise cloud migrations, database modernization, or real-time replication.
