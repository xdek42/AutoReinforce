.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final SIMPLE_LAYOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private final mSizeDependentsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field previousHeightMeasureSpec:I

.field previousPaddingLeft:I

.field previousPaddingTop:I

.field previousWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 65
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 399
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 400
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 401
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 402
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 66
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 399
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 400
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 401
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 402
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 71
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 399
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 400
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 401
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 402
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 76
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 77
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 335
    :goto_0
    return-object v1

    .line 331
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 332
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_1

    .line 333
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_0

    .line 335
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method private final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    if-ne p1, p0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method private solveLinearSystem()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/constraint/solver/widgets/Animator;->setAnimationEnabled(Z)V

    .line 562
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 567
    return-void
.end method

.method private updateHierarchy()V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 135
    .local v1, "count":I
    const/4 v3, 0x0

    .line 136
    .local v3, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 137
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    const/4 v3, 0x1

    .line 143
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_1

    .line 144
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 147
    :cond_1
    return-void

    .line 136
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 619
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 609
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 604
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 614
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method internalMeasureChildren(II)V
    .locals 15
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    add-int v6, v13, v14

    .line 348
    .local v6, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    add-int v12, v13, v14

    .line 350
    .local v12, "widthPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v10

    .line 351
    .local v10, "widgetsCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_4

    .line 352
    invoke-virtual {p0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 353
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 357
    .local v8, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 358
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v13, :cond_0

    .line 362
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 363
    .local v11, "width":I
    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 368
    .local v5, "height":I
    if-nez v11, :cond_2

    .line 369
    const/4 v13, -0x2

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 376
    .local v4, "childWidthMeasureSpec":I
    :goto_2
    if-nez v5, :cond_3

    .line 377
    const/4 v13, -0x2

    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    .line 383
    .local v3, "childHeightMeasureSpec":I
    :goto_3
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 385
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 386
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 387
    invoke-virtual {v9, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 388
    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 390
    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v13, :cond_0

    .line 391
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 392
    .local v1, "baseline":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_0

    .line 393
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto :goto_1

    .line 372
    .end local v1    # "baseline":I
    .end local v3    # "childHeightMeasureSpec":I
    .end local v4    # "childWidthMeasureSpec":I
    :cond_2
    move/from16 v0, p1

    invoke-static {v0, v12, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    .restart local v4    # "childWidthMeasureSpec":I
    goto :goto_2

    .line 380
    :cond_3
    move/from16 v0, p2

    invoke-static {v0, v6, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    .restart local v3    # "childHeightMeasureSpec":I
    goto :goto_3

    .line 397
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeightMeasureSpec":I
    .end local v4    # "childWidthMeasureSpec":I
    .end local v5    # "height":I
    .end local v8    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "width":I
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 571
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    .line 572
    .local v8, "widgetsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 573
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 574
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 575
    .local v4, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v7, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 577
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v3

    .line 578
    .local v3, "l":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v6

    .line 579
    .local v6, "t":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int v5, v3, v9

    .line 580
    .local v5, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int v0, v6, v9

    .line 598
    .local v0, "b":I
    invoke-virtual {v1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v0    # "b":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "l":I
    .end local v4    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v5    # "r":I
    .end local v6    # "t":I
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 407
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 408
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 411
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v12

    .line 412
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v13

    .line 414
    .local v13, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v12, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 424
    invoke-virtual/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 426
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 427
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 428
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 429
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 431
    invoke-virtual/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 440
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 441
    const/4 v6, 0x0

    .line 444
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 446
    .local v16, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v21

    add-int v8, v13, v21

    .line 447
    .local v8, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v21

    add-int v19, v12, v21

    .line 449
    .local v19, "widthPadding":I
    if-lez v16, :cond_8

    .line 450
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 452
    .local v17, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 450
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 455
    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 456
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 460
    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 461
    .local v20, "widthSpec":I
    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 463
    .local v9, "heightSpec":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 464
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 465
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v20

    .line 467
    :cond_5
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 468
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v8, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v9

    .line 472
    :cond_6
    move/from16 v0, v20

    invoke-virtual {v5, v0, v9}, Landroid/view/View;->measure(II)V

    .line 474
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 475
    .local v18, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 476
    .local v7, "height":I
    invoke-virtual/range {v17 .. v18}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 477
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 479
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 480
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v6, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_1

    .line 483
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "height":I
    .end local v9    # "heightSpec":I
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v18    # "width":I
    .end local v20    # "widthSpec":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 486
    .end local v10    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v21

    add-int v4, v21, v19

    .line 487
    .local v4, "androidLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v21

    add-int v3, v21, v8

    .line 489
    .local v3, "androidLayoutHeight":I
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 490
    move/from16 v0, p1

    invoke-static {v4, v0, v6}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v15

    .line 491
    .local v15, "resolvedWidthSize":I
    shl-int/lit8 v21, v6, 0x10

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v14

    .line 493
    .local v14, "resolvedHeightSize":I
    const v21, 0xffffff

    and-int v21, v21, v15

    const v22, 0xffffff

    and-int v22, v22, v14

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 497
    .end local v14    # "resolvedHeightSize":I
    .end local v15    # "resolvedWidthSize":I
    :goto_2
    return-void

    .line 495
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    goto :goto_2
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 106
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, p1, Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_1

    .line 107
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 109
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 111
    iget-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 114
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 115
    .local v0, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 116
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 118
    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 119
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 120
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 128
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 129
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 130
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 98
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 874
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 876
    return-void
.end method

.method setChildrenConstraints()V
    .locals 15

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v7

    .line 151
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1d

    .line 152
    invoke-virtual {p0, v9}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 153
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v14

    .line 154
    .local v14, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v14, :cond_1

    .line 151
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 160
    .local v10, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 161
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 162
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 163
    invoke-virtual {v14, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 165
    iget-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    if-nez v2, :cond_3

    .line 166
    :cond_2
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mSizeDependentsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_3
    iget-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v2, :cond_8

    move-object v8, v14

    .line 170
    check-cast v8, Landroid/support/constraint/solver/widgets/Guideline;

    .line 171
    .local v8, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 172
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 174
    :cond_4
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 175
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 177
    :cond_5
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 178
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 180
    :cond_6
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->VERTICAL:I

    if-ne v2, v3, :cond_7

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    goto :goto_1

    .line 183
    :cond_7
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    goto :goto_1

    .line 185
    .end local v8    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_8
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_0

    .line 198
    :cond_9
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 199
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    .line 202
    :cond_a
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 203
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    .line 207
    :cond_b
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_17

    .line 208
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 209
    .local v11, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_c

    .line 210
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 222
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_c
    :goto_2
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_18

    .line 223
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 224
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_d

    .line 225
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 237
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_d
    :goto_3
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_19

    .line 238
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 239
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_e

    .line 240
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 252
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_e
    :goto_4
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_1a

    .line 253
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 254
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_f

    .line 255
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    .line 267
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_f
    :goto_5
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_10

    .line 268
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 269
    .local v13, "view":Landroid/view/View;
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 270
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_10

    .line 271
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 272
    .local v12, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 274
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 275
    .local v0, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 276
    invoke-virtual {v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 277
    .local v1, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 280
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 281
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 285
    .end local v0    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v1    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v13    # "view":Landroid/view/View;
    :cond_10
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_11

    .line 286
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 288
    :cond_11
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_12

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_12

    .line 289
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 293
    :cond_12
    iget-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalLock:Z

    if-nez v2, :cond_1b

    .line 294
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ANY:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 296
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 297
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 303
    :cond_13
    :goto_6
    iget-boolean v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalLock:Z

    if-nez v2, :cond_1c

    .line 304
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ANY:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 306
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 307
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 314
    :cond_14
    :goto_7
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_16

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-ne v2, v3, :cond_15

    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_16

    .line 316
    :cond_15
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v3, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v14, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 319
    :cond_16
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 320
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(F)V

    goto/16 :goto_1

    .line 213
    :cond_17
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_c

    .line 214
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 215
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_c

    .line 216
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    goto/16 :goto_2

    .line 228
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_18
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_d

    .line 229
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 230
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_d

    .line 231
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    goto/16 :goto_3

    .line 243
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_19
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_e

    .line 244
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 245
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_e

    .line 246
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    goto/16 :goto_4

    .line 258
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1a
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    sget v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;->UNSET:I

    if-eq v2, v3, :cond_f

    .line 259
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 260
    .restart local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_f

    .line 261
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v4, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v14, v2, v11, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;I)V

    goto/16 :goto_5

    .line 300
    .end local v11    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1b
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 301
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_6

    .line 310
    :cond_1c
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 311
    iget v2, v10, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v14, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_7

    .line 325
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v14    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1d
    return-void
.end method

.method setSelfDimensionBehaviour(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 500
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 501
    .local v8, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 502
    .local v10, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 503
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 505
    .local v5, "heightSize":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 506
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v12

    add-int v9, v11, v12

    .line 508
    .local v9, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 509
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 510
    .local v2, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v1, 0x0

    .line 511
    .local v1, "desiredWidth":I
    const/4 v0, 0x0

    .line 514
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 515
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    sparse-switch v8, :sswitch_data_0

    .line 532
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 550
    :goto_1
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 551
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 552
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 553
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 554
    return-void

    .line 517
    :sswitch_0
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 519
    goto :goto_0

    .line 521
    :sswitch_1
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v11, :cond_0

    .line 522
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 524
    :cond_0
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 527
    goto :goto_0

    .line 529
    :sswitch_2
    sub-int v1, v10, v9

    goto :goto_0

    .line 534
    :sswitch_3
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 536
    goto :goto_1

    .line 538
    :sswitch_4
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v11, :cond_1

    .line 539
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 541
    :cond_1
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 544
    goto :goto_1

    .line 546
    :sswitch_5
    sub-int v0, v5, v4

    goto :goto_1

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    .line 532
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method
