.class public Linstall/app/TabHost$TabSpec;
.super Ljava/lang/Object;
.source "TabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/TabHost;


# direct methods
.method constructor <init>(Linstall/app/TabHost;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/TabHost;

    .prologue
    .line 14
    iput-object p1, p0, Linstall/app/TabHost$TabSpec;->this$0:Linstall/app/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setContent(I)Linstall/app/TabHost$TabSpec;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Linstall/app/Intent;)Linstall/app/TabHost$TabSpec;
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Linstall/app/TabHost$TabContentFactory;)Linstall/app/TabHost$TabSpec;
    .locals 2
    .param p1, "contentFactory"    # Linstall/app/TabHost$TabContentFactory;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Linstall/app/TabHost$TabSpec;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Linstall/app/Drawable;)Linstall/app/TabHost$TabSpec;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Linstall/app/Drawable;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
