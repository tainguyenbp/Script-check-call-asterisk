while true
do
    echo -e "\n\n\n====================================================================\n$(date +'%Y-%m-%d %H:%M:%S')" | tee -a /home/nntai/calls_asterisk.log
    asterisk -rx "core show channels" | grep calls | tee -a /home/nntai/calls_asterisk.log
    echo -e "====================================================================" | tee -a /home/nntai/calls_asterisk.log
    sleep 5
done
