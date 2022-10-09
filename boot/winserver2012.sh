V='\033[1;33m'
XNBN='\033[1;34m'
XNB='\033[0;34m'
T='\033[0m'
printf "${XNB}✎ Viết bởi ${V}Folody Team và NezukoBot Team ${XNB}with love <3"
printf "${T}"
sleep 8 
rm -rf w2012 w2012.img w2012.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
wget -O w2012.gz https://go.aank.me/win/W2012-aank.gz
gunzip w2012.gz
mv w2012 w2012.img
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
clear
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "✦ Dán token Ngrok của bạn vào đây: " CRP
./ngrok authtoken $CRP
clear
echo "======================="
echo "Danh sách máy chủ đang có sẵn"
echo "======================="
echo "us - Mỹ (Ohio)"
echo "eu - Châu Âu (Frankfurt)"
echo "ap - Châu Á (Singapore)"
echo "au - Úc (Sydney)"
echo "sa - Bắc Mỹ (Sao Paulo)"
echo "jp - Nhật Bản (Tokyo)"
echo "in - Ấn Độ (Mumbai)"
read -p "Khu vực bạn chọn: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
apt-get install qemu-system-x86 -y
qemu-system-x86_64 -hda w2012.img -m 32G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo "✎ Địa chỉ VNC/ Windows Remote Desktop: "
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "✎ Tài khoản: Administrator"
echo "✎ Mật khẩu (nếu có): Lingg@H0sting"

b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'          
$endc$enda""";
sleep 20
clear
printf '${XNBN} VPS sẽ hoạt động trong 1 tuần nếu không có chuyện gì xảy ra! ${Y}Thanks bạn vì đã ủng hộ tụi mình. Chúc một ngày tốt lành'
$endc$enda""";
sleep 
