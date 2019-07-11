def _impl(ctx):
  st =ctx.execute(["bash", "-c", "sleep 10 && echo Hello world > data.txt"],
                  timeout=1)
  if st.return_code:
    fail("Command did not succeed")
  ctx.file("BUILD", "exports_files(['data.txt'])")

with_timeout = repository_rule(attrs = {}, implementation = _impl)
