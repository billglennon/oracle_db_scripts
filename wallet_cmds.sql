/* Below are some basic Oracle wallet commands form the command line */
mkstore - help
mkstore [-wrl wrl] [-create] [-createSSO] [-delete] [-deleteSSO] 
[-list] [-createEntry alias secret] [-viewEntry alias] 
[-modifyEntry alias secret] [-deleteEntry alias] [-help]


-- list of the contexts in the wallet
cd <wallet location>
mkstore -wrl `pwd` -list
Oracle Secret Store entries:
oracle.security.client.connect_string1
oracle.security.client.connect_string2
oracle.security.client.connect_string3
oracle.security.client.connect_string4
oracle.security.client.password1
oracle.security.client.password2
oracle.security.client.password3
oracle.security.client.password4
oracle.security.client.username1
oracle.security.client.username2
oracle.security.client.username3
oracle.security.client.username4
ORACLE.SECURITY.DN
ORACLE.SECURITY.PASSWORD

mkstore -wrl `pwd` -viewEntry oracle.security.client.connect_string1

mkstore -wrl `pwd` -viewEntry oracle.security.client.username1

mkstore -wrl `pwd` -viewEntry oracle.security.client.password1

mkstore -wrl `pwd` -modifyEntry oracle.security.client.password1 <new password>

mkstore -wrl `pwd` -createCredential <db_alias> <username> <password>

mkstore -wrl `pwd` -deleteCredential <db_alias>