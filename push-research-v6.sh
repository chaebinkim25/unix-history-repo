#!/bin/bash
# Script to push the Research-V6 branch to the fork
#
# This script pushes the locally created Research-V6 branch to the origin remote.
# The branch was created from the upstream unix-history-repo Research-V6 tag.

set -e

echo "Pushing Research-V6 branch to origin..."
git push origin Research-V6:Research-V6

echo "Setting up tracking for Research-V6 branch..."
git checkout Research-V6
git branch --set-upstream-to=origin/Research-V6

echo "Done! Research-V6 branch has been pushed to the fork."
echo ""
echo "You can now:"
echo "  - View the branch: git log Research-V6"
echo "  - Switch to it: git checkout Research-V6"
echo "  - Compare with upstream: git log Research-V6..upstream/Research-V6-Snapshot-Development"
