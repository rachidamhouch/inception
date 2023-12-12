const express = require('express');
const app = express();
const port = 3000;

app.use(express.static("public"));

app.get("*",async (req, res) => {
    res.status(404).send('<h1 style="text-align:center">404: Page not found</h1>')
})
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});