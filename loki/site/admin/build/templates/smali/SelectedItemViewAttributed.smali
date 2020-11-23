.class public Linstall/app/SelectedItemViewAttributed;
.super Landroid/app/Activity;
.source "SelectedItemViewAttributed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    .line 34
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Linstall/app/BindingTyped;->TwoWay:Linstall/app/BindingTyped;

    return-object v0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    return-void
.end method

.method public onItemSelected(Linstall/app/AdapterView;Linstall/app/View;IJ)V
    .locals 0
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
    .line 27
    .local p1, "adapterView":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    return-void
.end method
