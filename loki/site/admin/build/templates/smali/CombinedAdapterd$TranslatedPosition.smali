.class Linstall/app/CombinedAdapterd$TranslatedPosition;
.super Ljava/lang/Object;
.source "CombinedAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CombinedAdapterd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslatedPosition"
.end annotation


# instance fields
.field public final adapter:Linstall/app/Adapter;

.field public final position:I

.field final synthetic this$0:Linstall/app/CombinedAdapterd;


# direct methods
.method public constructor <init>(Linstall/app/CombinedAdapterd;ILinstall/app/Adapter;)V
    .locals 0
    .param p2, "pos"    # I
    .param p3, "adapter"    # Linstall/app/Adapter;

    .prologue
    .line 16
    iput-object p1, p0, Linstall/app/CombinedAdapterd$TranslatedPosition;->this$0:Linstall/app/CombinedAdapterd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Linstall/app/CombinedAdapterd$TranslatedPosition;->position:I

    .line 18
    iput-object p3, p0, Linstall/app/CombinedAdapterd$TranslatedPosition;->adapter:Linstall/app/Adapter;

    .line 19
    return-void
.end method
