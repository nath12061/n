.class public final Linstall/app/MediaRecorder$OutputFormat;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputFormat"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final MPEG_4:I = 0x2

.field public static final RAW_AMR:I = 0x3

.field public static final THREE_GPP:I = 0x1


# instance fields
.field final synthetic this$0:Linstall/app/MediaRecorder;


# direct methods
.method constructor <init>(Linstall/app/MediaRecorder;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/MediaRecorder;

    .prologue
    .line 44
    iput-object p1, p0, Linstall/app/MediaRecorder$OutputFormat;->this$0:Linstall/app/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
