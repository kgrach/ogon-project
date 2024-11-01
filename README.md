# ogon_project



## Настроить proxy 
Дабавить в файл ~/.bashrc

    echo "export {http,ftp,https,rsync}_proxy=\"http://usergate5.crimea.rncb.ru:8090\"" >> ~/.bashrc
    echo "export {HTTP,FTP,HTTPS,RSYNC}_PROXY=\"http://usergate5.crimea.rncb.ru:8090\"" >> ~/.bashrc
    echo "export NO_PROXY=\"172.30.1.*,195.200.209.34,195.200.209.43,tmail.bellintegrator.ru,10.*,crm1-*,crm2-*,e15-*,n32-*,*.rncb.ru,rncb.ru,192.168.*,riskskib.kibank.ru,tutor.unistream.com:8080,nash.kibank.ru,*.myoffice-app.ru,oper.ikib.ru,buh.ikib.ru,ctx2.ikib.ru,*.of61.kib.ru,*.rncbapp.ru,vpn-rnkb.abanking.ru,ftp.moex.com,signer.bifit.com,172.16.83.247,mail.rncb-lk.ru,1c.rncb-lk.ru,trade.moex.com,vpn-rnkb-lk.abanking.ru,lk-fzs.roskazna.ru,roskazna.ru,*.bank.loc,194.226.50.80,pscsrv1.kib.ru,test-*.cscampus.ru,dev-*.cscampus.ru,skidka.club,*.skidka.club,bpm.interstroi.com.ru,npo.vtbnpf.ru,*.de.rncb.ru,start.vtb.ru,chcp.epa.vtb.ru,fgw1881.start.vtb.ru,10.82.245.38,.ipa.rncb.ru,*.arm.rncb.ru\""  >> ~/.bashrc
    source ~/.bashrc

Добавить в файл /etc/dnf/dnf.conf 

    [main]
    proxy=http://usergate5.crimea.rncb.ru:8090

/etc/wgetrc

    use_proxy = yes
    http_proxy=usergate5.crimea.rncb.ru:8090
    https_proxy=usergate5.crimea.rncb.ru:8090

## Запустить скрипт 

    ./build_all.sh
