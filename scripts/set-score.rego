package main

is_violation(finding, analysis) = r {
    r := true
}

set_score(findings_count) = score {
    findings_count >= 0
    score := "D"
} else = score {
    score := "A"
}

finding_actions(finding, param, analysis) = r {
    r := []
}

analysis_actions(analysis, related_analyses) = acts {
    acts := [{
        "action": "score:set_score",
        "score": set_score(count(analysis.findings)),
    }]
}
