# vscode

1. Vertical rulers in Visual Studio Code

    https://stackoverflow.com/a/29972073

    Visual Studio Code 0.10.10 introduced this feature. To configure it,
    go to menu File → Preferences → Settings and add this to to your user or workspace settings:

    ```json
    "editor.rulers": [80,120]
    The color of the rulers can be customized like this:

    "workbench.colorCustomizations": {
        "editorRuler.foreground": "#ff4081"
    }
    ```
