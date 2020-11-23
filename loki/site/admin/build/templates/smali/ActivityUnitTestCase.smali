.class public abstract Linstall/app/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linstall/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 9
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFinishedActivityRequest()I
    .locals 2

    .prologue
    .line 49
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestedOrientation()I
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartedActivityIntent()Linstall/app/Intent;
    .locals 2

    .prologue
    .line 37
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartedActivityRequest()I
    .locals 2

    .prologue
    .line 41
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFinishCalled()Z
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActivityContext(Linstall/app/Context;)V
    .locals 2
    .param p1, "activityContext"    # Linstall/app/Context;

    .prologue
    .line 29
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setApplication(Linstall/app/Application;)V
    .locals 2
    .param p1, "application"    # Linstall/app/Application;

    .prologue
    .line 25
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected startActivity(Linstall/app/Intent;Linstall/app/Bundle;Ljava/lang/Object;)Linstall/app/Activity;
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;
    .param p2, "savedInstanceState"    # Linstall/app/Bundle;
    .param p3, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linstall/app/Intent;",
            "Linstall/app/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Linstall/app/ActivityUnitTestCase;, "Linstall/app/ActivityUnitTestCase<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
