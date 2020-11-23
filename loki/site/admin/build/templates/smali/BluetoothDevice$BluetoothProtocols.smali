.class public final Linstall/app/BluetoothDevice$BluetoothProtocols;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothProtocols"
.end annotation


# static fields
.field public static final PROTOCOL_BNEP:I = 0xf

.field public static final PROTOCOL_FTP:I = 0xa

.field public static final PROTOCOL_HTTP:I = 0xc

.field public static final PROTOCOL_IP:I = 0x9

.field public static final PROTOCOL_L2CAP:I = 0x100

.field public static final PROTOCOL_OBEX:I = 0x8

.field public static final PROTOCOL_RFCOMM:I = 0x3

.field public static final PROTOCOL_SDP:I = 0x1

.field public static final PROTOCOL_TCP:I = 0x4

.field public static final PROTOCOL_TCS_BIN:I = 0x5

.field public static final PROTOCOL_UDP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
