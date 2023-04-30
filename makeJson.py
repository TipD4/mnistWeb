# import tensorflow as tf
# import tensorflowjs as tfjs
#
# # 加载模型
# model = tf.saved_model.load("D:/project/repair_zi/savermodel/model.ckpt.index")
#
# # 转换为 TensorFlow.js 格式
# tfjs.converters.save_keras_model(model, "./")
#
# # 输出文件：
# # - model.json：包含模型结构和权重的 JSON 文件
# # - model.weights.bin：包含模型权重的二进制文件

# import tensorflow as tf
#
# # 加载 TensorFlow 1.x 的模型
# model = tf.keras.models.load_model('savermodel')
#
# # 将模型保存为 TensorFlow 2.x 的 SavedModel 格式
# tf.saved_model.save(model, 'saved_model')

import tensorflow as tf

# 加载之前训练好的savermodel模型
model = tf.keras.models.load_model('savermodel')

# 将模型保存为savedmodel
tf.saved_model.save(model, 'savedmodel')
