.class public abstract Linstall/app/BindingProvider;
.super Ljava/lang/Object;
.source "BindingProvider.java"


# static fields
.field public static final BindingNamespace:Ljava/lang/String; = "http://www.gueei.com/android-binding/"


# instance fields
.field private gueei:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bind(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;)V
.end method

.method protected final bindAttributeWithObservable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewAttributeName"    # Ljava/lang/String;
    .param p3, "statement"    # Ljava/lang/String;
    .param p4, "model"    # Ljava/lang/Object;

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method protected final bindCommand(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;
    .param p4, "commandName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Linstall/app/BindingMap;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Linstall/app/MulticastListener",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p5, "multicastType":Ljava/lang/Class;, "Ljava/lang/Class<+Linstall/app/MulticastListener<*>;>;"
    return-void
.end method

.method protected final bindViewAttribute(Landroid/view/View;Linstall/app/BindingMap;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "map"    # Linstall/app/BindingMap;
    .param p3, "model"    # Ljava/lang/Object;
    .param p4, "attrName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p2, p4}, Linstall/app/BindingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p2, p4}, Linstall/app/BindingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, v0, p3}, Linstall/app/BindingProvider;->bindAttributeWithObservable(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 24
    :cond_0
    return-void
.end method

.method public abstract createAttributeForView(Landroid/view/View;Ljava/lang/String;)Linstall/app/ViewAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Tv:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Linstall/app/ViewAttribute",
            "<TTv;*>;"
        }
    .end annotation
.end method
