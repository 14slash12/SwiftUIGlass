# SwiftGlass
## Add a muted or frosted GlassView inside your App
Since frosted glass is a popular design element, which is also used by Apple for the control center or the app library.

## Example usacases
<img width="200" alt="Screenshot 2023-08-07 at 15 49 29" src="https://github.com/14slash12/SwiftGlass/assets/59373377/1d2c8e88-cc3f-43c9-8af0-ce94d175c41b">
<img width="200" alt="Screenshot 2023-08-07 at 15 52 32" src="https://github.com/14slash12/SwiftGlass/assets/59373377/54413624-5551-48ae-bb96-a9e890f11cf0">
<img width="200" alt="Screenshot 2023-08-07 at 15 53 51" src="https://github.com/14slash12/SwiftGlass/assets/59373377/5e5d762a-965d-4f35-ab93-1732d4410685">

The GlassPane, GlassList, GlassLazyHGrid and GlassLazyVGrid make it super easy to embrace the glass style inside any view.

## GlassView
Just call inside your view modify it the way you want.
```swift
GlassView(cornerRadius: 20.0)
```
The additional parameters change following:

```swift
public struct GlassView: View {
    let cornerRadius: CGFloat // Changes the corner radius for the given corners
    let corners: UIRectCorner? // Specifies which corners get rounded
    let fill: Color // The background color of the GlassView
    let opacity: CGFloat // The opacity of the GlassView
    let shadowRadius: CGFloat // The shadowRadius of the GlassView

    ...
}
```
The default settings are:
```swift
public struct GlassView: View {
  ...

  public init(cornerRadius: CGFloat, corners: UIRectCorner? = .allCorners, fill: Color = .white, opacity: CGFloat = 0.25, shadowRadius: CGFloat = 10.0) {
  ...
  }

  ...
}
```

## GlassList
```swift
GlassList(items: vegetables, with: 20.0) { vegetable in
  Text("\(vegetable.name)")
}
```

## GlassPane
```swift
GlassPane(with: 20) {
  Text("Hello World! 🌐")
}
.padding(EdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10))
```

## GlassGrids
```swift
GlassLazyVGrid(items: vegetables, cornerRadius: 10.0, columns: columns, spacing: 16) { vegetable in
    Text("\(vegetable.name)")
        .padding()
}
.padding()
```
