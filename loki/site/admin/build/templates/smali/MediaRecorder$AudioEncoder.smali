.class public final Linstall/app/MediaRecorder$AudioEncoder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioEncoder"
.end annotation


# static fields
.field public static final AMR_NB:I = 0x1

.field public static final DEFAULT:I


# instance fields
.field final synthetic this$0:Linstall/app/MediaRecorder;


# direct methods
.method constructor <init>(Linstall/app/MediaRecorder;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/MediaRecorder;

    .prologue
    .line 16
    iput-object p1, p0, Linstall/app/MediaRecorder$AudioEncoder;->this$0:Linstall/app/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
