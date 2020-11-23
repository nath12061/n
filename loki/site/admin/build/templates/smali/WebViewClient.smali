.class public Linstall/app/WebViewClient;
.super Ljava/lang/Object;
.source "WebViewClient.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Linstall/app/WebView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFormResubmission(Linstall/app/WebView;Linstall/app/Message;Linstall/app/Message;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "dontResend"    # Linstall/app/Message;
    .param p3, "resend"    # Linstall/app/Message;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLoadResource(Linstall/app/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageFinished(Linstall/app/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageStarted(Linstall/app/WebView;Ljava/lang/String;Linstall/app/Bitmap;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Linstall/app/Bitmap;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReceivedError(Linstall/app/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReceivedHttpAuthRequest(Linstall/app/WebView;Linstall/app/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "handler"    # Linstall/app/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onScaleChanged(Linstall/app/WebView;FF)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTooManyRedirects(Linstall/app/WebView;Linstall/app/Message;Linstall/app/Message;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "cancelMsg"    # Linstall/app/Message;
    .param p3, "continueMsg"    # Linstall/app/Message;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onUnhandledKeyEvent(Linstall/app/WebView;Linstall/app/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldOverrideKeyEvent(Linstall/app/WebView;Linstall/app/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldOverrideUrlLoading(Linstall/app/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
