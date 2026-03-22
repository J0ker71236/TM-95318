.class Lio/appium/android/apis/app/ScreenOrientation$1;
.super Ljava/lang/Object;
.source "ScreenOrientation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/ScreenOrientation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ScreenOrientation;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ScreenOrientation;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ScreenOrientation;

    .line 62
    iput-object p1, p0, Lio/appium/android/apis/app/ScreenOrientation$1;->this$0:Lio/appium/android/apis/app/ScreenOrientation;

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

    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/ScreenOrientation$1;->this$0:Lio/appium/android/apis/app/ScreenOrientation;

    sget-object v1, Lio/appium/android/apis/app/ScreenOrientation;->mOrientationValues:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ScreenOrientation;->setRequestedOrientation(I)V

    .line 66
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 69
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/ScreenOrientation$1;->this$0:Lio/appium/android/apis/app/ScreenOrientation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ScreenOrientation;->setRequestedOrientation(I)V

    .line 70
    return-void
.end method
