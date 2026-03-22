.class Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualView"
.end annotation


# static fields
.field public static final ALPHA_NOT_SELECTED:I = 0x7f

.field public static final ALPHA_SELECTED:I = 0xff


# instance fields
.field public mAlpha:I

.field public final mBounds:Landroid/graphics/Rect;

.field public final mColor:I

.field public final mId:I

.field public final mText:Ljava/lang/String;

.field final synthetic this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;ILandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "color"    # I
    .param p5, "text"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput p2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    .line 338
    iput p4, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mColor:I

    .line 339
    iput-object p3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    .line 340
    iput-object p5, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    .line 341
    const/16 p1, 0x7f

    iput p1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mAlpha:I

    .line 342
    return-void
.end method
