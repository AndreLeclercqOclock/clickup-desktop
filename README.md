# clickup-desktop

An AUR package for ClickUp desktop application on Arch Linux, packaged as an AppImage.

## Description

This package provides the ClickUp desktop application for Arch Linux, using the official AppImage distribution. ClickUp is an all-in-one collaboration and project management tool that combines essential business & productivity tools into one solution.

> **Note**: This package is not affiliated with ClickUp or its development team. It is a community-maintained installation automation for Arch Linux users. ClickUp and its desktop application are proprietary products owned and licensed by ClickUp, LLC.

## Package Components

- **PKGBUILD**: Main build script for the AUR package
- **clickup-wrapper**: Bash script that manages AppImage execution and preserves desktop integration
- **clickup.desktop**: Desktop entry file for system integration
- **update-version.sh**: Script to check and update the package version on AUR

## Automatic Updates

The ClickUp desktop application handles its own updates automatically. This package is designed to maintain proper desktop integration after these automatic updates occur. The wrapper script ensures that the most recent version of the AppImage is always executed, preserving the functionality of the desktop shortcut.

The `update-version.sh` script is specifically designed for AUR maintenance purposes. It updates the displayed version number on the AUR website to match ClickUp's latest release. This version update has no impact on the installed package functionality, as the version is checked during installation time and the application manages its own updates thereafter.

## Installation

```bash
# Clone the AUR repository
git clone https://aur.archlinux.org/clickup-desktop.git
cd clickup-desktop

# Build and install the package
makepkg -si
```

## File Structure

- `/opt/clickup/`: Directory containing the AppImage
- `/usr/bin/clickup`: Wrapper script for executing the application
- `/usr/share/applications/clickup.desktop`: Desktop entry for system integration

## Contributing

Contributions are welcome! Please feel free to submit pull requests or report issues on the AUR package page.

## License

The packaging scripts in this repository are provided to automate the installation process of ClickUp on Arch Linux. The ClickUp desktop application itself is proprietary software owned and licensed by ClickUp, LLC. Please refer to ClickUp's official website for the application's terms of service and license information.

Users should note that while this package provides installation automation, it does not modify or redistribute the application itself. All rights to the ClickUp application remain with ClickUp, LLC.
