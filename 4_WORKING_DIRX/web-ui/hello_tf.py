# NAA. 
# - below uses Tensorflow 2.0 in backward compatibility mode

#import tensorflow.compat.v1 as tf
#from tensorflow.examples.tutorials.mnist import input_data

from __future__ import absolute_import, division, print_function, unicode_literals
import tensorflow as tf

#sess = tf.Session()
#print(sess.run(hello))

# test imports
hello = tf.constant('Hello, TensorFlow!')

mnist = tf.keras.datasets.mnist

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

model = tf.keras.models.Sequential([
    tf.keras.layers.Flatten(input_shape=(28, 28)),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dropout(0.2),
        tf.keras.layers.Dense(10, activation='softmax')
    ])

model.compile(optimizer='adam',
                loss='sparse_categorical_crossentropy',
                metrics=['accuracy'])

model.fit(x_train, y_train, epochs=5)

model.evaluate(x_test,  y_test, verbose=2)
