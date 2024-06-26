# GoReleaserQuickStart

Playground project to test GoReleaser.

## How to use GoReleaser

A very short guide.

1. config file
   - change the config file `goreleaser.yml`
   - verify correctness via `goreleaser check`
2. local releases
   - make some changes
   - commit
   - add git tag
     `git tag -a v0.1.0 -m "First release"`
   - test local release
     `goreleaser release --snapshot --clean`
3. remote releases
   - add `GITHBU_TOKEN` to environment variables (permissions `write:packages`)
   - push tag to remote
   - release
     `goreleaser release --clean`

## Need more tests

- [x] test changelog (in release notes) of multiple commits
  - all commit-msg between two git-tags seems used, see [v0.1.4]
- [ ] test with GitHub Actions
- [ ] test with Semantic-Release integration

## Weblinks

- [GoReleaser](https://goreleaser.com/)
- [GoReleaser Customizations](https://goreleaser.com/customization/)

[v0.1.4]: https://github.com/deeagle/GoReleaserQuickStart/releases/tag/v0.1.4
