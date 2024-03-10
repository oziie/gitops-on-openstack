from openstack import connection
import openstack.config

my_config = openstack.config.get_cloud_region(cloud="openstack")
conn = connection.from_config(cloud="openstack", config=my_config)

print(list(conn.compute.servers())[0])