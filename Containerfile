FROM docker.io/osrf/ros:humble-desktop-jammy

LABEL org.opencontainers.image.authors="Daniele Tricoli <eriol@mornie.org>" \
      org.opencontainers.image.source="https://github.com/eriol/oci-handy-humble"

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    ros-humble-gazebo-ros \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-joint-state-publisher \
    ros-humble-xacro \
    tar \
    && rm -rf /var/lib/apt/lists/*
