package com.rnmaps.maps;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.google.android.gms.maps.model.LatLng;

import java.util.List;
import java.util.ArrayList;

public class MapGradientPolylineManager extends ViewGroupManager<MapGradientPolyline> {
  private final DisplayMetrics metrics;

  public MapGradientPolylineManager(ReactApplicationContext reactContext) {
    super();
    metrics = new DisplayMetrics();
    ((WindowManager) reactContext.getSystemService(Context.WINDOW_SERVICE))
        .getDefaultDisplay()
        .getRealMetrics(metrics);
  }

  @Override
  public String getName() {
    return "RNMMapGradientPolyline";
  }

  @Override
  public MapGradientPolyline createViewInstance(ThemedReactContext context) {
    return new MapGradientPolyline(context);
  }

  @ReactProp(name = "coordinates")
  public void setCoordinates(MapGradientPolyline view, ReadableArray coordinates) {
    List<LatLng> p = new ArrayList<LatLng>();
    for (int i = 0; i < coordinates.size(); i++) {
      ReadableMap point = coordinates.getMap(i);
      LatLng latLng = new LatLng(point.getDouble("latitude"), point.getDouble("longitude"));
      p.add(latLng);
    }
    view.setCoordinates(p);
  }

  @ReactProp(name = "strokeColors", customType = "ColorArray")
  public void setStrokeColors(MapGradientPolyline view, ReadableArray colors) {
    if (colors != null) {
      if (colors.size() == 0) {
        int[] colorValues = {0,0};
        view.setStrokeColors(colorValues);
      } else if (colors.size() == 1) {
        int[] colorValues = { colors.getInt(0), colors.getInt(0) };
        view.setStrokeColors(colorValues);
      } else {
        int[] colorValues = new int[colors.size()];
        for (int i = 0; i < colors.size(); i++) {
          colorValues[i] = colors.getInt(i);
        }
        view.setStrokeColors(colorValues);
      }
    } else {
      int[] colorValues = {0,0};
      view.setStrokeColors(colorValues);
    }
  }

  @ReactProp(name = "zIndex", defaultFloat = 1.0f)
  public void setZIndex(MapGradientPolyline view, float zIndex) {
    view.setZIndex(zIndex);
  }


  @ReactProp(name = "strokeWidth", defaultFloat = 1f)
  public void setStrokeWidth(MapGradientPolyline view, float widthInPoints) {
    float widthInScreenPx = metrics.density * widthInPoints; // done for parity with iOS
    view.setWidth(widthInScreenPx);
  }
}