#!/bin/bash

# Passive-Aggressive Coworker Simulator
# Run with: ./coworker.sh

PHRASES=(
    "Per my last email..."
    "Circling back on this..."
    "Let's take this offline."
    "I'm not sure that's a priority right now."
    "Just to piggyback on that..."
    "Can we align on the deliverables?"
    "I'll loop you in later."
    "We should touch base about this."
    "Noted."
    "That's a great point, but..."
    "Just following up on my previous message."
    "Let's park that for now."
    "I'm going to push back on that slightly."
    "Do you have five minutes to sync?"
    "Low-hanging fruit."
)

ACTIONS=(
    "schedules a meeting"
    "sends a calendar invite"
    "replies-all"
    "adds you to a new Slack channel"
    "sends a 'quick question'"
    "mutes the thread"
    "forwards it to your manager"
    "adds 12 people to the CC"
)

echo "==============================================="
echo "  Welcome to Corporate America Simulator™"
echo "==============================================="
echo ""

while true; do
    PHRASE=${PHRASES[$RANDOM % ${#PHRASES[@]}]}
    ACTION=${ACTIONS[$RANDOM % ${#ACTIONS[@]}]}

    echo "Your coworker $ACTION:"
    echo "  \"$PHRASE\""
    echo ""
    sleep 3
    echo "  ...and walks away before you can respond."
    echo ""
    echo "-----------------------------------------------"
    echo ""
    sleep 2
done