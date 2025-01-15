# Virtual Cursor Example

In this example, we replace the default mouse cursor with a custom image. The cursor image follows the mouse movement

## File Structure

The project consists of the following files:

```
000_virtual_cursor/
├── main.lua
├── cursor.png
└── conf.lua (optional)
```

- **main.lua**: The main script that contains the logic for loading and displaying the custom cursor.
- **cursor.png**: The image file used as the custom cursor.
- **conf.lua**: Configuration file for setting up Love2D options (optional and not necessary for this example).

## How to Run

To run this example, follow these steps:

1. **Clone the repository** (if you haven't already):
   ```bash
   git clone https://github.com/kyborq/love2d-examples.git
   ```
2. **Navigate to the example folder**:

   ```bash
   cd love2d-examples/000_virtual_cursor
   ```

3. **Run the example using Love2D**:
   ```bash
   love .
   ```

## Code Explanation

Here’s a breakdown of the `main.lua` code:

```lua
local cursor = nil
local x, y = 0, 0

function love.load()
    love.mouse.setVisible(false)  -- Hide the default mouse cursor
    cursor = love.graphics.newImage("cursor.png")  -- Load the custom cursor image
end

function love.update(dt)
    x, y = love.mouse.getPosition()  -- Get the current mouse position
end

function love.draw()
    love.graphics.draw(cursor, x, y)  -- Draw the custom cursor at the mouse position
end
```

- **love.load()**: This function initializes the game by hiding the default mouse cursor and loading the custom cursor image.
- **love.update(dt)**: Updates the x and y coordinates of the mouse position every frame.
- **love.draw()**: Draws the custom cursor image at the current mouse position.

## Customizing Your Cursor

To customize your cursor:

- Replace `cursor.png` with your own image file.
- Ensure that your image is appropriately sized for a cursor.

## License

This example is licensed under the MIT License. Feel free to modify and share it according to your needs.
