.class public Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;
.super Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;
.source "CustomViewAccessibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibleCompoundButtonComposition"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 128
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->tryInstallAccessibilityDelegate()V

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 125
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isChecked()Z
    .locals 1

    .line 125
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onMeasure(II)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->onMeasure(II)V

    return-void
.end method

.method public bridge synthetic performClick()Z
    .locals 1

    .line 125
    invoke-super {p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$BaseToggleButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public tryInstallAccessibilityDelegate()V
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 141
    return-void

    .line 146
    :cond_0
    new-instance v0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;-><init>(Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 184
    return-void
.end method
