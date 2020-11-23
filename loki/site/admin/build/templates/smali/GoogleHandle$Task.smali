.class Linstall/app/GoogleHandle$Task;
.super Linstall/app/AsyncTask;
.source "GoogleHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/GoogleHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Linstall/app/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/GoogleHandle;


# direct methods
.method private constructor <init>(Linstall/app/GoogleHandle;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    invoke-direct {p0}, Linstall/app/AsyncTask;-><init>()V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Linstall/app/GoogleHandle;Linstall/app/GoogleHandle$1;)V
    .locals 0
    .param p1, "x0"    # Linstall/app/GoogleHandle;
    .param p2, "x1"    # Linstall/app/GoogleHandle$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Linstall/app/GoogleHandle$Task;-><init>(Linstall/app/GoogleHandle;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Linstall/app/Bundle;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 27
    .local v0, "bundle":Linstall/app/Bundle;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Linstall/app/GoogleHandle$Task;->doInBackground([Ljava/lang/String;)Linstall/app/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Linstall/app/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Linstall/app/Bundle;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Linstall/app/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    iget-object v1, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    # getter for: Linstall/app/GoogleHandle;->act:Linstall/app/Activity;
    invoke-static {v1}, Linstall/app/GoogleHandle;->access$000(Linstall/app/GoogleHandle;)Linstall/app/Activity;

    move-result-object v1

    const/16 v2, -0x66

    const-string v3, "rejected"

    invoke-virtual {v0, v1, v2, v3}, Linstall/app/GoogleHandle;->failure(Linstall/app/Context;ILjava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Linstall/app/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Linstall/app/GoogleHandle;->token:Ljava/lang/String;
    invoke-static {v0, v1}, Linstall/app/GoogleHandle;->access$102(Linstall/app/GoogleHandle;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    iget-object v0, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    iget-object v1, p0, Linstall/app/GoogleHandle$Task;->this$0:Linstall/app/GoogleHandle;

    # getter for: Linstall/app/GoogleHandle;->act:Linstall/app/Activity;
    invoke-static {v1}, Linstall/app/GoogleHandle;->access$000(Linstall/app/GoogleHandle;)Linstall/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Linstall/app/GoogleHandle;->success(Linstall/app/Context;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Linstall/app/Bundle;

    invoke-virtual {p0, p1}, Linstall/app/GoogleHandle$Task;->onPostExecute(Linstall/app/Bundle;)V

    return-void
.end method
