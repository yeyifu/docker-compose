#!/bin/bash
webhook='https://oapi.dingtalk.com/robot/send?access_token=b43a2374a55e5ed2415090023e62544b41474d68f1285f80909c40f0de1xxxx'  #个人测试群
message="elk报警:\n $*"

function SendMsgToDingding() {
  curl $webhook -H 'Content-Type: application/json' -d "
  {
    'msgtype': 'text',
    'text': {
      'content': '运维工具:error $messages'
    },
    'at': {
      'isAtAll': true
    }
  }"
}
#删除单引号
messages=`echo $message|sed $'s/\'//g'|sed $'s/;//g'`
messages=`echo $message`
SendMsgToDingding "$messages"
