#!/usr/bin/env node
var path = require("path"),
    child_process = require("child_process"),
    fs = require("fs"),
    clientModules = path.join(__dirname, "src/modules")

function readFiles(dir) {
    fs.readdir(dir, function (err, files) {
        files.forEach(function (file) {
            file = path.join(dir, file)
            fs.stat(file, function (err, stat) {
                if (err) {
                    console.log(err)
                }
                if (stat.isDirectory()) {
                    readFiles(file)
                } else if (stat.isFile()) {
                    fs.watchFile(file, build)
                }
            })
        })
    })
}

function build() {
    console.log("building")
    child_process.exec("make ncore")
}

readFiles(clientModules)
build()

