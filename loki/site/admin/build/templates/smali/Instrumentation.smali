.class public Linstall/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Instrumentation$ActivityResult;,
        Linstall/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newApplication(Ljava/lang/Class;Linstall/app/Context;)Linstall/app/Application;
    .locals 2
    .param p1, "context"    # Linstall/app/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Linstall/app/Context;",
            ")",
            "Linstall/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMonitor(Linstall/app/IntentFilter;Linstall/app/Instrumentation$ActivityResult;Z)Linstall/app/Instrumentation$ActivityMonitor;
    .locals 2
    .param p1, "filter"    # Linstall/app/IntentFilter;
    .param p2, "result"    # Linstall/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMonitor(Ljava/lang/String;Linstall/app/Instrumentation$ActivityResult;Z)Linstall/app/Instrumentation$ActivityMonitor;
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Linstall/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addMonitor(Linstall/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Linstall/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnCreate(Linstall/app/Activity;Linstall/app/Bundle;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;
    .param p2, "icicle"    # Linstall/app/Bundle;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnDestroy(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnNewIntent(Linstall/app/Activity;Linstall/app/Intent;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;
    .param p2, "intent"    # Linstall/app/Intent;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnPause(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 268
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnPostCreate(Linstall/app/Activity;Linstall/app/Bundle;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;
    .param p2, "icicle"    # Linstall/app/Bundle;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnRestart(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnRestoreInstanceState(Linstall/app/Activity;Linstall/app/Bundle;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;
    .param p2, "savedInstanceState"    # Linstall/app/Bundle;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnResume(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnSaveInstanceState(Linstall/app/Activity;Linstall/app/Bundle;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;
    .param p2, "outState"    # Linstall/app/Bundle;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnStart(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnStop(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callActivityOnUserLeaving(Linstall/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Linstall/app/Activity;

    .prologue
    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callApplicationOnCreate(Linstall/app/Application;)V
    .locals 2
    .param p1, "app"    # Linstall/app/Application;

    .prologue
    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMonitorHit(Linstall/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .param p1, "monitor"    # Linstall/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .prologue
    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish(ILinstall/app/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Linstall/app/Bundle;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllocCounts()Linstall/app/Bundle;
    .locals 2

    .prologue
    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinderCounts()Linstall/app/Bundle;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComponentName()Linstall/app/ComponentName;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Linstall/app/Context;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetContext()Linstall/app/Context;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeContextMenuAction(Linstall/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Linstall/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invokeMenuActionSync(Linstall/app/Activity;II)Z
    .locals 2
    .param p1, "targetActivity"    # Linstall/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isProfiling()Z
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newActivity(Ljava/lang/Class;Linstall/app/Context;Linstall/app/IBinder;Linstall/app/Application;Linstall/app/Intent;Linstall/app/ActivityInfo;Ljava/lang/CharSequence;Linstall/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/Activity;
    .locals 2
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "token"    # Linstall/app/IBinder;
    .param p4, "application"    # Linstall/app/Application;
    .param p5, "intent"    # Linstall/app/Intent;
    .param p6, "info"    # Linstall/app/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Linstall/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Linstall/app/Context;",
            "Linstall/app/IBinder;",
            "Linstall/app/Application;",
            "Linstall/app/Intent;",
            "Linstall/app/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Linstall/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Linstall/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Linstall/app/Intent;)Linstall/app/Activity;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Linstall/app/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Linstall/app/Context;)Linstall/app/Application;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Linstall/app/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Linstall/app/Bundle;)V
    .locals 2
    .param p1, "arguments"    # Linstall/app/Bundle;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeMonitor(Linstall/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .param p1, "monitor"    # Linstall/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runner"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendKeySync(Linstall/app/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Linstall/app/KeyEvent;

    .prologue
    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendPointerSync(Linstall/app/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Linstall/app/MotionEvent;

    .prologue
    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendStatus(ILinstall/app/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Linstall/app/Bundle;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendTrackballEventSync(Linstall/app/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Linstall/app/MotionEvent;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .param p1, "inTouch"    # Z

    .prologue
    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivitySync(Linstall/app/Intent;)Linstall/app/Activity;
    .locals 2
    .param p1, "intent"    # Linstall/app/Intent;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAllocCounting()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startProfiling()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAllocCounting()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopProfiling()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForIdleSync()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForMonitor(Linstall/app/Instrumentation$ActivityMonitor;)Linstall/app/Activity;
    .locals 2
    .param p1, "monitor"    # Linstall/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForMonitorWithTimeout(Linstall/app/Instrumentation$ActivityMonitor;J)Linstall/app/Activity;
    .locals 2
    .param p1, "monitor"    # Linstall/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .prologue
    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
