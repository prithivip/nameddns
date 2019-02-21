$TTL    604800
@       IN      SOA     ns1.mine.kt.com. admin.mine.kt.com. (
                200       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.mine.kt.com.

; name servers - A records
ns1.mine.kt.com.          IN      A      192.168.0.10

; 10.128.0.0/16 - A records
nfs.mine.kt.com.        IN      A       192.168.0.4
master.mine.kt.com.        IN      A      192.168.0.4
etcd.mine.kt.com.	IN	A	192.168.0.4
privatelb.mine.kt.com.  IN      A       192.168.0.7
publiclb.mine.kt.com.	IN	A	192.168.0.3 ; This is my Laptop IP address
*.apps.mine.kt.com.     300     IN      A       192.168.0.8
infranode1.mine.kt.com.	IN	A	192.168.0.8
node1.mine.kt.com.		IN	A	192.168.0.9
