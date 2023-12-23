# Photo Gallery

- a screen divided into 2 halves where first half shows vertical and other half shows horizontal scrollable pictures

<table>
  <tr>
    <td> 
      <img src="https://github.com/sajjadrahman56/Flutter-Showcase/assets/67529599/9e39426d-9eb1-4ab3-9ef0-b10d57221168" alt="Image 1" style="width: 200px; height: 300px;">
      <p align="center">Horizontal Grid Image</p>
    </td><td width="20"></td> 
    <td>
      <img src="https://github.com/sajjadrahman56/Flutter-Showcase/assets/67529599/9e39426d-9eb1-4ab3-9ef0-b10d57221168" alt="Image 2" style="width: 200px; height: 300px;">
      <p align="center">Vertical Grid Image</p>
    </td>
  </tr>
</table>

---- 

## Widget Description

Flutter doesn't have a built-in grid system like Bootstrap or other web frameworks. However, it provides several widgets that can be used to create a grid layout. The most commonly used widget for this purpose is `GridView`.

`GridView` is a widget in Flutter that displays its children in a scrolling grid. It takes a `GridDelegate` which determines the structure of the grid. The most common delegate is `SliverGridDelegateWithFixedCrossAxisCount` which allows you to specify the number of columns in the grid.

### task 
- An app bar titled "Photo Gallery"
- A scrollable view with a welcome message.
- A text field
- A grid of at least 6 network images with captions.
- Each image triggers a Snackbar when clicked, you can show any text on the message.
- Below the grid, a list of three sample photos with titles and subtitles.
- An upload button that shows the message “Photos Uploaded Successfully!” in a Snackbar.
- Use any font style or icon size that makes the UI visually appealing.
