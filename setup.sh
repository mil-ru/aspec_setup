if [ "$EUID" -ne 0 ]
	then echo "root"
	exit
fi
wget https://zgt.mil.ru/upload/site228/document_file/9S6IDqpjY9.rar
unrar x 9S6IDqpjY9.rar
rm 9S6IDqpjY9.rar
rm SEC-CA-PEC-CA.crl
rm SEC-CA-SA-CA.crl
rm ROOT-CA-CA.crl
sudo cp ROOT-CA-CA.cer /etc/ssl/certs
sudo cp SEC-CA-PEC-CA.cer /etc/ssl/certs
sudo cp SEC-CA-SA-CA.cer /etc/ssl/certs
sudo update-ca-certificates
rm SEC-CA-PEC-CA.cer
rm SEC-CA-SA-CA.cer
rm ROOT-CA-CA.cer
