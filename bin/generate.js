#!/usr/bin/env node
'use strict';

const childProcess = require('child_process');
const fs = require('fs');

var path = process.argv.length < 3 ? '.' : process.argv[2];

var process_generate = childProcess.spawn('./node_modules/podigg/bin/generate-env.js', [path]);
process_generate.stdout.pipe(process.stdout);
process_generate.stderr.pipe(process.stderr);
process_generate.on('close', (code_generate) => {
    if(!code_generate) {
        var process_convert = childProcess.spawn('./node_modules/gtfs2lc/bin/gtfs2lc.js', [path + '/gtfs', '-f', 'turtle', '-r', '-t', '-a']);
        process_convert.stdout.pipe(fs.createWriteStream(path + '/lc.ttl'));
        process_convert.stderr.pipe(process.stderr);
        process_convert.on('close', (code_convert) => {
            if (code_generate) {
                throw new Error('Conversion exited with exit code ' + code_convert);
            }
        });
    } else {
        throw new Error('Generation exited with exit code ' + code_generate);
    }
});