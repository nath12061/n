.class public abstract Linstall/app/AbstractAjaxCallback;
.super Ljava/lang/Object;
.source "AbstractAjaxCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AGENT:Ljava/lang/String; = null

.field private static final DEFAULT_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static GZIP:Z = false

.field private static NETWORK_POOL:I = 0x0

.field private static NET_TIMEOUT:I = 0x0

.field private static REUSE_CLIENT:Z = false

.field private static final boundary:Ljava/lang/String; = "*****"

.field private static fetchExe:Ljava/util/concurrent/ExecutorService; = null

.field private static lastStatus:I = 0x0

.field private static final lineEnd:Ljava/lang/String; = "\r\n"

.field private static ssf:Linstall/app/SocketFactory; = null

.field private static st:Linstall/app/Transformer; = null

.field private static final twoHyphens:Ljava/lang/String; = "--"


# instance fields
.field private act:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Linstall/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Linstall/app/AccountHandle;

.field private blocked:Z

.field private cacheDir:Ljava/io/File;

.field private callback:Ljava/lang/String;

.field private completed:Z

.field private cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private expire:J

.field protected fileCache:Z

.field private handler:Ljava/lang/Object;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected memCache:Z

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private policy:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private reauth:Z

.field private refresh:Z

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected status:Linstall/app/AjaxStatus;

.field private targetFile:Ljava/io/File;

.field private transformer:Linstall/app/Transformer;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private uiCallback:Z

.field private url:Ljava/lang/String;

.field private whandler:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    sput-object v3, Linstall/app/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Linstall/app/AjaxStatus;

    aput-object v2, v0, v1

    sput-object v0, Linstall/app/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    .line 12
    sput-boolean v4, Linstall/app/AbstractAjaxCallback;->GZIP:Z

    .line 13
    const/16 v0, 0x19

    sput v0, Linstall/app/AbstractAjaxCallback;->NETWORK_POOL:I

    .line 14
    const/16 v0, 0x7530

    sput v0, Linstall/app/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 15
    sput-boolean v4, Linstall/app/AbstractAjaxCallback;->REUSE_CLIENT:Z

    .line 18
    sput-object v3, Linstall/app/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 19
    const/16 v0, 0xc8

    sput v0, Linstall/app/AbstractAjaxCallback;->lastStatus:I

    .line 21
    sput-object v3, Linstall/app/AbstractAjaxCallback;->ssf:Linstall/app/SocketFactory;

    .line 22
    sput-object v3, Linstall/app/AbstractAjaxCallback;->st:Linstall/app/Transformer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "UTF-8"

    iput-object v0, p0, Linstall/app/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Linstall/app/AbstractAjaxCallback;->policy:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Linstall/app/AbstractAjaxCallback;->uiCallback:Z

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .local p0, "this":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<TT;TK;>;"
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Linstall/app/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 58
    iput-object v0, p0, Linstall/app/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Linstall/app/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 60
    return-void
.end method

.method public static setAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "agent"    # Ljava/lang/String;

    .prologue
    .line 67
    sput-object p0, Linstall/app/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static setGZip(Z)V
    .locals 0
    .param p0, "gzip"    # Z

    .prologue
    .line 71
    sput-boolean p0, Linstall/app/AbstractAjaxCallback;->GZIP:Z

    .line 72
    return-void
.end method

.method public static setTimeout(I)V
    .locals 0
    .param p0, "timeout"    # I

    .prologue
    .line 63
    sput p0, Linstall/app/AbstractAjaxCallback;->NET_TIMEOUT:I

    .line 64
    return-void
.end method

.method public static setTransformer(Linstall/app/Transformer;)V
    .locals 0
    .param p0, "transformer"    # Linstall/app/Transformer;

    .prologue
    .line 75
    sput-object p0, Linstall/app/AbstractAjaxCallback;->st:Linstall/app/Transformer;

    .line 76
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<TT;TK;>;"
    iget-object v0, p0, Linstall/app/AbstractAjaxCallback;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "handler"    # Ljava/lang/Object;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Linstall/app/AbstractAjaxCallback;, "Linstall/app/AbstractAjaxCallback<TT;TK;>;"
    const/4 v1, 0x0

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Linstall/app/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 84
    iput-object p2, p0, Linstall/app/AbstractAjaxCallback;->callback:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Linstall/app/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 87
    return-object v1
.end method
