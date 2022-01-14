//#!/usr/bin/node
// sends json content to standard output
JSON.parse(
  require("fs").readFileSync(
    process.env.MY_SCRIPTS + "jsons/" + process.argv[2],
    "utf-8"
  )
).forEach((value) => {
  process.stdout.write(JSON.stringify(value) + "\n");
});
