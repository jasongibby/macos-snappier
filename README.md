# macOS Snappier

A small set of `defaults` tweaks I use to make macOS feel less sluggish. It turns down window, scrolling, Dock, and Finder animations, and makes key repeat faster.

Run it with:

```bash
chmod +x snappier-macos.sh
./snappier-macos.sh
```

The script restarts Dock and Finder so most changes take effect right away. Log out and back in if a global setting does not stick immediately.

These are personal preferences, not a benchmark. Read the script before running it and change anything you do not want.

## Optional: reduce Spotlight indexing

If you use Spotlight-backed search in Finder or Raycast, leave Spotlight enabled. You can still exclude large cache and runtime-data directories that you do not expect to search:

```text
~/Library/Caches
~/Library/Containers/com.docker.docker
```

Open **System Settings → Spotlight → Search Privacy**, click **+**, then press **Command-Shift-G** to enter each path.

This is deliberately a manual step. macOS does not provide a supported command-line interface for adding individual folders to Spotlight's Search Privacy list. `mdutil` changes indexing for entire volumes, and `.metadata_never_index` is not a reliable exclusion mechanism for nested folders.

Excluded folders will no longer appear in Finder searches or Raycast Content Search. Only add directories whose contents you do not need to find that way.
