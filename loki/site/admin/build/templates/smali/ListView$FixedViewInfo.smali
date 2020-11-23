.class public Linstall/app/ListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Linstall/app/ListView;

.field public view:Linstall/app/View;


# direct methods
.method public constructor <init>(Linstall/app/ListView;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/ListView;

    .prologue
    .line 13
    iput-object p1, p0, Linstall/app/ListView$FixedViewInfo;->this$0:Linstall/app/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
