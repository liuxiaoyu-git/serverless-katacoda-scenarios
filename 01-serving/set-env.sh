#!/bin/bash

echo "Check Knative Serving Pods are up and Running"

sleep 150; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 20; done

oc adm policy add-cluster-role-to-group sudoer system:authenticated
