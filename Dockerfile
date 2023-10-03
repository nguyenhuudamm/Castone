FROM python:3.7.9
## Step 1:
# Create a working directory
WORKDIR /app
AAA
## Step 2:
# Copy source code to working directory
COPY app.py requirements.txt /app/
COPY model_data /app/model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 8080

## Step 5:
# Run app.py at container launch
CMD ["python" , "app.py"]