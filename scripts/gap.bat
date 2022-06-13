@echo off
color 0b
title Repo Updater by Jayy
git add *
git commit -m "%*"
git push