function add_rules_cc_to_workspace() {
  cat >> "$1"<<EOF
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
EOF
}

function create_workspace_with_default_repos() {
  touch "$1"
  add_rules_cc_to_workspace $1
  echo "$1"
}

function test_timeout_tunable() {
  cat >> $(create_workspace_with_default_repos WORKSPACE) <<'EOF'
load("//:repo.bzl", "with_timeout")

with_timeout(name="maytimeout")
EOF
  touch BUILD
  cat > repo.bzl <<'EOF'
def _impl(ctx):
  st =ctx.execute(["bash", "-c", "sleep 10 && echo Hello world > data.txt"],
                  timeout=1)
  if st.return_code:
    fail("Command did not succeed")
  ctx.file("BUILD", "exports_files(['data.txt'])")

with_timeout = repository_rule(attrs = {}, implementation = _impl)
EOF
  bazel sync && fail "expected timeout" || :

  bazel sync --experimental_scale_timeouts=100 \
      || fail "expected success now the timeout is scaled"

  bazel build @maytimeout//... \
      || fail "expected success after successful sync"
}

test_timeout_tunable
