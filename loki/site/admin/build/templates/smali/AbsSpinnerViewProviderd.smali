.class public Linstall/app/AbsSpinnerViewProviderd;
.super Linstall/app/BindingProviderd;
.source "AbsSpinnerViewProviderd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Linstall/app/BindingProviderd;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;)V
    .locals 0
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 12
    return-void
.end method

.method public createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "attributeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Linstall/app/View;",
            ">(",
            "Linstall/app/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttributed",
            "<TTv;*>;"
        }
    .end annotation

    .prologue
    .line 6
    const/4 v0, 0x0

    return-object v0
.end method
