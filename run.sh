#!/bin/bash

BMV2_SWITCH_EXE="simple_switch_grpc"

p4c --target bmv2 --arch v1model --p4runtime-files demo.p4info.txt --std p4-16 -o build p4src/demo.p4
sudo ./run_exercise.py --behavioral-exe simple_switch_grpc --json build/demo.json
