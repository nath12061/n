.class public abstract Linstall/app/BindingProviderd;
.super Ljava/lang/Object;
.source "BindingProviderd.java"


# static fields
.field public static final BindingNamespace:Ljava/lang/String; = "http://www.gueei.com/android-binding/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bind(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;)V
.end method

.method protected final bindCommand(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;
    .param p4, "commandName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/View;",
            "Linstall/app/BindingMapd;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Linstall/app/MulticastListenerd",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, "multicastType":Ljava/lang/Class;, "Ljava/lang/Class<+Linstall/app/MulticastListenerd<*>;>;"
    invoke-virtual {p2, p4}, Linstall/app/BindingMapd;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p2, p4}, Linstall/app/BindingMapd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p3}, Linstall/app/Utilityd;->getCommandForModel(Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Commandd;

    move-result-object v0

    .line 20
    .local v0, "command":Linstall/app/Commandd;
    if-eqz v0, :cond_0

    .line 27
    .end local v0    # "command":Linstall/app/Commandd;
    :cond_0
    return-void
.end method

.method protected final bindViewAttribute(Linstall/app/View;Linstall/app/BindingMapd;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Linstall/app/View;
    .param p2, "map"    # Linstall/app/BindingMapd;
    .param p3, "model"    # Ljava/lang/Object;
    .param p4, "attrName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p2, p4}, Linstall/app/BindingMapd;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    :cond_0
    return-void
.end method

.method public abstract createAttributeForView(Linstall/app/View;Ljava/lang/String;)Linstall/app/ViewAttributed;
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
.end method
