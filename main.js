const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Photos',
  protocol: 'icloud-photos',
  icloudUrl: 'https://www.icloud.com/photos',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
