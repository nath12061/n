.class public interface abstract Linstall/app/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/InputMethod$SessionCallback;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.view.InputMethod"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.im"

.field public static final SHOW_EXPLICIT:I = 0x1

.field public static final SHOW_FORCED:I = 0x2


# virtual methods
.method public abstract attachToken(Linstall/app/IBinder;)V
.end method

.method public abstract bindInput(Linstall/app/InputBinding;)V
.end method

.method public abstract createSession(Linstall/app/InputMethod$SessionCallback;)V
.end method

.method public abstract hideSoftInput(ILinstall/app/ResultReceiver;)V
.end method

.method public abstract restartInput(Linstall/app/InputConnection;Linstall/app/EditorInfo;)V
.end method

.method public abstract revokeSession(Linstall/app/InputMethodSession;)V
.end method

.method public abstract setSessionEnabled(Linstall/app/InputMethodSession;Z)V
.end method

.method public abstract showSoftInput(ILinstall/app/ResultReceiver;)V
.end method

.method public abstract startInput(Linstall/app/InputConnection;Linstall/app/EditorInfo;)V
.end method

.method public abstract unbindInput()V
.end method
