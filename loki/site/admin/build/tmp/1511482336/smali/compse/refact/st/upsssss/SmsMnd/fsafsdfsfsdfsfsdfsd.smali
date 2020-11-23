.class Lcompse/refact/st/upsssss/SmsMnd/fsafsdfsfsdfsfsdfsd;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/SmsMnd/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcompse/refact/st/upsssss/SmsMnd/fsafsdfsfsdfsfsdfsd;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;

    invoke-virtual {v0}, Lcompse/refact/st/upsssss/SmsMnd/Smsmnd;->fsafsdfsfsdfsfsdfsd()V

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method
