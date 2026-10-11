# ROBO iOS — GitHub Unsigned IPA Build

This repository is configured to generate an unsigned iOS IPA through GitHub Actions.

## Build the IPA
1. Upload all files and folders from this ZIP to the **root** of a GitHub repository.
2. Open the repository's **Actions** tab.
3. Select **Build ROBO iOS Unsigned IPA**.
4. Click **Run workflow** (or push a commit to `main` / `master`).
5. When the workflow succeeds, open the run and download the `ROBOiOS-unsigned-IPA` artifact.

## Notes
- The workflow creates the Xcode project from `project.yml` using XcodeGen on a macOS GitHub runner.
- The IPA is unsigned. It is a package for sideloading workflows, not a normally signed App Store build. An unsigned IPA will not install directly on a standard iPhone without a compatible signing/install process.
- The app currently uses a temporary SF Symbols game-controller icon. Replace it with your ROBO logo later.
- Bundle ID is currently `com.roboios.app`; change it in `project.yml` if needed.
