const {chromium} = require("playwright");

(async () => {

    const browser = await chromium.launch();
    const page = await browser.newPage();
    await page.goto(process.env.ENVIRONMENT_URL);

    {{> handle_pp }}

    // YOUR CHECK LOGIC HERE

    await browser.close();

})()