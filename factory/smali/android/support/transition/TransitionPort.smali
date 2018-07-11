.class abstract Landroid/support/transition/TransitionPort;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionPort$ArrayListManager;,
        Landroid/support/transition/TransitionPort$AnimationInfo;,
        Landroid/support/transition/TransitionPort$TransitionListenerAdapter;,
        Landroid/support/transition/TransitionPort$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEnded:Z

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSetPort;

.field mPaused:Z

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    .line 52
    iput-wide v4, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    .line 54
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 62
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    .line 64
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 72
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    .line 75
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 83
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mCanRemoveViews:Z

    .line 87
    iput v2, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 90
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 93
    iput-object v1, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mName:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 104
    new-instance v0, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 113
    iput-boolean v2, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 122
    return-void
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 687
    if-nez p1, :cond_1

    .line 769
    :cond_0
    return-void

    .line 690
    :cond_1
    const/4 v2, 0x0

    .line 691
    .local v2, "isListViewItem":Z
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ListView;

    if-eqz v10, :cond_2

    .line 692
    const/4 v2, 0x1

    .line 694
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 698
    :cond_3
    const/4 v1, -0x1

    .line 699
    .local v1, "id":I
    const-wide/16 v4, -0x1

    .line 700
    .local v4, "itemId":J
    if-nez v2, :cond_6

    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 708
    :goto_0
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 711
    :cond_4
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 714
    :cond_5
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    if-eqz p1, :cond_7

    .line 715
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 716
    .local v6, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_7

    .line 717
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 703
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 704
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 705
    .local v8, "position":I
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    goto :goto_0

    .line 722
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v8    # "position":I
    :cond_7
    new-instance v9, Landroid/support/transition/TransitionValues;

    invoke-direct {v9}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 723
    .local v9, "values":Landroid/support/transition/TransitionValues;
    iput-object p1, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 724
    if-eqz p2, :cond_b

    .line 725
    invoke-virtual {p0, v9}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 729
    :goto_2
    if-eqz p2, :cond_d

    .line 730
    if-nez v2, :cond_c

    .line 731
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    if-ltz v1, :cond_8

    .line 733
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    :cond_8
    :goto_3
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 750
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 753
    :cond_9
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 756
    :cond_a
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v10, :cond_f

    if-eqz p1, :cond_f

    .line 757
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 758
    .restart local v6    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v6, :cond_f

    .line 759
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 727
    .end local v0    # "i":I
    .end local v6    # "numTypes":I
    :cond_b
    invoke-virtual {p0, v9}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 736
    :cond_c
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v10, v4, v5, v9}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 739
    :cond_d
    if-nez v2, :cond_e

    .line 740
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v10, p1, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    if-ltz v1, :cond_8

    .line 742
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 745
    :cond_e
    iget-object v10, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v10, v10, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v10, v4, v5, v9}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_f
    move-object v7, p1

    .line 764
    check-cast v7, Landroid/view/ViewGroup;

    .line 765
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 766
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Landroid/support/transition/TransitionPort;->captureHierarchy(Landroid/view/View;Z)V

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 1
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_0

    .line 493
    if-eqz p3, :cond_1

    .line 494
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 499
    :cond_0
    :goto_0
    return-object p1

    .line 496
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_0

    .line 543
    if-eqz p3, :cond_1

    .line 544
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 549
    :cond_0
    :goto_0
    return-object p1

    .line 546
    :cond_1
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 518
    if-eqz p3, :cond_1

    .line 519
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 524
    :cond_0
    :goto_0
    return-object p1

    .line 521
    :cond_1
    invoke-static {p1, p2}, Landroid/support/transition/TransitionPort$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v1, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 126
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 128
    .restart local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    sget-object v1, Landroid/support/transition/TransitionPort;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-object v0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/TransitionPort$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Landroid/support/transition/TransitionPort$1;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/TransitionPort$1;-><init>(Landroid/support/transition/TransitionPort;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionPort;->animate(Landroid/animation/Animator;)V

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 1053
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionPort;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 463
    if-lez p1, :cond_0

    .line 464
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 579
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 935
    if-nez p1, :cond_0

    .line 936
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->end()V

    .line 956
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 939
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 941
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 942
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 944
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 945
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 947
    :cond_3
    new-instance v0, Landroid/support/transition/TransitionPort$2;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionPort$2;-><init>(Landroid/support/transition/TransitionPort;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 954
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method protected cancel()V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1030
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1031
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1032
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1030
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1034
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1035
    iget-object v5, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 1036
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1037
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1038
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 1039
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v5, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionCancel(Landroid/support/transition/TransitionPort;)V

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1042
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 607
    invoke-virtual {p0, p2}, Landroid/support/transition/TransitionPort;->clearValues(Z)V

    .line 608
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 609
    :cond_0
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 611
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 612
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 614
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 615
    .local v2, "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 616
    if-eqz p2, :cond_2

    .line 617
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 621
    :goto_1
    if-eqz p2, :cond_3

    .line 622
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    if-ltz v1, :cond_1

    .line 624
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 610
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_1

    .line 627
    :cond_3
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    if-ltz v1, :cond_1

    .line 629
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 635
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 636
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_9

    .line 637
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 638
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 639
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 640
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 641
    if-eqz p2, :cond_6

    .line 642
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 646
    :goto_4
    if-eqz p2, :cond_7

    .line 647
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 644
    .restart local v2    # "values":Landroid/support/transition/TransitionValues;
    :cond_6
    invoke-virtual {p0, v2}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_4

    .line 649
    :cond_7
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 655
    .end local v0    # "i":I
    .end local v2    # "values":Landroid/support/transition/TransitionValues;
    .end local v3    # "view":Landroid/view/View;
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionPort;->captureHierarchy(Landroid/view/View;Z)V

    .line 657
    :cond_9
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 665
    if-eqz p1, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 667
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 668
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 674
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 671
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 672
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method public clone()Landroid/support/transition/TransitionPort;
    .locals 3

    .prologue
    .line 1087
    const/4 v1, 0x0

    .line 1089
    .local v1, "clone":Landroid/support/transition/TransitionPort;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/transition/TransitionPort;

    move-object v1, v0

    .line 1090
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    .line 1091
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1092
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-object v1

    .line 1093
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .locals 40
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v9, Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 189
    .local v9, "endCopy":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    new-instance v10, Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    .line 190
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v10, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 191
    .local v10, "endIdCopy":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/TransitionValues;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_0

    .line 192
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 193
    .local v16, "id":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v10, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 195
    .end local v16    # "id":I
    :cond_0
    new-instance v12, Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    .line 196
    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-direct {v12, v0}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 197
    .local v12, "endItemIdCopy":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/support/transition/TransitionValues;>;"
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_1

    .line 198
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 199
    .local v16, "id":J
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    move-wide/from16 v0, v16

    move-object/from16 v2, v36

    invoke-virtual {v12, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 197
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 203
    .end local v16    # "id":J
    :cond_1
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v33, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v14, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_2
    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_a

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 207
    .local v34, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 208
    .local v8, "end":Landroid/support/transition/TransitionValues;
    const/16 v20, 0x0

    .line 209
    .local v20, "isInListView":Z
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v36

    move-object/from16 v0, v36

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 210
    const/16 v20, 0x1

    .line 212
    :cond_3
    if-nez v20, :cond_9

    .line 213
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 214
    .local v16, "id":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    .line 215
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 216
    .local v31, "start":Landroid/support/transition/TransitionValues;
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_6

    .line 217
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 218
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_4
    :goto_4
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 232
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 233
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 215
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_3

    .line 219
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_6
    const/16 v36, -0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-eq v0, v1, :cond_4

    .line 220
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 221
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    const/16 v29, 0x0

    .line 222
    .local v29, "removeView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_7
    :goto_5
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_8

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/view/View;

    .line 223
    .local v35, "viewToRemove":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getId()I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 224
    move-object/from16 v29, v35

    goto :goto_5

    .line 227
    .end local v35    # "viewToRemove":Landroid/view/View;
    :cond_8
    if-eqz v29, :cond_4

    .line 228
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 237
    .end local v16    # "id":I
    .end local v29    # "removeView":Landroid/view/View;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_9
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/widget/ListView;

    .line 238
    .local v26, "parent":Landroid/widget/ListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 239
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v27

    .line 240
    .local v27, "position":I
    invoke-virtual/range {v26 .. v27}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    .line 241
    .local v22, "itemId":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 242
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 244
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 249
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v20    # "isInListView":Z
    .end local v22    # "itemId":J
    .end local v26    # "parent":Landroid/widget/ListView;
    .end local v27    # "position":I
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v32

    .line 250
    .local v32, "startItemIdCopySize":I
    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v32

    if-ge v15, v0, :cond_c

    .line 251
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 252
    .local v16, "id":J
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 253
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 254
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 255
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 256
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 261
    .end local v16    # "id":J
    :cond_c
    invoke-virtual {v9}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_d
    :goto_7
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_f

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    .line 262
    .restart local v34    # "view":Landroid/view/View;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getId()I

    move-result v16

    .line 263
    .local v16, "id":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 264
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    .line 265
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    .line 266
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    :goto_8
    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 267
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 268
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 265
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/support/transition/TransitionValues;

    move-object/from16 v31, v36

    goto :goto_8

    .line 272
    .end local v16    # "id":I
    .end local v34    # "view":Landroid/view/View;
    :cond_f
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 273
    .local v11, "endIdCopySize":I
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v11, :cond_11

    .line 274
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 275
    .restart local v16    # "id":I
    const/16 v36, 0x0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 276
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 277
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 278
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 282
    .end local v16    # "id":I
    :cond_11
    invoke-virtual {v12}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v13

    .line 283
    .local v13, "endItemIdCopySize":I
    const/4 v15, 0x0

    :goto_a
    if-ge v15, v13, :cond_12

    .line 284
    invoke-virtual {v12, v15}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 286
    .local v16, "id":J
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 287
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 288
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 291
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v16    # "id":J
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    :cond_12
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v30

    .line 292
    .local v30, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    const/4 v15, 0x0

    :goto_b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    if-ge v15, v0, :cond_1c

    .line 293
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/transition/TransitionValues;

    .line 294
    .restart local v31    # "start":Landroid/support/transition/TransitionValues;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionValues;

    .line 296
    .restart local v8    # "end":Landroid/support/transition/TransitionValues;
    if-nez v31, :cond_13

    if-eqz v8, :cond_19

    .line 297
    :cond_13
    if-eqz v31, :cond_14

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_19

    .line 317
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Landroid/support/transition/TransitionPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v7

    .line 318
    .local v7, "animator":Landroid/animation/Animator;
    if-eqz v7, :cond_19

    .line 321
    const/16 v19, 0x0

    .line 322
    .local v19, "infoValues":Landroid/support/transition/TransitionValues;
    if-eqz v8, :cond_1b

    .line 323
    iget-object v0, v8, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    .line 324
    .restart local v34    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v28

    .line 325
    .local v28, "properties":[Ljava/lang/String;
    if-eqz v34, :cond_18

    if-eqz v28, :cond_18

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    if-lez v36, :cond_18

    .line 326
    new-instance v19, Landroid/support/transition/TransitionValues;

    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    invoke-direct/range {v19 .. v19}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 327
    .restart local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    move-object/from16 v0, v34

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 328
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/transition/TransitionValues;

    .line 329
    .local v24, "newValues":Landroid/support/transition/TransitionValues;
    if-eqz v24, :cond_15

    .line 330
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_15

    .line 331
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v36, v0

    aget-object v37, v28, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v38, v0

    aget-object v39, v28, v21

    .line 332
    invoke-interface/range {v38 .. v39}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 331
    invoke-interface/range {v36 .. v38}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 335
    .end local v21    # "j":I
    :cond_15
    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v25

    .line 336
    .local v25, "numExistingAnims":I
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_d
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_18

    .line 337
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 338
    .local v6, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 339
    .local v18, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    if-nez v36, :cond_16

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_17

    :cond_16
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 341
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 342
    :cond_17
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 344
    const/4 v7, 0x0

    .line 353
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v21    # "j":I
    .end local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    :cond_18
    :goto_e
    if-eqz v7, :cond_19

    .line 354
    new-instance v18, Landroid/support/transition/TransitionPort$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v36

    .line 355
    invoke-static/range {p1 .. p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/transition/TransitionPort$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/WindowIdPort;Landroid/support/transition/TransitionValues;)V

    .line 356
    .restart local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v7    # "animator":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 336
    .restart local v6    # "anim":Landroid/animation/Animator;
    .restart local v7    # "animator":Landroid/animation/Animator;
    .restart local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .restart local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .restart local v21    # "j":I
    .restart local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v25    # "numExistingAnims":I
    .restart local v28    # "properties":[Ljava/lang/String;
    .restart local v34    # "view":Landroid/view/View;
    :cond_1a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 351
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v18    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v21    # "j":I
    .end local v24    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v25    # "numExistingAnims":I
    .end local v28    # "properties":[Ljava/lang/String;
    .end local v34    # "view":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v34, v0

    .restart local v34    # "view":Landroid/view/View;
    goto :goto_e

    .line 363
    .end local v7    # "animator":Landroid/animation/Animator;
    .end local v8    # "end":Landroid/support/transition/TransitionValues;
    .end local v19    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v31    # "start":Landroid/support/transition/TransitionValues;
    .end local v34    # "view":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method protected end()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 994
    iget v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 995
    iget v4, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    if-nez v4, :cond_3

    .line 996
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 997
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 999
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1000
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1001
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionEnd(Landroid/support/transition/TransitionPort;)V

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1005
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 1006
    .local v3, "tv":Landroid/support/transition/TransitionValues;
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1004
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1011
    .end local v3    # "tv":Landroid/support/transition/TransitionValues;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1012
    iget-object v4, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 1013
    .restart local v3    # "tv":Landroid/support/transition/TransitionValues;
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1018
    .end local v3    # "tv":Landroid/support/transition/TransitionValues;
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 1020
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 484
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 509
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 534
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 478
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    .line 504
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 529
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 772
    iget-object v7, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    if-eqz v7, :cond_1

    .line 773
    iget-object v7, p0, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    invoke-virtual {v7, p1, p2}, Landroid/support/transition/TransitionSetPort;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v5

    .line 791
    :cond_0
    :goto_0
    return-object v5

    .line 775
    :cond_1
    if-eqz p2, :cond_3

    iget-object v6, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 776
    .local v6, "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :goto_1
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 777
    .local v5, "values":Landroid/support/transition/TransitionValues;
    if-nez v5, :cond_0

    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 779
    .local v0, "id":I
    if-ltz v0, :cond_2

    .line 780
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 782
    .restart local v5    # "values":Landroid/support/transition/TransitionValues;
    :cond_2
    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 784
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 785
    .local v4, "position":I
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 786
    .local v2, "itemId":J
    iget-object v7, v6, Landroid/support/transition/TransitionValuesMaps;->itemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .restart local v5    # "values":Landroid/support/transition/TransitionValues;
    goto :goto_0

    .line 775
    .end local v0    # "id":I
    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v2    # "itemId":J
    .end local v4    # "position":I
    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    .end local v6    # "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :cond_3
    iget-object v6, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_1
.end method

.method isValidTarget(Landroid/view/View;J)Z
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "targetId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIdExcludes:Ljava/util/ArrayList;

    long-to-int v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 408
    :goto_0
    return v3

    .line 379
    :cond_0
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 380
    goto :goto_0

    .line 382
    :cond_1
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 383
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 384
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 385
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 386
    .local v2, "type":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 387
    goto :goto_0

    .line 384
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v2    # "type":Ljava/lang/Class;
    :cond_3
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 392
    goto :goto_0

    .line 394
    :cond_4
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 395
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 396
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v6, p2

    if-nez v3, :cond_5

    move v3, v5

    .line 397
    goto :goto_0

    .line 395
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 401
    .end local v0    # "i":I
    :cond_6
    if-eqz p1, :cond_8

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 402
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 403
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_7

    move v3, v5

    .line 404
    goto/16 :goto_0

    .line 402
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_8
    move v3, v4

    .line 408
    goto/16 :goto_0
.end method

.method public pause(Landroid/view/View;)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 803
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    if-nez v8, :cond_3

    .line 804
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 805
    .local v5, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    .line 806
    .local v4, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v7

    .line 807
    .local v7, "windowId":Landroid/support/transition/WindowIdPort;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 808
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 809
    .local v2, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->windowId:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v7, v8}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 810
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 811
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 807
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 814
    .end local v2    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    :cond_1
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 815
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 816
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 817
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 818
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 819
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v8, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionPause(Landroid/support/transition/TransitionPort;)V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 822
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 824
    .end local v1    # "i":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    .end local v7    # "windowId":Landroid/support/transition/WindowIdPort;
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 866
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v11

    .line 867
    .local v11, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v11}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v6

    .line 868
    .local v6, "numOldAnims":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 869
    invoke-virtual {v11, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 870
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 871
    invoke-virtual {v11, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 872
    .local v7, "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    if-eqz v7, :cond_4

    iget-object v12, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v12, :cond_4

    iget-object v12, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    .line 873
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    if-ne v12, v13, :cond_4

    .line 874
    const/4 v1, 0x0

    .line 875
    .local v1, "cancel":Z
    iget-object v9, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->values:Landroid/support/transition/TransitionValues;

    .line 876
    .local v9, "oldValues":Landroid/support/transition/TransitionValues;
    iget-object v10, v7, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    .line 877
    .local v10, "oldView":Landroid/view/View;
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    if-eqz v12, :cond_5

    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->viewValues:Landroid/support/v4/util/ArrayMap;

    .line 878
    invoke-virtual {v12, v10}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/transition/TransitionValues;

    move-object v5, v12

    .line 879
    .local v5, "newValues":Landroid/support/transition/TransitionValues;
    :goto_1
    if-nez v5, :cond_0

    .line 880
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v12, v12, Landroid/support/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 882
    .restart local v5    # "newValues":Landroid/support/transition/TransitionValues;
    :cond_0
    if-eqz v9, :cond_2

    .line 885
    if-eqz v5, :cond_2

    .line 886
    iget-object v12, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 887
    .local v3, "key":Ljava/lang/String;
    iget-object v13, v9, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 888
    .local v8, "oldValue":Ljava/lang/Object;
    iget-object v13, v5, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 889
    .local v4, "newValue":Ljava/lang/Object;
    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 890
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 891
    const/4 v1, 0x1

    .line 902
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "newValue":Ljava/lang/Object;
    .end local v8    # "oldValue":Ljava/lang/Object;
    :cond_2
    if-eqz v1, :cond_4

    .line 903
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 907
    :cond_3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 868
    .end local v1    # "cancel":Z
    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 878
    .restart local v1    # "cancel":Z
    .restart local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .restart local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "oldView":Landroid/view/View;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 912
    .restart local v5    # "newValues":Landroid/support/transition/TransitionValues;
    :cond_6
    invoke-virtual {v11, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 919
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "cancel":Z
    .end local v5    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldInfo":Landroid/support/transition/TransitionPort$AnimationInfo;
    .end local v9    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "oldView":Landroid/view/View;
    :cond_7
    iget-object v12, p0, Landroid/support/transition/TransitionPort;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v13, p0, Landroid/support/transition/TransitionPort;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-virtual {p0, p1, v12, v13}, Landroid/support/transition/TransitionPort;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 920
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->runAnimators()V

    .line 921
    return-void
.end method

.method public removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-object p0

    .line 1064
    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1065
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionPort;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 470
    if-lez p1, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 587
    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 835
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    if-eqz v8, :cond_3

    .line 836
    iget-boolean v8, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    if-nez v8, :cond_2

    .line 837
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 838
    .local v5, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    .line 839
    .local v4, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/WindowIdPort;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdPort;

    move-result-object v7

    .line 840
    .local v7, "windowId":Landroid/support/transition/WindowIdPort;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 841
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort$AnimationInfo;

    .line 842
    .local v2, "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/support/transition/TransitionPort$AnimationInfo;->windowId:Landroid/support/transition/WindowIdPort;

    invoke-virtual {v7, v8}, Landroid/support/transition/WindowIdPort;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 843
    invoke-virtual {v5, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 844
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 840
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 847
    .end local v2    # "info":Landroid/support/transition/TransitionPort$AnimationInfo;
    :cond_1
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 848
    iget-object v8, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 849
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 850
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 851
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 852
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v8, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionResume(Landroid/support/transition/TransitionPort;)V

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 856
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    .end local v7    # "windowId":Landroid/support/transition/WindowIdPort;
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/transition/TransitionPort;->mPaused:Z

    .line 858
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->start()V

    .line 423
    invoke-static {}, Landroid/support/transition/TransitionPort;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    .line 425
    .local v1, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/TransitionPort$AnimationInfo;>;"
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 429
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->start()V

    .line 431
    invoke-direct {p0, v0, v1}, Landroid/support/transition/TransitionPort;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    .line 434
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 435
    invoke-virtual {p0}, Landroid/support/transition/TransitionPort;->end()V

    .line 436
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 1077
    iput-boolean p1, p0, Landroid/support/transition/TransitionPort;->mCanRemoveViews:Z

    .line 1078
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    .line 139
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 157
    return-object p0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;
    .locals 0
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1072
    iput-object p1, p0, Landroid/support/transition/TransitionPort;->mSceneRoot:Landroid/view/ViewGroup;

    .line 1073
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionPort;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    .line 148
    return-object p0
.end method

.method protected start()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 967
    iget v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    if-nez v3, :cond_1

    .line 968
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 969
    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mListeners:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 971
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 972
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 973
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/TransitionPort$TransitionListener;->onTransitionStart(Landroid/support/transition/TransitionPort;)V

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort$TransitionListener;>;"
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/transition/TransitionPort;->mEnded:Z

    .line 978
    :cond_1
    iget v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/transition/TransitionPort;->mNumInstances:I

    .line 979
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/TransitionPort;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1105
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/TransitionPort;->mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    :cond_0
    iget-wide v2, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/support/transition/TransitionPort;->mStartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    :cond_1
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_2
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1116
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1119
    if-lez v0, :cond_4

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1122
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "i":I
    :cond_5
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1126
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1127
    if-lez v0, :cond_6

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/TransitionPort;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1133
    .end local v0    # "i":I
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    :cond_8
    return-object v1
.end method
