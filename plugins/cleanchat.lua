---Start Plugin
local function marathon(msg, matches)
    if matches[1] == 'clean chat' and is_owner(msg) or matches[1] == 'پاک کردن چتها' and is_owner(msg) then
local function cb(a,b,c)
local clean = b.messages_
for i=0 , #clean do
tdcli.deleteMessages(msg.to.id,{[0] = b.messages_[i].id_})
end
end
      tdcli.getChatHistory(msg.to.id, 0, 0,1000000,cb)
tdcli.sendMessage(msg.chat_id_, 0, 1, '_1000000 چت از زمان ورود پاک شد!🚮_' , 1, 'md') 
				end
end
return {
    patterns = {
        '^[!#/](clean chat)$',
		'^(پاک کردن چتها)$'
    },
    run = marathon
}

--By Amir 