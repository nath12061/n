.class public Linstall/app/LogConfigurationException;
.super Ljava/lang/RuntimeException;
.source "LogConfigurationException.java"


# instance fields
.field protected cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Linstall/app/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 22
    iput-object p2, p0, Linstall/app/LogConfigurationException;->cause:Ljava/lang/Throwable;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 16
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Linstall/app/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Linstall/app/LogConfigurationException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
