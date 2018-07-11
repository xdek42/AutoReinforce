.class public Landroid/support/design/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private mBaseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 45
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v3

    .line 88
    .local v3, "count":I
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingLeft()I

    move-result v7

    .line 89
    .local v7, "parentLeft":I
    sub-int v11, p4, p2

    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    .line 90
    .local v8, "parentRight":I
    sub-int v6, v8, v7

    .line 91
    .local v6, "parentContentWidth":I
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingTop()I

    move-result v9

    .line 93
    .local v9, "parentTop":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 94
    invoke-virtual {p0, v5}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 93
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 100
    .local v10, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 102
    .local v4, "height":I
    sub-int v11, v6, v10

    div-int/lit8 v11, v11, 0x2

    add-int v1, v7, v11

    .line 104
    .local v1, "childLeft":I
    iget v11, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 105
    iget v11, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    add-int/2addr v11, v9

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v12

    sub-int v2, v11, v12

    .line 110
    .local v2, "childTop":I
    :goto_2
    add-int v11, v1, v10

    add-int v12, v2, v4

    invoke-virtual {v0, v1, v2, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 107
    .end local v2    # "childTop":I
    :cond_1
    move v2, v9

    .restart local v2    # "childTop":I
    goto :goto_2

    .line 112
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v10    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, -0x1

    .line 48
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v3

    .line 49
    .local v3, "count":I
    const/4 v8, 0x0

    .line 50
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    .line 51
    .local v7, "maxHeight":I
    const/4 v5, -0x1

    .line 52
    .local v5, "maxChildBaseline":I
    const/4 v6, -0x1

    .line 53
    .local v6, "maxChildDescent":I
    const/4 v2, 0x0

    .line 55
    .local v2, "childState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 56
    invoke-virtual {p0, v4}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 55
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/support/design/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 63
    .local v0, "baseline":I
    if-eq v0, v11, :cond_1

    .line 64
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 67
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 70
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v9

    .line 69
    invoke-static {v2, v9}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_1

    .line 72
    .end local v0    # "baseline":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    if-eq v5, v11, :cond_3

    .line 73
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingBottom()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 74
    add-int v9, v5, v6

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 75
    iput v5, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 78
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 80
    invoke-static {v8, p1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v9

    shl-int/lit8 v10, v2, 0x10

    .line 81
    invoke-static {v7, p2, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v10

    .line 79
    invoke-virtual {p0, v9, v10}, Landroid/support/design/internal/BaselineLayout;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method
