.class final Landroid/support/transition/ScenePort;
.super Ljava/lang/Object;
.source "ScenePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 58
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 77
    iput-object p3, p0, Landroid/support/transition/ScenePort;->mContext:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 79
    iput p2, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    .line 93
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 94
    iput-object p2, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    .line 95
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 133
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ScenePort;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/ScenePort;
    .locals 1
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Landroid/support/transition/ScenePort;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/transition/ScenePort;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/support/transition/ScenePort;

    .prologue
    .line 122
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 175
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/ScenePort;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-lez v0, :cond_3

    .line 180
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    iget-object v2, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    :cond_2
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/support/transition/ScenePort;->setCurrentScene(Landroid/view/View;Landroid/support/transition/ScenePort;)V

    .line 192
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/ScenePort;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/ScenePort;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/ScenePort;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/transition/ScenePort;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/support/transition/ScenePort;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 213
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mEnterAction:Ljava/lang/Runnable;

    .line 214
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 234
    iput-object p1, p0, Landroid/support/transition/ScenePort;->mExitAction:Ljava/lang/Runnable;

    .line 235
    return-void
.end method
