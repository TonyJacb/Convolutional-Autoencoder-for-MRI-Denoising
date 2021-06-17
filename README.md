# Convolutional-Autoencoder-for-MRI-Denoising
This project does a comparison between existing denoising methods and a custom convolutional autoencoder for denoising MR Images<br>
<br>
## 1. MATLAB and the Deep Learning Toobox
The denoising neural network (dnCNN) found in the Deep Learning Toolbox was used. A comparative study with a Wiener filter and dnCNN was performed over a noisy MR Image.The Wiener filter was of a kernel size of (5,5)

![image](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/dnn.png)
<br>
![table](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/dnntable.png)
<br>

## 2. cv2.fastNIMeansDenoising
This was an inbuilt OpenCV method for denoising images. This was also tried out to see the effect of this method.<br>

![image](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/cv2.png)
<br>
![table](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/cv2table.png)
<br>

## 3. Convolutional Autoencoder
The conv-autoencoder model consisted of an input vector of (540,540) and 2 encoding layers that reduced in vector size from one layer to another, followed by 2 decoding layers that unraveled the vector size till it reached the input vector shape. The Conv layers extracted features from the image. The total number of parameters i.e. weights and biases were 47,425.<br>

![image](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/convauto1.png)
<br>
![table](https://github.com/TonyJacb/Convolutional-Autoencoder-for-MRI-Denoising/blob/main/images/convautotable.png)
<br>
