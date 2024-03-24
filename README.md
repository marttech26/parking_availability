# Parking Space Availability Detection

## Overview
This project aims to develop a system for detecting parking space availability using computer vision techniques, specifically employing YOLO (You Only Look Once) for object detection. YOLOv8 is a state-of-the-art real-time object detection system that offers high accuracy and efficiency. By utilizing this model, we can identify and monitor parking spaces in real-time through video feeds.

## Computer Vision
Computer vision is a field of artificial intelligence that focuses on enabling computers to interpret and understand the visual world. It involves developing algorithms and techniques to extract meaningful information from digital images or videos. Computer vision techniques are widely used in various applications such as image recognition, object detection, facial recognition, and autonomous vehicles.

## YOLOv8
YOLOv8 is a deep learning-based object detection system that belongs to the YOLO (You Only Look Once) family of models. It operates by dividing the input image into a grid and predicting bounding boxes and class probabilities for each grid cell. YOLOv8 is known for its real-time performance and high accuracy, making it suitable for applications where fast inference is required, such as surveillance, autonomous driving, and object tracking.

## Installation
Before running the code, ensure you have the necessary dependencies installed. You can install them using pip as follows:

```bash
%pip install ultralytics
!pip install opencv-python-headless
!pip install labelme2yolo
```

## Model Training
The YOLOv8 model is trained using labeled data. In this project, we utilize the provided data in the 'car park' directory. The model is trained for 100 epochs on this dataset. The training script is included in the code.

```bash
# Load the model
model = YOLO('yolov8n.pt')

# Train the model on the dataset for 100 epochs
results = model.train(data='/content/gdrive/MyDrive/car park/data.yaml', epochs=100)
```
## Model Evaluation
After training, the model's performance can be evaluated. This can be done by loading the trained weights and running predictions on test data. In this project, a test video 'park_1.mp4' is used for evaluation.

```bash
# Load the trained model
model = YOLO('/content/gdrive/MyDrive/car park/results_parking/weights/best.pt')

# Run predictions on test video
results = model('/content/gdrive/MyDrive/car park/Test videos/park_1.mp4', show=True, save=True)
```

## Results Visualization
The results of the predictions can be visualized using matplotlib. The detection results are saved as an image during model evaluation. This image can be loaded and displayed using matplotlib.

```bash
# Load and display the detection results image
figure(figsize=(15, 10), dpi=80)
results = img.imread('runs/detect/train2/results.png')
plt.imshow(results)
```

## Conclusion
This README provides an overview of the project for detecting parking space availability using YOLOv8. By following the provided instructions, users can train the model on their dataset, evaluate its performance, and visualize the detection results. This system can be further enhanced and integrated into real-world applications for parking management and surveillance.
