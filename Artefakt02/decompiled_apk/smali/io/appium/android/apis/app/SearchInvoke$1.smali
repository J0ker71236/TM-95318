.class Lio/appium/android/apis/app/SearchInvoke$1;
.super Ljava/lang/Object;
.source "SearchInvoke.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/SearchInvoke;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/SearchInvoke;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SearchInvoke;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SearchInvoke;

    .line 81
    iput-object p1, p0, Lio/appium/android/apis/app/SearchInvoke$1;->this$0:Lio/appium/android/apis/app/SearchInvoke;

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

    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke$1;->this$0:Lio/appium/android/apis/app/SearchInvoke;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/SearchInvoke;->setDefaultKeyMode(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke$1;->this$0:Lio/appium/android/apis/app/SearchInvoke;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/SearchInvoke;->setDefaultKeyMode(I)V

    .line 89
    :goto_0
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

    .line 92
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke$1;->this$0:Lio/appium/android/apis/app/SearchInvoke;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/SearchInvoke;->setDefaultKeyMode(I)V

    .line 93
    return-void
.end method
