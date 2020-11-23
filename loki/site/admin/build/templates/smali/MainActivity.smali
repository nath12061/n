.class public abstract Linstall/app/MainActivity;
.super Linstall/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Linstall/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Linstall/app/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Linstall/app/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Linstall/app/Activity;->onCreate(Linstall/app/Bundle;)V

    .line 13
    return-void
.end method
