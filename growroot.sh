#!/bin/bash

echo -e 'd\n2\nn\n\n\n\n\nw' | fdisk /dev/sda
cryptsetup resize crypted
resize2fs /dev/mapper/crypted
