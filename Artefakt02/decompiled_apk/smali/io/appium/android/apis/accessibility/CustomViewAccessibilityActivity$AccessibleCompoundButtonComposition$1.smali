.class Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "CustomViewAccessibilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->tryInstallAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;


# direct methods
.method constructor <init>(Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    .line 146
    iput-object p1, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;->this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 149
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 153
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;->this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 154
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 159
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;->this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;->this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 174
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition$1;->this$0:Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/CustomViewAccessibilityActivity$AccessibleCompoundButtonComposition;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void
.end method
