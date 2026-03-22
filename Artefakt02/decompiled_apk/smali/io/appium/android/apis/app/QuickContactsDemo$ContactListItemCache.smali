.class final Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;
.super Ljava/lang/Object;
.source "QuickContactsDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/QuickContactsDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactListItemCache"
.end annotation


# instance fields
.field public nameBuffer:Landroid/database/CharArrayBuffer;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/QuickContactBadge;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    return-void
.end method
