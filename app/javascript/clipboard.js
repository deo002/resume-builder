// const copyTextToClipboard = async (text) => {
//     if (!navigator.clipboard) {
//         return;
//     }
//     try {
//         await navigator.clipboard.writeText(text);
//     } catch (e) {
//         console.error('Async: Could not copy text: ', e);
//     }
// };

console.log("hello");

document.addEventListener("turbolinks:load", function () {

    const btn = document.getElementById('copy_link');

    console.log(btn.value);
});