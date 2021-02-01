# Launching from the same configuration. This way either ports nor container name can be specified.
docker-compose up --scale spark-worker=2


# EXECUTE REMOTE
# https://spark.apache.org/docs/latest/api/python/pyspark.sql.html?highlight=sparksession
#import pyspark
#from pyspark.sql import SparkSession

#spark = SparkSession.builder \
#    .master("spark://127.0.0.1:7077") \
#    .appName("test") \
#    .config("spark.driver.port", "20002") \
#    .config("spark.driver.host", "192.168.1.4") \
#    .config("spark.driver.bindAddress", "0.0.0.0") \