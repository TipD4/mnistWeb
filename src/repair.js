// 加载模型

// import * as tf from '@tensorflow/tfjs';
// import {loadGraphModel} from '@tensorflow/tfjs-converter';

// const MODEL_URL = 'model_directory/model.json';

const MODEL_URL = './webModel/model.json'
// const model = await loadGraphModel(MODEL_URL);


let model
tf.loadGraphModel(MODEL_URL).then(m => {   
    model = m
})

// 获取用户绘制的数字图像
function getImageData() {
    const canvas = document.getElementById('canvas')
    const ctx = canvas.getContext('2d')
    const imgData = ctx.getImageData(0, 0, canvas.width, canvas.height)
    // console.log(imgData)
    // tf.browser.fromPixels(imgData, 1).print();
    const img = document.getElementById('img');
    // const pixels = tf.browser.fromPixels(imgData, 1)
    const pixels = tf.browser.fromPixels(img, 1)
    
    // console.log(pixels)
    const gray = pixels.toFloat().div(tf.scalar(255))
    // console.log(gray.reshape([-1, 28,28,1]))
    const input = gray.reshape([-1, 28,28,1])
    input.data().then(data => {
        console.log(data);
        // 在此处使用张量对象的数据
      });
    return input
}

function show(gray) {
    const outputDiv = document.getElementById('output');
    let outputHTML = '';
    const grayData = gray.dataSync(); // 获取张量数据的 JavaScript 数组
    for (let i = 0; i < 28; i++) {
      for (let j = 0; j < 28; j++) {
        const index = i * 28 + j;
        let n;
        if (grayData[index]>0.0001) n=1
        else n=0
        outputHTML += n + ',';
      }
      outputHTML += '<br>';
    }

  
    outputDiv.innerHTML = outputHTML;
  }



//没什么用
function showInput(){
    const canvas = document.createElement('canvas');
    canvas.width = 28;
    canvas.height = 28;
    document.body.appendChild(canvas);
    const ctx = canvas.getContext('2d');
    const imageData = ctx.createImageData(28, 28);
    const data = imageData.data;
    const pixels = imageData.width * imageData.height;
    const tensor = getImageData();
    const imageArray = Array.from(tensor.dataSync());
    for (let i = 0; i < pixels; i++) {
      const j = i * 4;
      const val = imageArray[i];
      data[j + 0] = val; // red
      data[j + 1] = val; // green
      data[j + 2] = val; // blue
      data[j + 3] = 255; // alpha
    }
    ctx.putImageData(imageData, 0, 0);
}

// 对用户绘制的数字图像进行分类
function classifyImage() {
    const data = getImageData()
    show(data);

    const reshapedData = data.reshape([-1, 784]);
    // const output = model.predict(data).dataSync()
    const output = model.predict(reshapedData).dataSync();
    showResult(output)
}

// 显示分类结果
function showResult(output) {
    const resultDiv = document.getElementById('result')
    resultDiv.textContent = `Predicted Digit: ${output.indexOf(Math.max(...output))}`
}

// 绘制数字图像
let isDrawing = false
let lastPoint = null
const canvas = document.getElementById('canvas')
const ctx = canvas.getContext('2d')
ctx.lineWidth = 10
ctx.lineCap = 'round'
ctx.lineJoin = 'round'
canvas.addEventListener('mousedown', e => {
    isDrawing = true
    lastPoint = { x: e.offsetX, y: e.offsetY }
})
canvas.addEventListener('mousemove', e => {
    if (isDrawing) {
        const currentPoint = { x: e.offsetX, y: e.offsetY }
        ctx.beginPath()
        ctx.moveTo(lastPoint.x, lastPoint.y)
        ctx.lineTo(currentPoint.x, currentPoint.y)
        ctx.stroke()
        lastPoint = currentPoint
    }
})
canvas.addEventListener('mouseup', e => {
    isDrawing = false
})
