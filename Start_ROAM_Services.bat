@echo
wmic service where "displayName like 'SLM_QM'" call startservice
wmic service where "displayName like 'SLM_Proxy'" call startservice
wmic service where "displayName like 'SLM_AS'" call startservice
wmic service where "displayName like 'ROAM%%'" call startservice