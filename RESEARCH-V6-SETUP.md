# Research-V6 Branch Setup

This document describes the setup of the Research-V6 branch forked from the upstream unix-history-repo.

## Overview

The Research-V6 branch has been created from the upstream repository (dspinellis/unix-history-repo) to track the Research V6 Unix release from May 1975.

## Setup Steps Performed

1. **Added upstream remote**:
   ```bash
   git remote add upstream https://github.com/dspinellis/unix-history-repo.git
   ```

2. **Fetched all branches and tags from upstream**:
   ```bash
   git fetch upstream
   ```
   This fetched approximately 5.4 million objects (1.83 GB) including the complete Unix history from 1970 onwards.

3. **Created local Research-V6 branch from upstream tag**:
   ```bash
   git checkout -b Research-V6 Research-V6
   ```
   The branch points to commit `4b87ee08354dc081ad897853173e6f7f4b52c116`, which is the Research V6 release snapshot.

## Branch Information

- **Branch name**: Research-V6
- **Source**: Upstream tag `Research-V6` from dspinellis/unix-history-repo
- **Commit**: 4b87ee08354dc081ad897853173e6f7f4b52c116
- **Date**: Friday, July 18, 1975 at 10:25:20 -0500
- **Tagger**: Ken Thompson <ken@research.uucp>
- **Description**: Research V6 release - Snapshot of the completed development branch

## Using the Branch

To switch to the Research-V6 branch:
```bash
git checkout Research-V6
```

To push the branch to your fork (once authenticated):
```bash
git push origin Research-V6:Research-V6
```

## Notes

- The upstream repository contains the full history of Unix from 1970 to 2025
- Research V6 (May 1975) is one of the earliest Unix releases with complete source code
- The repository includes attribution to original authors like Ken Thompson and Dennis Ritchie
