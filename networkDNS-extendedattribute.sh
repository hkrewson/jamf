#!/bin/bash
#
# Copyright (c) 2023 Hamlin Krewson
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# 	limitations under the License.
#
################################# DESCRIPTION #################################
# 
#	This is an extension attribute that ouputs the list of DNS addresses 
#   currently in use. Each address in decimal IP notation will be listed
#   on a separate line.
#
#################################### TO DO ####################################
#
#
################################## VARIABLES ##################################
# 
nameservers=$(cat /etc/resolv.conf | grep nameserver | sed 's/nameserver\ //g')
################################## FUNCTIONS ##################################
function result(){
	# For Jamf Pro the following should be uncommented
	echo "<result>$1</result>"
	
	#for Mosyle, the following should be uncommented
	#printf "$1"
}

##################################### MAIN ####################################

result "$nameservers"