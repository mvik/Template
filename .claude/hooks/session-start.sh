#!/usr/bin/env bash
set -euo pipefail

repo_name=$(basename "$(git rev-parse --show-toplevel 2>/dev/null || pwd)")
branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "unknown")
latest_commit=$(git log -1 --oneline 2>/dev/null || echo "unknown")

echo "## Claude Session Start Routine"
echo ""
echo "Repository: ${repo_name}"
echo "Branch: ${branch}"
echo "Latest commit: ${latest_commit}"
echo ""
echo "Working tree:"
git status --short 2>/dev/null || echo "git status unavailable"
echo ""
echo "Required source-of-truth files to read before substantive project work:"
echo "- README.md"
echo "- docs/vision.md"
echo "- docs/design-principles.md"
echo "- docs/project-operating-model.md, if present"
echo "- DECISIONS.md, if present"
echo "- up to the 10 most recent files in docs/session-history/, if present"
echo ""
echo "REQUIRED ACTIONS before substantive response:"
echo "1. Re-anchor on the current repo docs, especially vision and design principles."
echo "2. Identify the requested work mode: ideation, grooming, implementation, review, or debugging."
echo "3. Check whether the request is aligned with business/user value and current scope."
echo "4. Before implementation, state how the work will be verified."
echo "5. Flag scope drift or overengineering before proceeding."
echo "6. Keep the startup summary short; do not turn it into a dashboard."
echo ""

exit 2
