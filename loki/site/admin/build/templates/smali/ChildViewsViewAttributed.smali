.class public Linstall/app/ChildViewsViewAttributed;
.super Landroid/app/Activity;
.source "ChildViewsViewAttributed.java"


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
.method public get()[Linstall/app/View;
    .locals 1

    .prologue
    .line 29
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
