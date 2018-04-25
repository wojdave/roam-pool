@echo
wmic service where "displayName like 'ROAM%%'" call stopservice
wmic service where "displayName like 'SLM_AS'" call stopservice
wmic service where "displayName like 'SLM_Proxy'" call stopservice
wmic service where "displayName like 'SLM_QM'" call stopservice

