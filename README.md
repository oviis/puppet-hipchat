#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with hipchat](#Setup)
4. [Usage - Configuration options and additional functionality](#Usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#Limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module is mainly for installing Hipchat ONLY FOR Ubuntu *.unix derivates 

## Module Description

1. This module installs [Atlassian hipchat](https://www.hipchat.com)
2. It installs the package over the apt key from Atlassian and also ensure that the debian repository are present as a source file
3. This module also ensure that the hipchat package are installed, after point 1 and 2 are running


## Setup

### What hipchat affects



### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled, etc.), mention it here. 

### Beginning with hipchat
 
 class profile::universal::hipchat {
  include hipchat
 }


## Usage
`class profile::universal::hipchat {
  include hipchat
 }` 

## Reference

## Limitations

only for Debian / Ubuntu derivates

## Development

You can fork it, play with the module.
Improve things are allways welcome


