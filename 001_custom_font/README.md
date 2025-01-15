# Custom Font Example

In this example, we load a custom TrueType font and use it to render text on the screen. This allows for greater flexibility in designing the visual style of your game’s user interface.

## File Structure

The project consists of the following files:

```
001_custom_font/
├── main.lua
└── PixelFraktur.ttf
└── conf.lua (optional)
```

- **main.lua**: The main script that contains the logic for loading and displaying the custom font.
- **PixelFraktur.ttf**: The TrueType font file used for rendering text.
- **conf.lua**: Configuration file for setting up Love2D options (optional and not necessary for this example).

## How to Run

To run this example, follow these steps:

1. **Clone the repository** (if you haven't already):

   ```bash
   git clone https://github.com/kyborq/love2d-examples.git
   ```

2. **Navigate to the example folder**:

   ```bash
   cd love2d-examples/001_custom_font
   ```

3. **Run the example using Love2D**:
   ```bash
   love .
   ```

## Code Explanation

Here’s a breakdown of the `main.lua` code:

```lua
local font = nil

function love.load()
    font = love.graphics.newFont("PixelFraktur.ttf", 32)  -- Load the custom font at size 32
    love.graphics.setFont(font)  -- Set the loaded font as the current font
end

function love.draw()
    love.graphics.print("Hello Love2D!", 100, 200)  -- Print text on the screen at coordinates (100, 200)
end
```

- **love.load()**: This function initializes the game by loading the custom font from `PixelFraktur.ttf`. The font size is set to 32 pixels.
- **love.draw()**: Renders the text "Hello Love2D!" at specified coordinates (100, 200) on the screen.

## Customizing Your Font

To customize your text display:

- Replace `PixelFraktur.ttf` with your own TrueType font file.
- Adjust the font size in `love.graphics.newFont("PixelFraktur.ttf", size)` to suit your design needs.
- Modify the text string in `love.graphics.print("Your Text Here", x, y)` to display different messages.

## License

This example is licensed under the MIT License. Feel free to modify and share it according to your needs.
