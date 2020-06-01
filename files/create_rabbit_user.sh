rabbitmq-plugins enable rabbitmq_management
rabbitmqctl add_user "menome" "menome"
rabbitmqctl set_user_tags menome administrator
rabbitmqctl set_user_tags menome administrator
rabbitmqctl set_permissions -p / menome ".*" ".*" ".*"