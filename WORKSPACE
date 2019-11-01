load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "b1afb26722971bf1f3e21fda94493a81e09995bf60be2b862746a2ed2cfd3284",
    strip_prefix = "bazel-skylib-f80abf6578612d4b5dda3dd50337d22c8ac7b37d",
    urls = ["https://github.com/bazelbuild/bazel-skylib/archive/f80abf6578612d4b5dda3dd50337d22c8ac7b37d.tar.gz"],
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "ae8c36ff6e565f674c7a3692d6a9ea1096e4c1ade497272c2108a810fb39acd2",
    url = "https://github.com/bazelbuild/rules_go/releases/download/0.19.4/rules_go-0.19.4.tar.gz",
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "41bff2a0b32b02f20c227d234aa25ef3783998e5453f7eade929704dcff7cd4b",
    url = "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.19.0/bazel-gazelle-v0.19.0.tar.gz",
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

# rules_go go rules
go_rules_dependencies()

go_register_toolchains()

# gazelle
gazelle_dependencies()

load("@bazel_gazelle//:deps.bzl", "go_repository")

go_repository(
    name = "io_opencensus_go_contrib_exporter_stackdriver",
    # TODO(b/bazelbuild/bazel-gazelle/669): remove this.
    build_directives = [
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/metrics/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/metrics/v1:metrics_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/trace/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/trace/v1:trace_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/stats/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/stats/v1:stats_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/resource/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/resource/v1:resource_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/agent/common/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/agent/common/v1:common_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/agent/metric/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/agent/metric/v1:metric_proto_go",
        "gazelle:resolve go go github.com/census-instrumentation/opencensus-proto/gen-go/agent/trace/v1 @com_github_census_instrumentation_opencensus_proto//opencensus/proto/agent/trace/v1:trace_proto_go",
    ],
    importpath = "contrib.go.opencensus.io/exporter/stackdriver",
    strip_prefix = "opencensus-go-exporter-stackdriver-0.12.7",
    # latest version as of 2019-10-22
    urls = ["https://github.com/census-ecosystem/opencensus-go-exporter-stackdriver/archive/v0.12.7.tar.gz"],
)

# transitive dependency
http_archive(
    name = "com_github_census_instrumentation_opencensus_proto",
    strip_prefix = "opencensus-proto-0.2.1/src",
    # latest version as of 2019-10-22
    urls = ["https://github.com/census-instrumentation/opencensus-proto/archive/v0.2.1.tar.gz"],
)

# transitive dependency
go_repository(
    name = "com_github_google_go_cmp",
    importpath = "github.com/google/go-cmp",
    strip_prefix = "go-cmp-0.2.0",
    urls = ["https://github.com/google/go-cmp/archive/v0.2.0.tar.gz"],
)

# transitive dependency
go_repository(
    name = "com_github_aws_aws_sdk_go",
    importpath = "github.com/aws/aws-sdk-go",
    strip_prefix = "aws-sdk-go-1.23.20",
    urls = ["https://github.com/aws/aws-sdk-go/archive/v1.23.20.tar.gz"],
)

# transitive dependency
go_repository(
    name = "io_opencensus_go",
    importpath = "go.opencensus.io",
    strip_prefix = "opencensus-go-3b5a343282fe4b4fccdb0f24cbd1d7169d20858a",
    urls = ["https://github.com/census-instrumentation/opencensus-go/archive/3b5a343282fe4b4fccdb0f24cbd1d7169d20858a.tar.gz"],
)

# transitive dependency
go_repository(
    name = "com_google_cloud_go",
    importpath = "cloud.google.com/go",
    strip_prefix = "google-cloud-go-cba14b2e7412c9e26dc4b6a82b7e9b622b03ae77",
    urls = ["https://github.com/googleapis/google-cloud-go/archive/cba14b2e7412c9e26dc4b6a82b7e9b622b03ae77.tar.gz"],
)

# transitive dependency
go_repository(
    name = "org_golang_x_oauth2",
    importpath = "golang.org/x/oauth2",
    strip_prefix = "oauth2-0f29369cfe4552d0e4bcddc57cc75f4d7e672a33",
    urls = ["https://github.com/golang/oauth2/archive/0f29369cfe4552d0e4bcddc57cc75f4d7e672a33.tar.gz"],
)

# transitive dependency
go_repository(
    name = "org_golang_google_api",
    importpath = "google.golang.org/api",
    strip_prefix = "google-api-go-client-0.5.0",
    urls = ["https://github.com/googleapis/google-api-go-client/archive/v0.5.0.tar.gz"],
)

# transitive dependency
http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.9.0",
    urls = ["https://github.com/google/protobuf/archive/v3.9.0.tar.gz"],
)

# transitive dependency
http_archive(
    name = "zlib",
    build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
    sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
    strip_prefix = "zlib-1.2.11",
    urls = ["https://zlib.net/zlib-1.2.11.tar.gz"],
)

# transitive dependency
go_repository(
    name = "org_golang_x_net",
    importpath = "golang.org/x/net",
    strip_prefix = "net-16b79f2e4e95ea23b2bf9903c9809ff7b013ce85",
    urls = ["https://github.com/golang/net/archive/16b79f2e4e95ea23b2bf9903c9809ff7b013ce85.tar.gz"],
)

# transitive dependency
go_repository(
    name = "com_google_cloud_go",
    importpath = "cloud.google.com/go",
    strip_prefix = "google-cloud-go-cba14b2e7412c9e26dc4b6a82b7e9b622b03ae77",
    urls = ["https://github.com/googleapis/google-cloud-go/archive/cba14b2e7412c9e26dc4b6a82b7e9b622b03ae77.tar.gz"],
)

# transitive dependency
go_repository(
    name = "org_golang_google_grpc",
    build_file_proto_mode = "disable",
    importpath = "google.golang.org/grpc",
    strip_prefix = "grpc-go-1.22.1",
    urls = ["https://github.com/grpc/grpc-go/archive/v1.22.1.tar.gz"],
)

# transitive dependency
go_repository(
    name = "com_github_googleapis_gax_go_v2",
    importpath = "github.com/googleapis/gax-go/v2",
    sum = "h1:sjZBwGj9Jlw33ImPtvFviGYvseOtDM7hkSKB7+Tv3SM=",
    version = "v2.0.5",
)

# transitive dependency
go_repository(
    name = "com_github_golang_groupcache",
    importpath = "github.com/golang/groupcache",
    strip_prefix = "groupcache-869f871628b6baa9cfbc11732cdf6546b17c1298",
    urls = ["https://github.com/golang/groupcache/archive/869f871628b6baa9cfbc11732cdf6546b17c1298.tar.gz"],
)

# transitive dependency
go_repository(
    name = "org_golang_x_text",
    importpath = "golang.org/x/text",
    strip_prefix = "text-f21a4dfb5e38f5895301dc265a8def02365cc3d0",
    urls = ["https://github.com/golang/text/archive/f21a4dfb5e38f5895301dc265a8def02365cc3d0.tar.gz"],
)
