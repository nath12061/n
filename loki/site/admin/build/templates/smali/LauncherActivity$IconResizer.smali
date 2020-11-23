.class public Linstall/app/LauncherActivity$IconResizer;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconResizer"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/LauncherActivity;


# direct methods
.method public constructor <init>(Linstall/app/LauncherActivity;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/LauncherActivity;

    .prologue
    .line 8
    iput-object p1, p0, Linstall/app/LauncherActivity$IconResizer;->this$0:Linstall/app/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createIconThumbnail(Linstall/app/Drawable;)Linstall/app/Drawable;
    .locals 2
    .param p1, "icon"    # Linstall/app/Drawable;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
