#!/bin/bash

echo === Memory Status ===
free -h | grep "Mem:"

echo === GPU Status ===
nvidia-smi | grep "Default"

echo === CPU Status ===
sensors 2>/dev/null | grep "Package id 0:"
