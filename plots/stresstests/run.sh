#!/bin/sh
ab -g data1.dat -n 1000 -c 1 -p post_data -T 'application/x-www-form-urlencoded' http://localhost:8080/route
ab -g data2.dat -n 1000 -c 2 -p post_data -T 'application/x-www-form-urlencoded' http://localhost:8080/route
ab -g data5.dat -n 1000 -c 5 -p post_data -T 'application/x-www-form-urlencoded' http://localhost:8080/route
ab -g data10.dat -n 1000 -c 10 -p post_data -T 'application/x-www-form-urlencoded' http://localhost:8080/route
ab -g data20.dat -n 1000 -c 20 -p post_data -T 'application/x-www-form-urlencoded' http://localhost:8080/route
#ab -n 20 -c 5 -p post_data -v 4 http://dev.onibuscerto.com/route
