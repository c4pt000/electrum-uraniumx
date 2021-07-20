.class public Lorg/kamranzafar/jtar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTarSize(Ljava/io/File;)J
    .locals 4

    .line 34
    invoke-static {p0}, Lorg/kamranzafar/jtar/TarUtils;->tarSize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static entrySize(J)J
    .locals 7

    const-wide/16 v0, 0x200

    add-long/2addr p0, v0

    .line 67
    rem-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    add-long/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private static tarSize(Ljava/io/File;)J
    .locals 6

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/kamranzafar/jtar/TarUtils;->entrySize(J)J

    move-result-wide v0

    return-wide v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 45
    array-length v0, p0

    if-lez v0, :cond_3

    .line 46
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p0, v1

    .line 47
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/kamranzafar/jtar/TarUtils;->entrySize(J)J

    move-result-wide v4

    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v4}, Lorg/kamranzafar/jtar/TarUtils;->tarSize(Ljava/io/File;)J

    move-result-wide v4

    :goto_1
    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v2

    :cond_3
    const-wide/16 v0, 0x200

    return-wide v0
.end method

.method public static trim(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_3

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_2

    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 94
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
