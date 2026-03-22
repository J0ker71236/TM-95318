.class Lio/appium/android/apis/content/ClipboardSample$2;
.super Ljava/lang/Object;
.source "ClipboardSample.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/content/ClipboardSample;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/content/ClipboardSample;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/ClipboardSample;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/ClipboardSample;

    .line 86
    iput-object p1, p0, Lio/appium/android/apis/content/ClipboardSample$2;->this$0:Lio/appium/android/apis/content/ClipboardSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 89
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/content/ClipboardSample$2;->this$0:Lio/appium/android/apis/content/ClipboardSample;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/content/ClipboardSample;->updateClipData(Z)V

    .line 90
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 92
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
