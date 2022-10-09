clear
V='\033[1;33m'
XNBN='\033[1;34m'
XNB='\033[0;34m'
T='\033[0m'
printf "${XNB}✎ Viết bởi ${V}Folody Team và NezukoBot Team ${XNB}with love <3"
printf "${T}"
sleep 8
clear
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "✦ Dán token ngrok vào đây: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
sudo apt update -y > /dev/null 2>&1
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
clear
curl -L -o lite10.qcow2 https://bit.ly/32OIl8Y
clear
echo "✎ Địa chỉ kết nối VNC của bạn là:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
sleep 20
clear          
printf '${XNBN} VPS sẽ hoạt động trong 1 tuần nếu không có chuyện gì xảy ra! ${Y}Thanks bạn vì đã ủng hộ tụi mình. Chúc một ngày tốt lành'
$endc$enda""";
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
sleep 603799
