.class Lio/appium/android/apis/app/MenuInflateFromXml$1;
.super Ljava/lang/Object;
.source "MenuInflateFromXml.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/MenuInflateFromXml;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MenuInflateFromXml;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MenuInflateFromXml;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/MenuInflateFromXml;

    .line 91
    iput-object p1, p0, Lio/appium/android/apis/app/MenuInflateFromXml$1;->this$0:Lio/appium/android/apis/app/MenuInflateFromXml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/app/MenuInflateFromXml$1;->this$0:Lio/appium/android/apis/app/MenuInflateFromXml;

    invoke-virtual {v0}, Lio/appium/android/apis/app/MenuInflateFromXml;->invalidateOptionsMenu()V

    .line 95
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

    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
