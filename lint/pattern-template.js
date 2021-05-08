"use strict";

module.exports = [
{
    names: ["PATTERN-TEMPLATE-RULE-001"],
    description: "h2 headlines and below",
    tags: ["headings", "headers", "pattern-template"],
    function: (params, onError) => {
        params.tokens.filter(function filterToken(token) {
            return token.type === "heading_open";
        }).forEach(function forToken(token) {
            if (token.tag === "h1") {
                return onError({
                    lineNumber: token.lineNumber,
                    detail: "Use of #-headlines (h1) is not allowed in patterns. Please only use ##-headlines (h2) and lower.",
                    context: token.line
                });
            }
        });
    }
},
{
    names: ["PATTERN-TEMPLATE-RULE-002"],
    description: "Mandatory template sections",
    information: new URL("https://github.com/InnerSourceCommons/InnerSourcePatterns/blob/main/meta/pattern-template.md"),
    tags: ["headings", "headers", "pattern-template"],
    function: (params, onError) => {
        // A list of all mandatory headlines.
        // headline name (from template): regexp of all permitted headline spellings
        var mandatoryHeadlines = {
          "Title": "Title",
          "Patlet": "Patlet",
          "Problem": "Problem",
          "Context": "Context",
          "Forces": "Forces",
          "Solutions": "Solution|Solutions",
          "Resulting Context": "Resulting Context",
          "Known Instances": "Known Instances",
          "Status": "Status",
          "Author(s)": "Author|Authors|(Author\\(s\\))"
        };

        var collectedHeadlines = ""

        // Collect all h2 (##) headlines.
        // Only the headline text, removing markdown and whitespaces.
        params.tokens.filter(function filterToken(token) {
            return token.type === "heading_open";
        }).forEach(function forToken(token) {
            if (token.tag === "h2") {
                let re = new RegExp("^## (.*?)\\s*$","m");
                let matchResult = token.line.match(re);

                if (matchResult != null) {
                  collectedHeadlines += matchResult[1] + "\n"
                }
            }
        });

        // confirm if all `mandatoryHeadlines` exist and exist exactly once in the `collectedHeadlines`
        var errorsFound = [];

        let headline;
        for (headline in mandatoryHeadlines){
          let pattern = mandatoryHeadlines[headline];
          let re = new RegExp(`^${pattern}$`,"gm");
          let matchResult = collectedHeadlines.match(re);

          // TODO as soon as I use the option 'g' in the regexp, it does not return a full match array anymore
          if (matchResult != null) {
              if (matchResult.length >= 2 ) {
                errorsFound.push(`Duplicate headline "${headline}".`);
              }
          }
          else {
            errorsFound.push(`Required headline "${headline}" is missing.`);
          }
        }

        // if any errors were found, raise a linter error
        if (errorsFound.length > 0) {
          return onError({
              lineNumber: 1,
              detail: errorsFound.join(" ")
          });
        }
    }
}
];
