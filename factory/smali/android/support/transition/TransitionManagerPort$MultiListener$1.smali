.class Landroid/support/transition/TransitionManagerPort$MultiListener$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "TransitionManagerPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/TransitionManagerPort$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

.field final synthetic val$runningTransitions:Landroid/support/v4/util/ArrayMap;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionManagerPort$MultiListener;Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/TransitionManagerPort$MultiListener;

    .prologue
    .line 431
    iput-object p1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iput-object p2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 434
    iget-object v1, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->val$runningTransitions:Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Landroid/support/transition/TransitionManagerPort$MultiListener$1;->this$0:Landroid/support/transition/TransitionManagerPort$MultiListener;

    iget-object v2, v2, Landroid/support/transition/TransitionManagerPort$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 435
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 436
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 437
    return-void
.end method
