package main
import data.boostsecurity.policy.actions as actions

is_violation(finding, analysis) = violation {
    violation := true
}

finding_actions(finding, is_finding_violation, analysis) = acts {
    acts := []
}

analysis_actions(analysis, related_analyses) = acts {
    count(related_analyses) = 0
    acts := [
        {"action":actions.SCM_POST_COMMENTS},
        {"action":actions.SCM_FAIL_CHECK}
    ]
} else = acts {
    acts := []
}
