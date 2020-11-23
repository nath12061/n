.class public Linstall/app/OnItemClickListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnItemClickListenerMulticastd.java"

# interfaces
.implements Linstall/app/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/OnItemClickListener;",
        ">;",
        "Linstall/app/OnItemClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Linstall/app/MulticastListenerd;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Linstall/app/AdapterView;Linstall/app/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Linstall/app/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AdapterView",
            "<*>;",
            "Linstall/app/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "arg0":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    iget-object v1, p0, Linstall/app/OnItemClickListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    return-void
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 0
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 18
    return-void
.end method
