.class public abstract Linstall/app/SecureManagerBase;
.super Ljava/lang/Object;
.source "SecureManagerBase.java"


# static fields
.field public static final CERTIFICATE_TYPE_X509:Ljava/lang/String; = "X509"

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "123456"

.field public static final SSL_STORAGE_TYPE_BKS:Ljava/lang/String; = "BKS"


# instance fields
.field private ksKeysAndCert:Ljava/security/KeyStore;

.field private storePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Linstall/app/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    .line 13
    iput-object v0, p0, Linstall/app/SecureManagerBase;->storePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "Path"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v1, "CNet"

    .line 20
    .local v1, "str":Ljava/lang/String;
    const-string v2, "CNet"

    .line 21
    .local v2, "str2":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Linstall/app/SecureManagerBase;->storePath:Ljava/lang/String;

    .line 23
    const-string v2, "CNet"

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    const-string v2, "CNet"

    .line 27
    const-string v3, "123456"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 32
    .local v0, "passphrase":[C
    :goto_0
    const-string v2, "CNet"

    .line 33
    const-string v3, "BKS"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Linstall/app/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    .line 34
    const-string v2, "CNet"

    .line 35
    iget-object v3, p0, Linstall/app/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Linstall/app/SecureManagerBase;->storePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 36
    const-string v2, "CNet"

    .line 37
    iget-object v3, p0, Linstall/app/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    invoke-virtual {p0, v3, v0}, Linstall/app/SecureManagerBase;->initManagerFactory(Ljava/security/KeyStore;[C)V

    .line 38
    return-void

    .line 29
    .end local v0    # "passphrase":[C
    :cond_1
    const-string v2, "CNet"

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .restart local v0    # "passphrase":[C
    goto :goto_0
.end method

.method protected abstract initManagerFactory(Ljava/security/KeyStore;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
