.class public Linstall/app/ClickedIdViewAttributed;
.super Landroid/app/Activity;
.source "ClickedIdViewAttributed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 17
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method

.method public onItemClick(Linstall/app/AdapterView;Linstall/app/View;IJ)V
    .locals 0
    .param p2, "view"    # Linstall/app/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 21
    .local p1, "parent":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    return-void
.end method
