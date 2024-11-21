### AWS VPC Module

This Module creates following Resources. we are using HA, we are getting first 2 AZ automatically.

1. vpc
2. Internet gateway with vpc association
3. 2 public subnets  in 1a and 1b 
4. 2 private subnets in 1a and 1b
5. 2 database subnets in 1q and 1b
6. elastic ip
7. Nat gateway in 1a public subnet
8. public route table 
9. private route table
10. database route table
11. subnets and route table associations
12. vpc peering if user requests
13. adding the peering route in default vpc, if user don't provide acceptor vpc explicitly.
14. Adding the peering routes in public, private and database route tables 

## INPUTS

1. Project_name (Required) - your project name 
2. Enviornment (Required) - which env you are working in 
3. vpc_cidr  (Optional) - default value is 10.0.0.0/16, user can override
4. enable_dns_hostnames (Optional) - default value is true
5. common_tags (Optional) - better to provide
6. vpc_tags (Optional) 
7. igw_tags (Optional)
8. public_subnet_cidr (Required) - user must provide 2 valid public subnets cidr 
9. public_subnet_cidr (Optional) - default value is empty, type is map
10. private_subnet_cidr (Required) - user must provide 2 valid private subnets cidr 
11. private_subnet_cidr (Optional) - default value is empty, type is map
12. database_subnet_cidr (Required) - user must provide 2 valid database subnets cidr 
13. database_subnet_cidr (Optional) - default value is empty, type is map
14. nat_gateway_tags (Optional) - default value is empty, type is map
15. public_route_table_tags (Optional) - default value is empty, type is map
16. private_route_table_tags (Optional) - default value is empty, type is map
17. database_route_table_tags (Optional) - default value is empty, type is map
18. is_peering_required (Optional) - default value is false
19. acceptor_vpc-id (Optional) - default value is default vpc id
20. vpc_peering_tags (Optional) - default value is empty, type is map

## OUTPUTS

1. vpc_id - VPC ID created
2. public_subnet_ids - 2 public subnet id is created 
3. private_subnet_ids - 2 private subnet id is created 
4. database_subnet_ids - 2 database subnet id is created 


