.class public Linstall/app/Cameras$Size;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/Cameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Linstall/app/Cameras;

.field public width:I


# direct methods
.method public constructor <init>(Linstall/app/Cameras;II)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/Cameras;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 107
    iput-object p1, p0, Linstall/app/Cameras$Size;->this$0:Linstall/app/Cameras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
