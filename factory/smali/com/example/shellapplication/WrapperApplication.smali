.class public Lcom/example/shellapplication/WrapperApplication;
.super Landroid/app/Application;
.source "WrapperApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "reinforce"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public native attachBaseContext(Landroid/content/Context;)V
.end method

.method public native onCreate()V
.end method
