.class public Lorg/kamranzafar/jtar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .locals 0

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    add-int/2addr p3, p4

    add-int/lit8 p0, p3, -0x1

    const/16 p1, 0x20

    .line 116
    aput-byte p1, p2, p0

    add-int/lit8 p0, p3, -0x2

    const/4 p1, 0x0

    .line 117
    aput-byte p1, p2, p0

    return p3
.end method

.method public static getLongOctalBytes(J[BII)I
    .locals 3

    add-int/lit8 v0, p4, 0x1

    .line 135
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 136
    invoke-static {p0, p1, v1, v2, v0}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    .line 137
    invoke-static {v1, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    return p3
.end method

.method public static getOctalBytes(J[BII)I
    .locals 8

    add-int/lit8 v0, p4, -0x1

    add-int v1, p3, v0

    const/4 v2, 0x0

    .line 80
    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, v0

    const/16 v2, 0x20

    .line 82
    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x30

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-nez v5, :cond_0

    add-int p0, p3, v0

    .line 86
    aput-byte v1, p2, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    cmp-long v5, p0, v3

    if-lez v5, :cond_1

    add-int v5, p3, v0

    const-wide/16 v6, 0x7

    and-long/2addr v6, p0

    long-to-int v7, v6

    int-to-byte v6, v7

    add-int/2addr v6, v1

    int-to-byte v6, v6

    .line 90
    aput-byte v6, p2, v5

    const/4 v5, 0x3

    shr-long/2addr p0, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ltz v0, :cond_2

    add-int p0, p3, v0

    .line 96
    aput-byte v2, p2, p0

    goto :goto_0

    :cond_2
    add-int/2addr p3, p4

    return p3
.end method

.method public static parseOctal([BII)J
    .locals 6

    add-int/2addr p2, p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    .line 45
    aget-byte v3, p0, p1

    if-nez v3, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    aget-byte v3, p0, p1

    const/16 v4, 0x30

    const/16 v5, 0x20

    if-eq v3, v5, :cond_1

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    aget-byte v0, p0, p1

    if-ne v0, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    .line 58
    aget-byte v3, p0, p1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-wide v1
.end method
