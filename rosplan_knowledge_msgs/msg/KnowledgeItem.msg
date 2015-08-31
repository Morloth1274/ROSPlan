# A knowledge item used to represent a piece of the world model in ROSPlan
uint8 INSTANCE = 0
uint8 FACT = 1
uint8 FUNCTION = 2

uint8 knowledge_type

# instance knowledge_type
string instance_type
string instance_name

# attribute knowledge_type
string attribute_name
diagnostic_msgs/KeyValue[] values

# function value
float64 function_value

# function operator (only for goals)
uint8 EQUAL = 0
uint8 LESS = 1
uint8 LESS_OR_EQUAL = 2
uint8 GREATER = 3
uint8 GREATER_OR_EQUAL = 4

uint8 function_operator
