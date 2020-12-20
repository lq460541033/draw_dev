
APP_NAME=xk_price-0.0.1-SNAPSHOT.jar
PID=$(ps -ef | grep $APP_NAME | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
    echo Application is already stopped!
else
    kill $PID
    echo kill $PID successful!
fi

java -Xmx128m -Xms128m -Xmn64m -XX:PermSize=128m -XX:MaxPermSize=128m -Xss256K -XX:+DisableExplicitGC -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSParallelRemarkEnabled -XX:+UseCMSCompactAtFullCollection -XX:CMSFullGCsBeforeCompaction=0 -XX:+CMSClassUnloadingEnabled -XX:+UseFastAccessorMethods -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=80 -XX:SoftRefLRUPolicyMSPerMB=0 -XX:+PrintClassHistogram -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -jar -Duser.timezone=Asia/Shanghai xk_price-0.0.1-SNAPSHOT.jar &

