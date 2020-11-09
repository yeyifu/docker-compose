1.docker-compose.yml:
fluentd-pilot服务修改LOGSTASH_HOST的值为logstash的服务器地址
2.logstash/pipeline/logstash.conf
  修改hosts的值为elasticsearch的服务器地址
  可以接收不同类型日志自定义索引名称 index
3.elasticsearch,kibana默认账号密码:[elastic / es_123]
  可以修改，先修改es密码，再在kibana/config/kibana.yml中修改kibana连接es的密码
4.修改报警通知logstash/dd.sh


