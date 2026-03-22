.class Lio/appium/android/apis/app/SoftInputModes$1;
.super Ljava/lang/Object;
.source "SoftInputModes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/SoftInputModes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/SoftInputModes;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SoftInputModes;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SoftInputModes;

    .line 56
    iput-object p1, p0, Lio/appium/android/apis/app/SoftInputModes$1;->this$0:Lio/appium/android/apis/app/SoftInputModes;

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

    .line 59
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/SoftInputModes$1;->this$0:Lio/appium/android/apis/app/SoftInputModes;

    invoke-virtual {v0}, Lio/appium/android/apis/app/SoftInputModes;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/app/SoftInputModes$1;->this$0:Lio/appium/android/apis/app/SoftInputModes;

    iget-object v1, v1, Lio/appium/android/apis/app/SoftInputModes;->mResizeModeValues:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 60
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/SoftInputModes$1;->this$0:Lio/appium/android/apis/app/SoftInputModes;

    invoke-virtual {v0}, Lio/appium/android/apis/app/SoftInputModes;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/app/SoftInputModes$1;->this$0:Lio/appium/android/apis/app/SoftInputModes;

    iget-object v1, v1, Lio/appium/android/apis/app/SoftInputModes;->mResizeModeValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 64
    return-void
.end method
