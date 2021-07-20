.class public Lorg/kivy/android/launcher/Project;
.super Ljava/lang/Object;
.source "Project.java"


# instance fields
.field author:Ljava/lang/String;

.field public dir:Ljava/lang/String;

.field icon:Landroid/graphics/Bitmap;

.field public landscape:Z

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lorg/kivy/android/launcher/Project;->landscape:Z

    return-void
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public static scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;
    .locals 7

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Project"

    const-string v2, "android.txt"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 47
    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const-string v4, "directory"

    .line 50
    invoke-virtual {v0, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    .line 56
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open link file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    .line 71
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string v2, "title"

    const-string v4, "Untitled"

    .line 78
    invoke-virtual {v0, v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/kivy/android/launcher/Project;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "author"

    const-string v5, ""

    .line 79
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/kivy/android/launcher/Project;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orientation"

    const-string v6, "portrait"

    .line 80
    invoke-virtual {v0, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "landscape"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    new-instance v5, Lorg/kivy/android/launcher/Project;

    invoke-direct {v5}, Lorg/kivy/android/launcher/Project;-><init>()V

    .line 84
    iput-object v2, v5, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    .line 85
    iput-object v4, v5, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    .line 86
    new-instance v2, Ljava/io/File;

    const-string v4, "icon.png"

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v5, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v0, v5, Lorg/kivy/android/launcher/Project;->landscape:Z

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception p0

    const-string v0, "Couldn\'t open android.txt"

    .line 93
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method
