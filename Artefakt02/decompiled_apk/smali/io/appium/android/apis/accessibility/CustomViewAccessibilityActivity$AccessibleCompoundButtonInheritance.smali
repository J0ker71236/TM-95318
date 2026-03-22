.class public Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;
.super Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;
.source "CustomViewAccessibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibleCompoundButtonInheritance"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isChecked()Z
    .locals 1

    .line 74
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 82
    invoke-super {p0, p1}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 87
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 91
    invoke-super {p0, p1}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 96
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 98
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    return-void
.end method

.method public bridge synthetic onMeasure(II)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 106
    invoke-super {p0, p1}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 110
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonInheritance;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public bridge synthetic performClick()Z
    .locals 1

    .line 74
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->performClick()Z

    move-result v0

    return v0
.end method
