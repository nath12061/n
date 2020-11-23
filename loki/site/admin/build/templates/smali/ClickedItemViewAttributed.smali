.class public Linstall/app/ClickedItemViewAttributed;
.super Landroid/app/Activity;
.source "ClickedItemViewAttributed.java"


# static fields
.field static final RESULT_ENABLE:I = 0x1


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field compName:Landroid/content/ComponentName;

.field deviceManger:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 24
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
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
    .line 38
    .local p1, "parent":Linstall/app/AdapterView;, "Linstall/app/AdapterView<*>;"
    return-void
.end method
