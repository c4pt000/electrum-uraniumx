.class public Lorg/jnius/NativeInvocationHandler;
.super Ljava/lang/Object;
.source "NativeInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field static DEBUG:Z = false


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    return-void
.end method


# virtual methods
.method public getPythonObjectPointer()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/jnius/NativeInvocationHandler;->ptr:J

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 14
    sget-boolean v0, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+ java:invoke(<proxy>, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jnius/NativeInvocationHandler;->invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    sget-boolean p2, Lorg/jnius/NativeInvocationHandler;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 29
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "+ java:invoke returned: "

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 30
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method native invoke0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
