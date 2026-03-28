#!/bin/bash
# نسخة معالجة لمشكلة الويندوز
APP_DIR="MohamedAbdelazimApp"
mkdir -p $APP_DIR/app/src/main/java/com/abdelazim/islamicapp
mkdir -p $APP_DIR/app/src/main/res/layout
mkdir -p $APP_DIR/app/src/main/res/drawable
mkdir -p $APP_DIR/app/src/main/res/values

# إنشاء ملف النصوص
echo '<resources><string name="app_name">تطبيق محمد عبد العظيم الطويل</string></resources>' > $APP_DIR/app/src/main/res/values/strings.xml

# إنشاء الواجهة وصورة الوالد
cat <<EOF > $APP_DIR/app/src/main/res/layout/activity_main.xml
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent" android:layout_height="match_parent"
    android:background="@drawable/father_background">
    <TextView android:layout_width="wrap_content" android:layout_height="wrap_content"
        android:text="صدقة جارية: محمد عبد العظيم الطويل" android:layout_centerInParent="true" 
        android:textColor="#FFFFFF" android:textSize="20sp"/>
</RelativeLayout>
EOF

# كود البرمجة
cat <<EOF > $APP_DIR/app/src/main/java/com/abdelazim/islamicapp/MainActivity.java
package com.abdelazim.islamicapp;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
public class MainActivity extends AppCompatActivity {
    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
EOF
