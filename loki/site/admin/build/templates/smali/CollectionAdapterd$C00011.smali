.class Linstall/app/CollectionAdapterd$C00011;
.super Ljava/lang/Object;
.source "CollectionAdapterd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CollectionAdapterd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00011"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/CollectionAdapterd;


# direct methods
.method constructor <init>(Linstall/app/CollectionAdapterd;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/CollectionAdapterd;

    .prologue
    .line 12
    iput-object p1, p0, Linstall/app/CollectionAdapterd$C00011;->this$0:Linstall/app/CollectionAdapterd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Linstall/app/CollectionAdapterd$C00011;->this$0:Linstall/app/CollectionAdapterd;

    invoke-virtual {v0}, Linstall/app/CollectionAdapterd;->notifyDataSetChanged()V

    .line 17
    return-void
.end method
