.class public Linstall/app/WebImage;
.super Linstall/app/WebViewClient;
.source "WebImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/WebImage$C00001;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static template:Ljava/lang/String;


# instance fields
.field private color:I

.field private control:Z

.field private progress:Ljava/lang/Object;

.field private url:Ljava/lang/String;

.field private wv:Linstall/app/WebView;

.field private zoom:Z


# direct methods
.method public constructor <init>(Linstall/app/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .locals 0
    .param p1, "wv"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "progress"    # Ljava/lang/Object;
    .param p4, "zoom"    # Z
    .param p5, "control"    # Z
    .param p6, "color"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Linstall/app/WebViewClient;-><init>()V

    .line 45
    iput-object p1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    .line 46
    iput-object p2, p0, Linstall/app/WebImage;->url:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Linstall/app/WebImage;->progress:Ljava/lang/Object;

    .line 48
    iput-boolean p4, p0, Linstall/app/WebImage;->zoom:Z

    .line 49
    iput-boolean p5, p0, Linstall/app/WebImage;->control:Z

    .line 50
    iput p6, p0, Linstall/app/WebImage;->color:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Linstall/app/WebImage;)Linstall/app/WebView;
    .locals 1
    .param p0, "x0"    # Linstall/app/WebImage;

    .prologue
    .line 5
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    return-object v0
.end method

.method static synthetic access$100(Linstall/app/WebImage;)V
    .locals 0
    .param p0, "x0"    # Linstall/app/WebImage;

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/WebImage;->setup()V

    return-void
.end method

.method private delaySetup()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    new-instance v1, Linstall/app/WebImage$C00001;

    invoke-direct {v1, p0}, Linstall/app/WebImage$C00001;-><init>(Linstall/app/WebImage;)V

    invoke-virtual {v0, v1}, Linstall/app/WebView;->setPictureListener(Linstall/app/WebView$PictureListener;)V

    .line 81
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Linstall/app/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    iget v1, p0, Linstall/app/WebImage;->color:I

    invoke-virtual {v0, v1}, Linstall/app/WebView;->setBackgroundColor(I)V

    .line 83
    return-void
.end method

.method private static disableZoomControl(Linstall/app/WebView;)V
    .locals 0
    .param p0, "wv"    # Linstall/app/WebView;

    .prologue
    .line 115
    return-void
.end method

.method private done(Linstall/app/WebView;)V
    .locals 1
    .param p1, "view"    # Linstall/app/WebView;

    .prologue
    .line 93
    iget-object v0, p0, Linstall/app/WebImage;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linstall/app/WebView;->setWebViewClient(Linstall/app/WebViewClient;)V

    .line 98
    return-void
.end method

.method private static fixWebviewTip(Linstall/app/Context;)V
    .locals 4
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    const/4 v3, 0x0

    .line 38
    const-string v1, "WebViewSettings"

    invoke-virtual {p0, v1, v3}, Linstall/app/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    check-cast v0, Linstall/app/SharedPreferences;

    .line 39
    .local v0, "prefs":Linstall/app/SharedPreferences;
    const-string v1, "double_tap_toast_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Linstall/app/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 40
    invoke-interface {v0}, Linstall/app/SharedPreferences;->edit()Linstall/app/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "double_tap_toast_count"

    invoke-interface {v1, v2, v3}, Linstall/app/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Linstall/app/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Linstall/app/SharedPreferences$Editor;->commit()Z

    .line 42
    :cond_0
    return-void
.end method

.method private static getSource(Linstall/app/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Linstall/app/Context;

    .prologue
    .line 27
    sget-object v1, Linstall/app/WebImage;->template:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 29
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Linstall/app/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com/androidquery/util/web_image.html"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Linstall/app/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Linstall/app/WebImage;->template:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    sget-object v1, Linstall/app/WebImage;->template:Ljava/lang/String;

    return-object v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Linstall/app/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setup()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v0}, Linstall/app/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Linstall/app/Context;

    invoke-static {v0}, Linstall/app/WebImage;->getSource(Linstall/app/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@src"

    iget-object v4, p0, Linstall/app/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@color"

    iget v4, p0, Linstall/app/WebImage;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v0, p0}, Linstall/app/WebView;->setWebViewClient(Linstall/app/WebViewClient;)V

    .line 88
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Linstall/app/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    iget v1, p0, Linstall/app/WebImage;->color:I

    invoke-virtual {v0, v1}, Linstall/app/WebView;->setBackgroundColor(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public load()V
    .locals 5

    .prologue
    const v4, 0x40ff0001

    const/4 v3, 0x1

    .line 54
    iget-object v1, p0, Linstall/app/WebImage;->url:Ljava/lang/String;

    iget-object v2, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v2, v4}, Linstall/app/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    iget-object v2, p0, Linstall/app/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Linstall/app/WebView;->setTag(ILjava/lang/Object;)V

    .line 57
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v1, v3}, Linstall/app/WebView;->setDrawingCacheEnabled(Z)V

    .line 59
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v1}, Linstall/app/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Linstall/app/Context;

    invoke-static {v1}, Linstall/app/WebImage;->fixWebviewTip(Linstall/app/Context;)V

    .line 60
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v1}, Linstall/app/WebView;->getSettings()Linstall/app/WebSettings;

    move-result-object v0

    .line 61
    .local v0, "ws":Linstall/app/WebSettings;
    iget-boolean v1, p0, Linstall/app/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Linstall/app/WebSettings;->setSupportZoom(Z)V

    .line 62
    iget-boolean v1, p0, Linstall/app/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Linstall/app/WebSettings;->setBuiltInZoomControls(Z)V

    .line 63
    iget-boolean v1, p0, Linstall/app/WebImage;->control:Z

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-static {v1}, Linstall/app/WebImage;->disableZoomControl(Linstall/app/WebView;)V

    .line 66
    :cond_0
    invoke-virtual {v0, v3}, Linstall/app/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    iget v2, p0, Linstall/app/WebImage;->color:I

    invoke-virtual {v1, v2}, Linstall/app/WebView;->setBackgroundColor(I)V

    .line 68
    iget-object v1, p0, Linstall/app/WebImage;->progress:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 71
    :cond_1
    iget-object v1, p0, Linstall/app/WebImage;->wv:Linstall/app/WebView;

    invoke-virtual {v1}, Linstall/app/WebView;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    .line 72
    invoke-direct {p0}, Linstall/app/WebImage;->setup()V

    .line 77
    .end local v0    # "ws":Linstall/app/WebSettings;
    :cond_2
    :goto_0
    return-void

    .line 74
    .restart local v0    # "ws":Linstall/app/WebSettings;
    :cond_3
    invoke-direct {p0}, Linstall/app/WebImage;->delaySetup()V

    goto :goto_0
.end method

.method public onPageFinished(Linstall/app/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Linstall/app/WebImage;->done(Linstall/app/WebView;)V

    .line 102
    return-void
.end method

.method public onReceivedError(Linstall/app/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Linstall/app/WebImage;->done(Linstall/app/WebView;)V

    .line 106
    return-void
.end method

.method public onScaleChanged(Linstall/app/WebView;FF)V
    .locals 0
    .param p1, "view"    # Linstall/app/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 109
    return-void
.end method
