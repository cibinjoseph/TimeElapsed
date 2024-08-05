#!/home/cibin/.juliaup/bin/julia

print("Start time : ")
t1 = parse.(Float32, split(readline(), ':'))
t1_sec = t1[1]*60*60 + t1[2]*60 + t1[3]

print("Stop  time : ")
t2 = parse.(Float32, split(readline(), ':'))
t2_sec = t2[1]*60*60 + t2[2]*60 + t2[3]

t = t2_sec - t1_sec

if t < 60
    println("$t sec")
elseif t < 3600
    println("$(t/60) mins")
else
    println("$(t/3600) hrs")
end
