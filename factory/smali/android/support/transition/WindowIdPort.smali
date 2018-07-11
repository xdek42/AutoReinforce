.class Landroid/support/transition/WindowIdPort;
.super Ljava/lang/Object;
.source "WindowIdPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/support/transition/WindowIdPort;->mToken:Landroid/os/IBinder;

    .line 40
    return-void
.end method

.method static getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    new-instance v0, Landroid/support/transition/WindowIdPort;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/transition/WindowIdPort;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p1, Landroid/support/transition/WindowIdPort;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/transition/WindowIdPort;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Landroid/support/transition/WindowIdPort;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/support/transition/WindowIdPort;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
