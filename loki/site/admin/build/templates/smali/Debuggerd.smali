.class public Linstall/app/Debuggerd;
.super Ljava/lang/Object;
.source "Debuggerd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Debuggerd$Printer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static graphAttribute(Linstall/app/ViewAttributed;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debuggerd$Printer;
    .param p3, "caller"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ViewAttributed",
            "<**>;I",
            "Linstall/app/Debuggerd$Printer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "attr":Linstall/app/ViewAttributed;, "Linstall/app/ViewAttributed<**>;"
    if-eqz p0, :cond_1

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance p2, Linstall/app/Debuggerd$Printer;

    .end local p2    # "printer":Linstall/app/Debuggerd$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debuggerd$Printer;-><init>(I)V

    .line 53
    .restart local p2    # "printer":Linstall/app/Debuggerd$Printer;
    :cond_0
    if-lez p1, :cond_1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tvalue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ViewAttributed;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p0}, Linstall/app/ViewAttributed;->getBindedObservable()Linstall/app/IObservabled;

    move-result-object v0

    .line 56
    .local v0, "observable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-nez v0, :cond_2

    .line 57
    const-string v1, "not binded"

    invoke-virtual {p2, v1, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 68
    .end local v0    # "observable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v0    # "observable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    :cond_2
    invoke-virtual {p0}, Linstall/app/ViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    if-eq v1, p3, :cond_3

    .line 61
    invoke-virtual {p0}, Linstall/app/ViewAttributed;->getView()Linstall/app/View;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    invoke-static {v1, v2, p2, v3}, Linstall/app/Debuggerd;->graphView(Linstall/app/View;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V

    .line 63
    :cond_3
    if-eq v0, p3, :cond_1

    .line 64
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Linstall/app/ViewAttributed;->mBridge:Linstall/app/ViewAttributed$Bridge;

    invoke-static {v0, v1, p2, v2}, Linstall/app/Debuggerd;->graphObservable(Linstall/app/IObservabled;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static graphObject(Ljava/lang/Object;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debuggerd$Printer;
    .param p3, "caller"    # Ljava/lang/Object;

    .prologue
    .line 87
    if-eqz p0, :cond_2

    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance p2, Linstall/app/Debuggerd$Printer;

    .end local p2    # "printer":Linstall/app/Debuggerd$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debuggerd$Printer;-><init>(I)V

    .line 91
    .restart local p2    # "printer":Linstall/app/Debuggerd$Printer;
    :cond_0
    if-gtz p1, :cond_1

    .line 113
    .end local p0    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 96
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v3, p0, Linstall/app/IObservabled;

    if-eqz v3, :cond_3

    .line 97
    check-cast p0, Linstall/app/IObservabled;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0, p1, p2, p3}, Linstall/app/Debuggerd;->graphObservable(Linstall/app/IObservabled;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ttoString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 101
    .local v1, "f":Ljava/lang/reflect/Field;
    const-class v6, Linstall/app/IObservabled;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linstall/app/IObservabled;

    .line 104
    .local v2, "obs":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-eq v2, p3, :cond_4

    .line 105
    add-int/lit8 v6, p1, -0x1

    invoke-static {v2, v6, p2, p0}, Linstall/app/Debuggerd;->graphObservable(Linstall/app/IObservabled;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "obs":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static graphObservable(Linstall/app/IObservabled;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debuggerd$Printer;
    .param p3, "caller"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservabled",
            "<*>;I",
            "Linstall/app/Debuggerd$Printer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "observable":Linstall/app/IObservabled;, "Linstall/app/IObservabled<*>;"
    if-eqz p0, :cond_2

    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance p2, Linstall/app/Debuggerd$Printer;

    .end local p2    # "printer":Linstall/app/Debuggerd$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debuggerd$Printer;-><init>(I)V

    .line 75
    .restart local p2    # "printer":Linstall/app/Debuggerd$Printer;
    :cond_0
    if-lez p1, :cond_2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tvalue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Linstall/app/IObservabled;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 77
    invoke-interface {p0}, Linstall/app/IObservabled;->getAllObservers()[Linstall/app/Observerd;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 78
    .local v0, "observer":Linstall/app/Observerd;
    if-eq v0, p3, :cond_1

    .line 79
    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v4, p2, p0}, Linstall/app/Debuggerd;->graphObject(Ljava/lang/Object;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "observer":Linstall/app/Observerd;
    :cond_2
    return-void
.end method

.method public static graphView(Linstall/app/View;ILinstall/app/Debuggerd$Printer;Ljava/lang/Object;)V
    .locals 2
    .param p0, "view"    # Linstall/app/View;
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debuggerd$Printer;
    .param p3, "caller"    # Ljava/lang/Object;

    .prologue
    .line 28
    if-eqz p0, :cond_1

    .line 29
    if-nez p2, :cond_0

    .line 30
    new-instance p2, Linstall/app/Debuggerd$Printer;

    .end local p2    # "printer":Linstall/app/Debuggerd$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debuggerd$Printer;-><init>(I)V

    .line 32
    .restart local p2    # "printer":Linstall/app/Debuggerd$Printer;
    :cond_0
    if-lez p1, :cond_1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 36
    const-string v0, "No attribute at the moment"

    invoke-virtual {p2, v0, p1}, Linstall/app/Debuggerd$Printer;->println(Ljava/lang/String;I)V

    .line 45
    :cond_1
    return-void
.end method
