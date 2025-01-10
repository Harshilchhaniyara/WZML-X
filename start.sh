#!/bin/bash

# Start Gunicorn in the background
gunicorn app:app &

# Run the other scripts
python3 update.py
python3 -m bot

# Wait for all background jobs to finish
wait
