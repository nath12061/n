.class public Lcom/jcraft/jsch/JSch;
.super Ljava/lang/Object;


# static fields
.field static fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

.field private static final rthrthrtjrtjrjtdcbcvbc:Lcom/jcraft/jsch/Logger;

.field static sdfsdfsdfsdf:Lcom/jcraft/jsch/Logger;


# instance fields
.field private eryryhrtytujrtujrurt:Lcom/jcraft/jsch/HostKeyRepository;

.field private hukuiluliulu:Lcom/jcraft/jsch/ConfigRepository;

.field private sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

.field private serfwefewfwefewef:Lcom/jcraft/jsch/IdentityRepository;

.field private zxcvxvsdvsvsvs:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "kex"

    const-string v2, "ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group14-sha1,diffie-hellman-group-exchange-sha256,diffie-hellman-group-exchange-sha1,diffie-hellman-group1-sha1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "server_host_key"

    const-string v2, "ssh-rsa,ssh-dss,ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "cipher.s2c"

    const-string v2, "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-ctr,aes192-cbc,aes256-ctr,aes256-cbc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "cipher.c2s"

    const-string v2, "aes128-ctr,aes128-cbc,3des-ctr,3des-cbc,blowfish-cbc,aes192-ctr,aes192-cbc,aes256-ctr,aes256-cbc"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "mac.s2c"

    const-string v2, "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "mac.c2s"

    const-string v2, "hmac-md5,hmac-sha1,hmac-sha2-256,hmac-sha1-96,hmac-md5-96"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "compression.s2c"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "compression.c2s"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "lang.s2c"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "lang.c2s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "compression_level"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha1"

    const-string v2, "com.jcraft.jsch.DHGEX"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group1-sha1"

    const-string v2, "com.jcraft.jsch.DHG1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group14-sha1"

    const-string v2, "com.jcraft.jsch.DHG14"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "diffie-hellman-group-exchange-sha256"

    const-string v2, "com.jcraft.jsch.DHGEX256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp256"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp384"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdsa-sha2-nistp521"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp256"

    const-string v2, "com.jcraft.jsch.DHEC256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp384"

    const-string v2, "com.jcraft.jsch.DHEC384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp521"

    const-string v2, "com.jcraft.jsch.DHEC521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ecdh-sha2-nistp"

    const-string v2, "com.jcraft.jsch.jce.ECDHN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "dh"

    const-string v2, "com.jcraft.jsch.jce.DH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "3des-cbc"

    const-string v2, "com.jcraft.jsch.jce.TripleDESCBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "blowfish-cbc"

    const-string v2, "com.jcraft.jsch.jce.BlowfishCBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "hmac-sha1-96"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA196"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "hmac-sha2-256"

    const-string v2, "com.jcraft.jsch.jce.HMACSHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "hmac-md5"

    const-string v2, "com.jcraft.jsch.jce.HMACMD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "hmac-md5-96"

    const-string v2, "com.jcraft.jsch.jce.HMACMD596"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "sha-1"

    const-string v2, "com.jcraft.jsch.jce.SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "sha-256"

    const-string v2, "com.jcraft.jsch.jce.SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "sha-384"

    const-string v2, "com.jcraft.jsch.jce.SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "sha-512"

    const-string v2, "com.jcraft.jsch.jce.SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "md5"

    const-string v2, "com.jcraft.jsch.jce.MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "signature.dss"

    const-string v2, "com.jcraft.jsch.jce.SignatureDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "signature.rsa"

    const-string v2, "com.jcraft.jsch.jce.SignatureRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "signature.ecdsa"

    const-string v2, "com.jcraft.jsch.jce.SignatureECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "keypairgen.dsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "keypairgen.rsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "keypairgen.ecdsa"

    const-string v2, "com.jcraft.jsch.jce.KeyPairGenECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "random"

    const-string v2, "com.jcraft.jsch.jce.Random"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "none"

    const-string v2, "com.jcraft.jsch.CipherNone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes128-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES128CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes192-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES192CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes256-cbc"

    const-string v2, "com.jcraft.jsch.jce.AES256CBC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes128-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES128CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes192-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES192CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "aes256-ctr"

    const-string v2, "com.jcraft.jsch.jce.AES256CTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "3des-ctr"

    const-string v2, "com.jcraft.jsch.jce.TripleDESCTR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "arcfour"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "arcfour128"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR128"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "arcfour256"

    const-string v2, "com.jcraft.jsch.jce.ARCFOUR256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "userauth.none"

    const-string v2, "com.jcraft.jsch.UserAuthNone"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "userauth.password"

    const-string v2, "com.jcraft.jsch.UserAuthPassword"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "userauth.keyboard-interactive"

    const-string v2, "com.jcraft.jsch.UserAuthKeyboardInteractive"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "userauth.publickey"

    const-string v2, "com.jcraft.jsch.UserAuthPublicKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "userauth.gssapi-with-mic"

    const-string v2, "com.jcraft.jsch.UserAuthGSSAPIWithMIC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "gssapi-with-mic.krb5"

    const-string v2, "com.jcraft.jsch.jgss.GSSContextKrb5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "zlib"

    const-string v2, "com.jcraft.jsch.jcraft.Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "zlib@openssh.com"

    const-string v2, "com.jcraft.jsch.jcraft.Compression"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "pbkdf"

    const-string v2, "com.jcraft.jsch.jce.PBKDF"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "StrictHostKeyChecking"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "HashKnownHosts"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "PreferredAuthentications"

    const-string v2, "gssapi-with-mic,publickey,keyboard-interactive,password"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "CheckCiphers"

    const-string v2, "aes256-ctr,aes192-ctr,aes128-ctr,aes256-cbc,aes192-cbc,aes128-cbc,3des-ctr,arcfour,arcfour128,arcfour256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "CheckKexes"

    const-string v2, "diffie-hellman-group14-sha1,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "CheckSignatures"

    const-string v2, "ecdsa-sha2-nistp256,ecdsa-sha2-nistp384,ecdsa-sha2-nistp521"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "MaxAuthTries"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    const-string v1, "ClearAllForwardings"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/jcraft/jsch/JSch$1;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch$1;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/JSch;->rthrthrtjrtjrjtdcbcvbc:Lcom/jcraft/jsch/Logger;

    sget-object v0, Lcom/jcraft/jsch/JSch;->rthrthrtjrtjrjtdcbcvbc:Lcom/jcraft/jsch/Logger;

    sput-object v0, Lcom/jcraft/jsch/JSch;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->zxcvxvsdvsvsvs:Ljava/util/Vector;

    new-instance v0, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/LocalIdentityRepository;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef:Lcom/jcraft/jsch/IdentityRepository;

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->hukuiluliulu:Lcom/jcraft/jsch/ConfigRepository;

    iput-object v1, p0, Lcom/jcraft/jsch/JSch;->eryryhrtytujrtujrurt:Lcom/jcraft/jsch/HostKeyRepository;

    return-void
.end method

.method public static sdfsdfsdfsdf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static serfwefewfwefewef()Lcom/jcraft/jsch/Logger;
    .locals 1

    sget-object v0, Lcom/jcraft/jsch/JSch;->sdfsdfsdfsdf:Lcom/jcraft/jsch/Logger;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized fsafsdfsfsdfsfsdfsd()Lcom/jcraft/jsch/IdentityRepository;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "host must not be null."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jcraft/jsch/Session;-><init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;[B)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    new-array v1, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/jcraft/jsch/Identity;->fsafsdfsfsdfsfsdfsd([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    instance-of v0, v0, Lcom/jcraft/jsch/LocalIdentityRepository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    check-cast v0, Lcom/jcraft/jsch/LocalIdentityRepository;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/LocalIdentityRepository;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->zxcvxvsdvsvsvs([B)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->serfwefewfwefewef()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->hukuiluliulu()Lcom/jcraft/jsch/KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/KeyPair;->fsafsdfsfsdfsfsdfsd()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/IdentityRepository;->fsafsdfsfsdfsfsdfsd([B)Z

    goto :goto_0

    :cond_2
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    instance-of v0, v0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/IdentityRepository;)V

    :cond_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;

    check-cast v0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move-object p2, v1

    goto :goto_1
.end method

.method public declared-synchronized fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->serfwefewfwefewef:Lcom/jcraft/jsch/IdentityRepository;

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/jcraft/jsch/JSch;->sdvsdvsvsevsvsev:Lcom/jcraft/jsch/IdentityRepository;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Session;)V
    .locals 2

    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->zxcvxvsdvsvsvs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->zxcvxvsdvsvsvs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[B)V

    return-void
.end method

.method public fsafsdfsfsdfsfsdfsd(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/jcraft/jsch/IdentityFile;->fsafsdfsfsdfsfsdfsd(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jcraft/jsch/JSch;->fsafsdfsfsdfsfsdfsd(Lcom/jcraft/jsch/Identity;[B)V

    return-void
.end method

.method public sdfsdfsdfsdf()Lcom/jcraft/jsch/ConfigRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->hukuiluliulu:Lcom/jcraft/jsch/ConfigRepository;

    return-object v0
.end method

.method protected sdfsdfsdfsdf(Lcom/jcraft/jsch/Session;)Z
    .locals 2

    iget-object v1, p0, Lcom/jcraft/jsch/JSch;->zxcvxvsdvsvsvs:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->zxcvxvsdvsvsvs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zxcvxvsdvsvsvs()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->eryryhrtytujrtujrurt:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    iput-object v0, p0, Lcom/jcraft/jsch/JSch;->eryryhrtytujrtujrurt:Lcom/jcraft/jsch/HostKeyRepository;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/JSch;->eryryhrtytujrtujrurt:Lcom/jcraft/jsch/HostKeyRepository;

    return-object v0
.end method
