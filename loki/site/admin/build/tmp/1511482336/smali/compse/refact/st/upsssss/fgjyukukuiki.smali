.class Lcompse/refact/st/upsssss/fgjyukukuiki;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/DeleteApps;


# direct methods
.method constructor <init>(Lcompse/refact/st/upsssss/DeleteApps;)V
    .locals 0

    iput-object p1, p0, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/DeleteApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs fsafsdfsfsdfsfsdfsd([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcompse/refact/st/upsssss/fgjyukukuiki;->fsafsdfsfsdfsfsdfsd:Lcompse/refact/st/upsssss/DeleteApps;

    invoke-virtual {v0}, Lcompse/refact/st/upsssss/DeleteApps;->fsafsdfsfsdfsfsdfsd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
