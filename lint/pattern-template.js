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
    description: "Standard Headlines",
    tags: ["headings", "headers", "pattern-template"],
    function: (params, onError) => {
        var allowedHeadlines = "Title|Patlet|Problem|Story|Context|Forces|Solutions|Resulting Context|Known Instances|Status|Author(s)|Acknowledgements";
        var re = new RegExp(`^## (${allowedHeadlines.replace(/(?=[\(\)])/g, '\\')})\\s*$`,"m");
        // console.log(re);

        params.tokens.filter(function filterToken(token) {
            return token.type === "heading_open";
        }).forEach(function forToken(token) {
            if (token.tag === "h2") {
                if (re.test(token.line)) {
                    return;
                }
                // if (/^## ()$/m.test(token.line)) {
                //     return;
                // }

                return onError({
                    lineNumber: token.lineNumber,
                    detail: "Allowed types are: " + allowedHeadlines.replace(/\|/g, ', '),
                    context: token.line
                });
            }
        });
    }
},
{
    names: ["PATTERN-TEMPLATE-RULE-003"],
    description: "Mandatory template sections",
    tags: ["headings", "headers", "pattern-template"],
    function: (params, onError) => {
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

        // collect all h2 headlines
        // (only the headline text itself, removing markdown sytnax and whitespace)
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

        // confirm if all `mandatoryHeadlines` exist exactly once in the `collectedHeadlines`
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
