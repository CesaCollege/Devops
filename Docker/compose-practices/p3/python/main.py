import pika

connection = pika.BlockingConnection(pika.ConnectionParameters('rabbit'))
channel = connection.channel()

channel.queue_declare(queue='testing')

channel.basic_publish(exchange='',
                      routing_key='testing',
                      body='Hello World!')
print(" [x] Sent 'Hello World!'")