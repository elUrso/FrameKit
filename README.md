# FrameKit

A library to design web pages without the web part.


## Frames, Representables, Layouts

Webpages are content based and frames are resposible for expressing content structure.

Representables is something that can be inserted into a HTMLElement, which may not only be a HTMLElement.

eg: <p><i>Italic</i> text.<p> ->

Paragraph {
    Italics {
        "Italic"
    }
    " text."
}

Layouts are stylizes for content. Layouts require structure, this is why a Layout needs a structure: protocol Layout<Structure, Model>
Styles are direc applyed to the frame usign either direct scope or global scope




## Frames and Contexts

A frame visual representation of something. For example:

```swift
let page: some Frame {
    Button("OK")
}
```


## Concepts

### Frame

A frame is a value that contains strutural information to be displayed. A div, a span, a text, a image, all are frames.

### Statefull Frame

Is a frame that requires a context to know how to render itself.

### Context

Is a state used to render a frame

### Controllers

Manages frames and context, the most proeminent example is ```List```

```
let post = List(of: Post.self, from: postContentList)
let html = post.display()
```
