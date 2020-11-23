.class Linstall/app/CollectionAdapter$C00011;
.super Ljava/lang/Object;
.source "CollectionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00011"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CollectionAdapter;


# direct methods
.method constructor <init>(Linstall/app/CollectionAdapter;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/CollectionAdapter;

    .prologue
    .line 22
    iput-object p1, p0, Linstall/app/CollectionAdapter$C00011;->this$0:Linstall/app/CollectionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Linstall/app/CollectionAdapter$C00011;->this$0:Linstall/app/CollectionAdapter;

    invoke-virtual {v0}, Linstall/app/CollectionAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method
