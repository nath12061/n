.class public abstract Linstall/app/ItemSourceViewAttributed;
.super Linstall/app/Activity;
.source "ItemSourceViewAttributed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Linstall/app/CursorRowTypeMapd;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    .line 47
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    goto :goto_0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 14
    if-eqz p1, :cond_0

    .line 15
    instance-of v1, p1, Linstall/app/Adapter;

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const/4 v0, -0x1

    .line 26
    .local v0, "spinnerTemplate":I
    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
