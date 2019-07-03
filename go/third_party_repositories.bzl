load("@bazel_gazelle//:deps.bzl", "go_repository")

def third_party_repositories():
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        # latest as of 2018-11-26
        urls = ["https://github.com/google/go-cmp/archive/v0.2.0.tar.gz"],
        sha256 = "3c4e5aca9a707eb19f5ef54b13171f3d36466f4cab73918d111bd93c88b62eed",
        strip_prefix = "go-cmp-0.2.0",
    )
