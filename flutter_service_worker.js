'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "85d64ae3e02672eba913aec0f4e54ef0",
"/main.dart.js": "1536d1ebf20c20a0a3532717c54a9d61",
"/main.dart": "e6027798d84de6c77c55f330e2c73eda",
"/assets/LICENSE": "0d8bbb40e2e0a7acf256734886d2f4f0",
"/assets/images/home_background.jpg": "48a2b9c7e0bdb166b62659169c231c7d",
"/assets/AssetManifest.json": "99914b932bd37a50b983c5e7c90ae93b",
"/assets/FontManifest.json": "33a2dccd10ae90bef407c148df3d685e",
"/assets/fonts/MerriweatherSans-Bold.ttf": "e6255ed1e9fc913e3ea06b68f84795c0",
"/assets/fonts/MerriweatherSans-Regular.ttf": "8b30cce4c6cbc1509374c97abb7c3361",
"/assets/fonts/MaterialIcons-Regular.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"/assets/fonts/MerriweatherSans-Light.ttf": "62e0f5c087402d860bb2db446a678998"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
