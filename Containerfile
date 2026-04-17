FROM docker.io/osrf/ros:humble-desktop-jammy

LABEL org.opencontainers.image.authors="Daniele Tricoli <eriol@mornie.org>" \
      org.opencontainers.image.source="https://github.com/eriol/oci-handy-humble"

RUN apt-get update && apt-get install -y --no-install-recommends \
    ament-cmake \
    ament-lint \
    ros-humble-gazebo-ros \
    ros-humble-gazebo-ros-pkgs \
    ros-humble-joint-state-publisher \
    ros-humble-joint-state-publisher-gui \
    ros-humble-xacro \
    && rm -rf /var/lib/apt/lists/*
