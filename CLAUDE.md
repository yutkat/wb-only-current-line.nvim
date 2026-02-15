# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**wb-only-current-line.nvim** is a Neovim plugin that restricts `w`, `b`, `W`, `B` word motion commands to the current line only, preventing the cursor from jumping to adjacent lines.

## Architecture

- `plugin/wb_only_current_line.lua` — Entry point. Guards against double-loading via `vim.g.loaded_wb_only_current_line`, then registers keymaps for all four motions in normal and visual modes.
- `lua/wb-only-current-line/init.lua` — Core logic. The `motion(key, back_key)` function executes a word motion, then reverts to the original line if the motion crossed a line boundary. When a count > 1 is given (e.g. `3w`), the motion executes normally without the line-clamping behavior.

## Development

This is a pure Lua Neovim plugin with no build step, test framework, or external dependencies. It uses only Neovim's built-in Lua API (`vim.cmd`, `vim.fn`, `vim.keymap.set`, `vim.v.count1`).

To test changes, load the plugin in Neovim from the local path (e.g. via `lazy.nvim` dev mode or by adding the repo to `runtimepath`).

## Lua Language Server

The project uses LuaJIT and declares `vim` as a known global in `.nvim/nlsp-settings/sumneko_lua.json`.
