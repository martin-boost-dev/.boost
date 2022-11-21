package main

analysis_actions(analysis) = acts {
    acts := [{
        "action": "score:set_score",
        "score": set_score(count(analysis.findings)),
    }]
}
