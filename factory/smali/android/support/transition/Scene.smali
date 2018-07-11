.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field private static sImpl:Landroid/support/transition/SceneStaticsImpl;


# instance fields
.field mImpl:Landroid/support/transition/SceneImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Landroid/support/transition/SceneStaticsApi21;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Landroid/support/transition/SceneStaticsKitKat;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsKitKat;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Landroid/support/transition/SceneStaticsIcs;

    invoke-direct {v0}, Landroid/support/transition/SceneStaticsIcs;-><init>()V

    sput-object v0, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/support/transition/SceneImpl;)V
    .locals 0
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0}, Landroid/support/transition/Scene;->createSceneImpl()Landroid/support/transition/SceneImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    .line 63
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/SceneImpl;->init(Landroid/view/ViewGroup;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Landroid/support/transition/Scene;->createSceneImpl()Landroid/support/transition/SceneImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    .line 78
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/SceneImpl;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private createSceneImpl()Landroid/support/transition/SceneImpl;
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Landroid/support/transition/SceneApi21;

    invoke-direct {v0}, Landroid/support/transition/SceneApi21;-><init>()V

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 124
    new-instance v0, Landroid/support/transition/SceneKitKat;

    invoke-direct {v0}, Landroid/support/transition/SceneKitKat;-><init>()V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroid/support/transition/SceneIcs;

    invoke-direct {v0}, Landroid/support/transition/SceneIcs;-><init>()V

    goto :goto_0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    sget v3, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    .line 105
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 106
    .local v2, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    if-nez v2, :cond_0

    .line 107
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 108
    .restart local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    sget v3, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Scene;

    .line 111
    .local v0, "scene":Landroid/support/transition/Scene;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 116
    .end local v0    # "scene":Landroid/support/transition/Scene;
    .local v1, "scene":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 114
    .end local v1    # "scene":Ljava/lang/Object;
    .restart local v0    # "scene":Landroid/support/transition/Scene;
    :cond_1
    new-instance v0, Landroid/support/transition/Scene;

    .end local v0    # "scene":Landroid/support/transition/Scene;
    sget-object v3, Landroid/support/transition/Scene;->sImpl:Landroid/support/transition/SceneStaticsImpl;

    invoke-virtual {v3, p0, p1, p2}, Landroid/support/transition/SceneStaticsImpl;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/SceneImpl;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/transition/Scene;-><init>(Landroid/support/transition/SceneImpl;)V

    .line 115
    .restart local v0    # "scene":Landroid/support/transition/Scene;
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 116
    .restart local v1    # "scene":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0}, Landroid/support/transition/SceneImpl;->enter()V

    .line 165
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0}, Landroid/support/transition/SceneImpl;->exit()V

    .line 151
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0}, Landroid/support/transition/SceneImpl;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/SceneImpl;->setEnterAction(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/transition/Scene;->mImpl:Landroid/support/transition/SceneImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/SceneImpl;->setExitAction(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
