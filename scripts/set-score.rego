package main

is_violation(finding, analysis) = r {
    r := true
}

finding_actions(finding, param, analysis) = r {
    r := []
}

set_score(findings_count) = score {
    findings_count >= 0
    score := "D"
} else = score {
    score := "A"
}
wat wat {
analysis_actions(analysis) = acts {
    acts := [{
        "action": "score:set_score",
        "score": set_score(count(analysis.findings)),
    }]
}
