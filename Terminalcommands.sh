PS C:\Users\oakto\OneDrive\Documents\TerraForm\AWS_Relational_DatabseService> terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:  
  + create

Terraform will perform the following actions:

  # aws_db_instance.myRDS will be created
  + resource "aws_db_instance" "myRDS" {
      + address                               = (known after apply)
      + allocated_storage                     = 20
      + apply_immediately                     = false
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_target                         = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_name                               = "myDB"
      + db_subnet_group_name                  = (known after apply)
      + dedicated_log_volume                  = false
      + delete_automated_backups              = true
      + domain_fqdn                           = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "mariadb"
      + engine_lifecycle_support              = (known after apply)
      + engine_version                        = "10.11"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = "my-first-rds"
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t3.micro"
      + iops                                  = (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + listener_endpoint                     = (known after apply)
      + maintenance_window                    = (known after apply)
      + master_user_secret                    = (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + nchar_character_set_name              = (known after apply)
      + network_type                          = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = (known after apply)
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = 3306
      + publicly_accessible                   = false
      + replica_mode                          = (known after apply)
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_throughput                    = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "anuuprety"
      + vpc_security_group_ids                = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_db_instance.myRDS: Creating...
aws_db_instance.myRDS: Still creating... [10s elapsed]
aws_db_instance.myRDS: Still creating... [20s elapsed]
aws_db_instance.myRDS: Still creating... [30s elapsed]
aws_db_instance.myRDS: Still creating... [40s elapsed]
aws_db_instance.myRDS: Still creating... [50s elapsed]
aws_db_instance.myRDS: Still creating... [1m0s elapsed]
aws_db_instance.myRDS: Still creating... [1m10s elapsed]
aws_db_instance.myRDS: Still creating... [1m20s elapsed]
aws_db_instance.myRDS: Still creating... [1m30s elapsed]
aws_db_instance.myRDS: Still creating... [1m40s elapsed]
aws_db_instance.myRDS: Still creating... [1m50s elapsed]
aws_db_instance.myRDS: Still creating... [2m0s elapsed]
aws_db_instance.myRDS: Still creating... [2m10s elapsed]
aws_db_instance.myRDS: Still creating... [2m20s elapsed]
aws_db_instance.myRDS: Still creating... [2m30s elapsed]
aws_db_instance.myRDS: Still creating... [2m40s elapsed]
aws_db_instance.myRDS: Still creating... [2m50s elapsed]
aws_db_instance.myRDS: Still creating... [3m0s elapsed]
aws_db_instance.myRDS: Still creating... [3m10s elapsed]
aws_db_instance.myRDS: Still creating... [3m20s elapsed]
aws_db_instance.myRDS: Still creating... [3m30s elapsed]
aws_db_instance.myRDS: Still creating... [3m40s elapsed]
aws_db_instance.myRDS: Still creating... [3m50s elapsed]
aws_db_instance.myRDS: Still creating... [4m0s elapsed]
aws_db_instance.myRDS: Still creating... [4m10s elapsed]
aws_db_instance.myRDS: Still creating... [4m20s elapsed]
aws_db_instance.myRDS: Still creating... [4m30s elapsed]
aws_db_instance.myRDS: Creation complete after 4m36s [id=db-AL2GS2URSDFNPBDSFTYTRODXKQ]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
PS C:\Users\oakto\OneDrive\Documents\TerraForm\AWS_Relational_DatabseService> 