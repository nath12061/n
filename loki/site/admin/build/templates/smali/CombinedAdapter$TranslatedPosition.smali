.class Linstall/app/CombinedAdapter$TranslatedPosition;
.super Ljava/lang/Object;
.source "CombinedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/CombinedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslatedPosition"
.end annotation


# instance fields
.field public final adapter:Landroid/widget/Adapter;

.field public final position:I

.field final synthetic this$0:Linstall/app/CombinedAdapter;


# direct methods
.method public constructor <init>(Linstall/app/CombinedAdapter;ILandroid/widget/Adapter;)V
    .locals 0
    .param p2, "pos"    # I
    .param p3, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 17
    iput-object p1, p0, Linstall/app/CombinedAdapter$TranslatedPosition;->this$0:Linstall/app/CombinedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Linstall/app/CombinedAdapter$TranslatedPosition;->position:I

    .line 19
    iput-object p3, p0, Linstall/app/CombinedAdapter$TranslatedPosition;->adapter:Landroid/widget/Adapter;

    .line 20
    return-void
.end method
