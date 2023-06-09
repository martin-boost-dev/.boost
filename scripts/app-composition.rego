package main
is_violation(finding, analysis) = v {
    attributes := analysis.asset_location.attributes
    composition := attributes.application_composition
    composition[i] == "api"
    v := true
}
finding_actions(finding, is_violation, analysis) = acts {
    acts := []
}
analysis_actions(analysis, related_analyses) = acts {
    acts := []
}
