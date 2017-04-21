#! /bin/bash


#Probe for networks and out put the file into a netxml file

sudo airmon-ng check kill

echo " Interface used for listening:  "
read wlan

sudo airmon-ng start $wlan

echo " Name of monitor mode:  "
read  mon

echo " Name of file to output:  "
read file

sudo airodump-ng $mon -w  $file


