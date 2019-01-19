"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    "oni.loadInitVim": true,
    // unsplash amsterdam collection
    // "editor.backgroundImageUrl": 'https://source.unsplash.com/collection/3013331',
    // giphy color smoke
    "editor.backgroundImageUrl": 'https://i.giphy.com/media/26BROrSHlmyzzHf3i/giphy.webp',
    "browser.defaultUrl": "https://google.com",
    "editor.backgroundOpacity": 0.8,
    "ui.colorscheme": "base16-tomorrow-night",
    "editor.fontSize": "12px",
    "editor.fontFamily": "Monaco",
    "sidebar.enabled": false,
    "sidebar.default.open": false,
    "statusbar.fontSize": "0.65em",
    "tabs.height": "1.5em",
    "experimental.preview.enabled": true,
    "experimental.markdownPreview.enabled": true,
    "experimental.markdownPreview.autoScroll": true
};
