.class public Linstall/app/ToneGenerator;
.super Ljava/lang/Object;
.source "ToneGenerator.java"


# static fields
.field public static final MAX_VOLUME:I = 0x64

.field public static final MIN_VOLUME:I = 0x0

.field public static final TONE_DTMF_0:I = 0x0

.field public static final TONE_DTMF_1:I = 0x1

.field public static final TONE_DTMF_2:I = 0x2

.field public static final TONE_DTMF_3:I = 0x3

.field public static final TONE_DTMF_4:I = 0x4

.field public static final TONE_DTMF_5:I = 0x5

.field public static final TONE_DTMF_6:I = 0x6

.field public static final TONE_DTMF_7:I = 0x7

.field public static final TONE_DTMF_8:I = 0x8

.field public static final TONE_DTMF_9:I = 0x9

.field public static final TONE_DTMF_A:I = 0xc

.field public static final TONE_DTMF_B:I = 0xd

.field public static final TONE_DTMF_C:I = 0xe

.field public static final TONE_DTMF_D:I = 0xf

.field public static final TONE_DTMF_P:I = 0xb

.field public static final TONE_DTMF_S:I = 0xa

.field public static final TONE_PROP_ACK:I = 0x19

.field public static final TONE_PROP_BEEP:I = 0x18

.field public static final TONE_PROP_BEEP2:I = 0x1c

.field public static final TONE_PROP_NACK:I = 0x1a

.field public static final TONE_PROP_PROMPT:I = 0x1b

.field public static final TONE_SUP_BUSY:I = 0x11

.field public static final TONE_SUP_CALL_WAITING:I = 0x16

.field public static final TONE_SUP_CONGESTION:I = 0x12

.field public static final TONE_SUP_DIAL:I = 0x10

.field public static final TONE_SUP_ERROR:I = 0x15

.field public static final TONE_SUP_RADIO_ACK:I = 0x13

.field public static final TONE_SUP_RADIO_NOTAVAIL:I = 0x14

.field public static final TONE_SUP_RINGTONE:I = 0x17


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native release()V
.end method

.method public native startTone(I)Z
.end method

.method public native stopTone()V
.end method
