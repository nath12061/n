.class Linstall/app/STITCHd$1;
.super Linstall/app/CombinedAdapterd;
.source "STITCHd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/STITCHd;->calculateValue([Ljava/lang/Object;)Linstall/app/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/STITCHd;


# direct methods
.method constructor <init>(Linstall/app/STITCHd;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/STITCHd;

    .prologue
    .line 13
    iput-object p1, p0, Linstall/app/STITCHd$1;->this$0:Linstall/app/STITCHd;

    invoke-direct {p0}, Linstall/app/CombinedAdapterd;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILinstall/app/View;Linstall/app/ViewGroup;)Linstall/app/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "view"    # Linstall/app/View;
    .param p3, "viewGroup"    # Linstall/app/ViewGroup;

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
