load("//tools:repositories.bzl", "buildenv_repositories")

buildenv_repositories()

load("//tools:def.bzl", "check_bazel_version")

check_bazel_version("0.27")

load("//go:repositories.bzl", "go_repositories")

go_repositories()

load("//go:third_party_repositories.bzl", "third_party_repositories")

third_party_repositories()

load("//go:def.bzl", "register_go_rules")

register_go_rules()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_cc",
    sha256 = "36fa66d4d49debd71d05fba55c1353b522e8caef4a20f8080a3d17cdda001d89",
    strip_prefix = "rules_cc-0d5f3f2768c6ca2faca0079a997a97ce22997a0c",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/0d5f3f2768c6ca2faca0079a997a97ce22997a0c.zip",
        "https://github.com/bazelbuild/rules_cc/archive/0d5f3f2768c6ca2faca0079a997a97ce22997a0c.zip",
    ],
)

load("//:repo.bzl", "with_timeout")

with_timeout(name = "maytimeout")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
