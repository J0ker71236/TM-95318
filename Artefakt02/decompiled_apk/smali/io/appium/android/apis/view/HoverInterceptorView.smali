.class public Lio/appium/android/apis/view/HoverInterceptorView;
.super Landroid/widget/LinearLayout;
.source "HoverInterceptorView.java"


# instance fields
.field private mInterceptHover:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 57
    const v0, 0x7f0900fb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/HoverInterceptorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "textView":Landroid/widget/TextView;
    iget-boolean v1, p0, Lio/appium/android/apis/view/HoverInterceptorView;->mInterceptHover:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/appium/android/apis/view/HoverInterceptorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v1, 0x1

    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/HoverInterceptorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 49
    iget-boolean v0, p0, Lio/appium/android/apis/view/HoverInterceptorView;->mInterceptHover:Z

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setInterceptHover(Z)V
    .locals 0
    .param p1, "intercept"    # Z

    .line 69
    iput-boolean p1, p0, Lio/appium/android/apis/view/HoverInterceptorView;->mInterceptHover:Z

    .line 70
    return-void
.end method
