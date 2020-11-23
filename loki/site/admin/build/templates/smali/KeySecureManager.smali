.class public Linstall/app/KeySecureManager;
.super Linstall/app/SecureManagerBase;
.source "KeySecureManager.java"


# instance fields
.field private kmf:Ljavax/net/ssl/KeyManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/SecureManagerBase;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    return-void
.end method


# virtual methods
.method public getKetManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Linstall/app/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method protected initManagerFactory(Ljava/security/KeyStore;[C)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "passphrase"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 12
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    iput-object v0, p0, Linstall/app/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    .line 13
    iget-object v0, p0, Linstall/app/KeySecureManager;->kmf:Ljavax/net/ssl/KeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 14
    return-void
.end method
