#sms hello world

require(RCurl)
    nodename = Sys.info()['nodename']
    time= Sys.time()
msg.text = paste(time, nodename, 'Hello world!' sep = ' |')

api_id = 'dfdbb9ca-08dd-6954-cd3b-ee8556c9a9b5'

sms <- postForm(uri='http://sms.ru/sms/send', api_id = api_id, to = '79269326848', text=msg.text, translit = 1)
