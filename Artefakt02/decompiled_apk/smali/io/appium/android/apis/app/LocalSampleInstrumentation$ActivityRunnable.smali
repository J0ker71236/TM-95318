.class public abstract Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;
.super Ljava/lang/Object;
.source "LocalSampleInstrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalSampleInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityRunnable"
.end annotation


# instance fields
.field public final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "_activity"    # Landroid/app/Activity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;->activity:Landroid/app/Activity;

    .line 36
    return-void
.end method
