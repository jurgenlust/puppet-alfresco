include java7
include tomcat
include postgres

postgres::user { 'alfresco': 
	username => 'alfresco',
	password => 'alfresco',
}

postgres::db { 'alfresco':
	name => 'alfresco',
	owner => 'alfresco'
}

class { "alfresco": 
	user => "alfresco", #the system user that will own the Alfresco Tomcat instance
	database_name => "alfresco",
	database_driver => "org.postgresql.Driver",
	database_driver_jar => "postgresql-9.1-902.jdbc4.jar",
	database_driver_source => "puppet:///modules/alfresco/db/postgresql-9.1-902.jdbc4.jar",
	database_url => "jdbc:postgresql://localhost/alfresco",
	database_user => "alfresco",
	database_pass => "alfresco",
	number => 7, # the Tomcat http port will be 8780
	share_contextroot => "share",
	share_host => "localhost",
	share_port => "8780",
	share_protocol => "http",
	alfresco_contextroot => "alfresco",
	alfresco_host => "localhost",
	alfresco_port => "8780",
	alfresco_protocol => "http",
	webapp_base => "/opt", # Alfresco will be installed in /opt/alfresco
	require => [
		Postgres::Db['alfresco'],
		Class["tomcat"],
		Class["java7"]
	],
}
