nCore-Boilerplate
===

Boilerplate application to start up any application using [nCore][1].

Introduction
---

Firstly, this application is not an example of an architecture using nCore. For this, refer to [nCore-leaderboard][2].

This application is the basic folders and files structure to develop an application using nCore.

Instructions
---

Whenever you start developing, start the building script with the following command: `./build.js`. Do not use `&` to have it run as a background process, it will not work.

The building script will automatically compile all the files in the `src/modules` directory into the `lib/bundle.js` file whenever a file is saved to disk.

If you want to change the source folder, you can change it in the `Makefile` file. If you want to change the destination file and directory, you can also do it in the `Makefile` file.

By default, you:

- Develop in the `src/modules` folder by creating modules.
- Specify your dependencies (so that nCore can inject dependencies correctly) in the `src/modules/dependency.json` file.
- Get the compiled file every time a file is saved in `lib/bundle.js`

License
---

MIT License.

[1]: https://github.com/Raynos/ncore
[2]: https://github.com/Raynos/ncore-leaderboard
