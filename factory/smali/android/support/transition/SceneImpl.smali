.class abstract Landroid/support/transition/SceneImpl;
.super Ljava/lang/Object;
.source "SceneImpl.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enter()V
.end method

.method public abstract exit()V
.end method

.method public abstract getSceneRoot()Landroid/view/ViewGroup;
.end method

.method public abstract init(Landroid/view/ViewGroup;)V
.end method

.method public abstract init(Landroid/view/ViewGroup;Landroid/view/View;)V
.end method

.method public abstract setEnterAction(Ljava/lang/Runnable;)V
.end method

.method public abstract setExitAction(Ljava/lang/Runnable;)V
.end method
