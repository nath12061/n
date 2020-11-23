.class public Linstall/app/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"


# static fields
.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
