#!/bin/bash

# Step 1: Update and install necessary system packages
brew update
brew install python3

# Step 2: Clone the YOLOv5 repository
git clone https://github.com/ultralytics/yolov5
cd yolov5

# Step 3: Install required Python packages
pip3 install -r requirements.txt

# Step 4: Install additional packages
pip3 install opencv-python-headless supervision

# Step 5: Download the YOLOv5 model weights
python3 -c "from utils.downloads import attempt_download; attempt_download('yolov5l.pt')"

# Step 6: Print a success message
echo "YOLOv5 and required packages have been installed successfully."
