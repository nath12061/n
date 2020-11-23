.class public Linstall/app/Debugger;
.super Ljava/lang/Object;
.source "Debugger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Debugger$Printer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static graphAttribute(Linstall/app/ViewAttribute;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debugger$Printer;
    .param p3, "caller"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/ViewAttribute",
            "<**>;I",
            "Linstall/app/Debugger$Printer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "attr":Linstall/app/ViewAttribute;, "Linstall/app/ViewAttribute<**>;"
    if-eqz p0, :cond_1

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance p2, Linstall/app/Debugger$Printer;

    .end local p2    # "printer":Linstall/app/Debugger$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debugger$Printer;-><init>(I)V

    .line 46
    .restart local p2    # "printer":Linstall/app/Debugger$Printer;
    :cond_0
    if-lez p1, :cond_1

    .line 47
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

    invoke-virtual {p0}, Linstall/app/ViewAttribute;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Linstall/app/Debugger$Printer;->println(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p0}, Linstall/app/ViewAttribute;->getBindedObservable()Linstall/app/IObservable;

    move-result-object v0

    .line 49
    .local v0, "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-nez v0, :cond_2

    .line 50
    const-string v1, "not binded"

    invoke-virtual {p2, v1, p1}, Linstall/app/Debugger$Printer;->println(Ljava/lang/String;I)V

    .line 61
    .end local v0    # "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v0    # "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    :cond_2
    invoke-virtual {p0}, Linstall/app/ViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    if-eq v1, p3, :cond_3

    .line 54
    invoke-virtual {p0}, Linstall/app/ViewAttribute;->getView()Landroid/view/View;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    iget-object v3, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    invoke-static {v1, v2, p2, v3}, Linstall/app/Debugger;->graphView(Landroid/view/View;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V

    .line 56
    :cond_3
    if-eq v0, p3, :cond_1

    .line 57
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Linstall/app/ViewAttribute;->mBridge:Linstall/app/ViewAttribute$Bridge;

    invoke-static {v0, v1, p2, v2}, Linstall/app/Debugger;->graphObservable(Linstall/app/IObservable;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static graphObject(Ljava/lang/Object;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debugger$Printer;
    .param p3, "caller"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-eqz p0, :cond_1

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance p2, Linstall/app/Debugger$Printer;

    .end local p2    # "printer":Linstall/app/Debugger$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debugger$Printer;-><init>(I)V

    .line 84
    .restart local p2    # "printer":Linstall/app/Debugger$Printer;
    :cond_0
    if-gtz p1, :cond_1

    .line 89
    :cond_1
    return-void
.end method

.method public static graphObservable(Linstall/app/IObservable;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debugger$Printer;
    .param p3, "caller"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/IObservable",
            "<*>;I",
            "Linstall/app/Debugger$Printer;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "observable":Linstall/app/IObservable;, "Linstall/app/IObservable<*>;"
    if-eqz p0, :cond_2

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance p2, Linstall/app/Debugger$Printer;

    .end local p2    # "printer":Linstall/app/Debugger$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debugger$Printer;-><init>(I)V

    .line 68
    .restart local p2    # "printer":Linstall/app/Debugger$Printer;
    :cond_0
    if-lez p1, :cond_2

    .line 69
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

    invoke-interface {p0}, Linstall/app/IObservable;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Linstall/app/Debugger$Printer;->println(Ljava/lang/String;I)V

    .line 70
    invoke-interface {p0}, Linstall/app/IObservable;->getAllObservers()[Linstall/app/Observer;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 71
    .local v0, "observer":Linstall/app/Observer;
    if-eq v0, p3, :cond_1

    .line 72
    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v4, p2, p0}, Linstall/app/Debugger;->graphObject(Ljava/lang/Object;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "observer":Linstall/app/Observer;
    :cond_2
    return-void
.end method

.method public static graphView(Landroid/view/View;ILinstall/app/Debugger$Printer;Ljava/lang/Object;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "level"    # I
    .param p2, "printer"    # Linstall/app/Debugger$Printer;
    .param p3, "caller"    # Ljava/lang/Object;

    .prologue
    .line 30
    if-eqz p0, :cond_1

    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance p2, Linstall/app/Debugger$Printer;

    .end local p2    # "printer":Linstall/app/Debugger$Printer;
    invoke-direct {p2, p1}, Linstall/app/Debugger$Printer;-><init>(I)V

    .line 34
    .restart local p2    # "printer":Linstall/app/Debugger$Printer;
    :cond_0
    if-lez p1, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Linstall/app/Debugger$Printer;->println(Ljava/lang/String;I)V

    .line 39
    :cond_1
    return-void
.end method
