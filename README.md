# FrameKit

A library to design web pages without the web part.

## What can I do with FrameKit?

FrameKit enables you to quickly prototype webpages and integrate with a web server.

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
