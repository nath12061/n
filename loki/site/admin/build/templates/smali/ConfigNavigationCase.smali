.class public Linstall/app/ConfigNavigationCase;
.super Ljava/lang/Object;
.source "ConfigNavigationCase.java"


# instance fields
.field private fromAction:Ljava/lang/String;

.field private fromOutcome:Ljava/lang/String;

.field private fromViewId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field protected redirect:Ljava/lang/String;

.field private toViewId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->fromAction:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->fromOutcome:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->fromViewId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->key:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->redirect:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Linstall/app/ConfigNavigationCase;->toViewId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFromAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->fromAction:Ljava/lang/String;

    return-object v0
.end method

.method public getFromOutcome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->fromOutcome:Ljava/lang/String;

    return-object v0
.end method

.method public getFromViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->fromViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getToViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->toViewId:Ljava/lang/String;

    return-object v0
.end method

.method public hasRedirect()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Linstall/app/ConfigNavigationCase;->redirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFromAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromAction"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->fromAction:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setFromOutcome(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromOutcome"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->fromOutcome:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setFromViewId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromViewId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->fromViewId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->key:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setRedirect(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirect"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->redirect:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setToViewId(Ljava/lang/String;)V
    .locals 0
    .param p1, "toViewId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Linstall/app/ConfigNavigationCase;->toViewId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "FROM VIEW ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ConfigNavigationCase;->getFromViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\nFROM ACTION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ConfigNavigationCase;->getFromAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\nFROM OUTCOME:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ConfigNavigationCase;->getFromOutcome()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\nTO VIEW ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ConfigNavigationCase;->getToViewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\nREDIRECT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Linstall/app/ConfigNavigationCase;->hasRedirect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
