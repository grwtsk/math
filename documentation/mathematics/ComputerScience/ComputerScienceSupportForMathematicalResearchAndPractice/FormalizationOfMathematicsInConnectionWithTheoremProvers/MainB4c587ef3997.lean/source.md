# Main B4c587ef3997 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b724c5cabad577aa8e4c7500207d2e4303fa0218` · SHA-256 `aa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/

def main : IO UInt32 := do
  let output <- IO.Process.output {
    cmd := "/bin/sh"
    args := #[
      "-lc",
      "if [ -x ../../target/debug/formal_manifest_check ]; then \
        ../../target/debug/formal_manifest_check --root . --check; \
       else \
        env -u DYLD_LIBRARY_PATH -u DYLD_FALLBACK_LIBRARY_PATH -u LIBRARY_PATH -u LEAN_SYSROOT \
          cargo run -q --manifest-path ../../Cargo.toml --bin formal_manifest_check -- --root . --check; \
       fi"
    ]
  }
  if !output.stdout.isEmpty then
    IO.print output.stdout
  if !output.stderr.isEmpty then
    IO.eprint output.stderr
  return output.exitCode
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3c4e3977ecd336d5658f92be648f682a135252c9700ea30f929abffa341794b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MainB4c587ef3997/Variantaa8a81040ea394c48e1890de0a64243d16408119ebc3e6d02a34db11c34e358a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
