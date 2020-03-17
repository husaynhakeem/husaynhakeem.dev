// App script that reads the articles data from a google sheets file.

var KEYS = ["publishDate", "title", "summary", "url"];

function doGet(request) {
  var sheet = SpreadsheetApp.openById("17hOtmCMQKHxF2QL8G2Jiwt-j5o04sVTQvBTDiTfCZ7w");
  var articles = sheet.getDataRange().getValues();
  var articlesJson = toJsonArray(articles);
  return ContentService.createTextOutput(JSON.stringify(articlesJson)).setMimeType(ContentService.MimeType.JSON);
}

function toJsonArray(articles) {
  var allArticlesJson = [];

  for (var i = 0; i < articles.length; i++) {
    // A row, which represents 1 article
    var articleRow = articles[i];

    var articleJson = {};
    for (var col = 0; col < KEYS.length; col++) {
      articleJson[KEYS[col]] = articleRow[col];
    }

    allArticlesJson.push(articleJson);
  }

  return allArticlesJson;
}