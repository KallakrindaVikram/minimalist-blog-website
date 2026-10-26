#!/bin/bash
# Hook: Validate that agents never commit directly to main

CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" = "main" ] || [ "$CURRENT_BRANCH" = "master" ]; then
  echo "🚨 ERROR: Direct commits to $CURRENT_BRANCH are strictly prohibited by the Agentic SDLC Workflow!"
  exit 1
fi
echo "✅ Branch safety check passed: working on branch '$CURRENT_BRANCH'."