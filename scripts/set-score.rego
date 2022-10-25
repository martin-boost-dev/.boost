package main

finding_action(finding, analysis) = akt {
    akt := "ignore"
}

set_score(findings_count) = score {
    findings_count >= 2
    score := "D"
} else = score {
    score := "A"
}

analysis_actions(analysis) = acts {
    acts := [{
        "action": "score:set_score",
        "score": set_score(analysis.findings),
    }]
}
# count(analysis.findings)
