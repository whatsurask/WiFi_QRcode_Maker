import qrcode


ssid = "wifiName" #Insert the name of your wifi
password = "wifiPass" #Insert the password for your wifi
encryption = "WPA"  # Options: WPA, WEP, or leave empty for open networks
hidden = "false" #If network is hidden insert true
image_file_name = "wifi_QRcode111.png" #Insert desired name for the image file this code produces. 





#############################################
#The magic happens here, ignore unless ur a geek as well :)
#############################################
wifi_config = f"WIFI:T:{encryption};S:{ssid};P:{password};H:{hidden};"

qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(wifi_config)
qr.make(fit=True)

img = qr.make_image(fill="black", back_color="white")

img.save(image_file_name)

print(f"\nQR code generated and saved as \n\n{image_file_name}\n\n")