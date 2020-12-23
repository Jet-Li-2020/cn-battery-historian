
docker load < image\cn-battery-historian_3.0.1.tar
echo "Load cn-battery-historian_3.0.1.tar completley."

if "%1"=="" ( 
  docker run -p 9999:9999 cn-battery-historian:3.0.1 --port 9999
) else (
  docker run -p %1:9999 cn-battery-historian:3.0.1 --port 9999
)
