.class public Linstall/app/OnItemSelectedListenerMulticastd;
.super Linstall/app/MulticastListenerd;
.source "OnItemSelectedListenerMulticastd.java"

# interfaces
.implements Linstall/app/OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/MulticastListenerd",
        "<",
        "Linstall/app/OnItemSelectedListener;",
        ">;",
        "Linstall/app/OnItemSelectedListener;"
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
.method public onItemSelected(Linstall/app/AdapterView;Linstall/app/View;IJ)V
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
    .line 13
    .local p1, "arg0":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    iget-object v1, p0, Linstall/app/OnItemSelectedListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    return-void
.end method

.method public onNothingSelected(Linstall/app/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "arg0":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    iget-object v1, p0, Linstall/app/OnItemSelectedListenerMulticastd;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    return-void
.end method

.method public registerToView(Linstall/app/View;)V
    .locals 0
    .param p1, "v"    # Linstall/app/View;

    .prologue
    .line 10
    return-void
.end method
