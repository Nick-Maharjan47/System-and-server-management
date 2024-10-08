# Locale Configuration

## Overview

In this project, I configured the locale settings for my server, documented my progress, and ensured proper version control using Git. Below is a step-by-step outline of the tasks I completed, along with the commands and changes I made throughout the process.

## step 1
    I installed locales to ensure all required locales were available:


## Step 2 
 I generated the desired locales for en_US.UTF-8 and nl_BE.UTF-8:

locale-gen en_US.UTF-8 nl_BE.UTF-8

## step 3 
To set the correct locale, I edited the /etc/default/locale file to use the appropriate values:

vi /etc/default/locale

I modified the file to include the following settings:
LANG="en_US.UTF-8"
LANGUAGE="en_US"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="nl_BE.UTF-8"
LC_TIME="nl_BE.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="nl_BE.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="nl_BE.UTF-8"
LC_NAME="nl_BE.UTF-8"
LC_ADDRESS="nl_BE.UTF-8"
LC_TELEPHONE="nl_BE.UTF-8"
LC_MEASUREMENT="nl_BE.UTF-8"
LC_IDENTIFICATION="nl_BE.UTF-8"

## step 4
 After modifying the locale settings, I applied the changes using the update-locale command:
sudo update-locale

## step 5
    verify the locale configuration
locale
