#!/bin/bash
cd "$(dirname "$0")"
./test_fill_up_moneta.exe 2>&1 | tee moneta_fixed_results.txt
