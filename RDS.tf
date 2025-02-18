provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB1"
    identifier = "my-first-rds"
    instance_class = "db.t3.micro" #compatiable with maria engine
    engine = "mariadb"
    engine_version = "10.11" #latest version
    username = "anuuprety"  #themosthandsome
    password = "IsTheMostHandsome"     #engineer
    port = 3306
    allocated_storage = 20
    skip_final_snapshot = true

}