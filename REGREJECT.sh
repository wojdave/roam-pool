cat nc_mesh.log | grep 'REG REJECT' | awk -F '[::]' '{print $5}' | sort --unique
