output "rds_endpoint" {
    description = "The endpoint of the RDS instance"
    value       = aws_db_instance.default.endpoint # Output the endpoint of the RDS instance from the RDS module
}
