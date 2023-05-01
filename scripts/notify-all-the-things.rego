package main
import data.boostsecurity.policy.actions as actions

is_violation(finding, analysis) = violation {
    violation := true
}

finding_actions(finding, is_finding_violation, analysis) = acts {
    contains(finding.details.uri, "target1")
    acts := [{"action": actions.NOTIFY}]
} else = acts {
    contains(finding.details.uri, "target2")
    acts := [{"action": actions.NOTIFY, "target": "mroy-outbound-private"}]
} else = acts {
    contains(finding.details.uri, "target3")
    acts := [{"action": actions.NOTIFY, "target": "unknown"}]
} else = acts {
    acts := []
}

analysis_actions(analysis, related_analyses) = acts {
    acts := [
        {"action":actions.NOTIFY},
    ]
} else = acts {
    acts := []
}
