# Manifest Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f988ecbfb03bfff990f02d75f59205d7ee862652` · SHA-256 `5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-!
Lake executable wrapper for the Rust Matriciant Formal regrowth checker.
-/

def main : IO UInt32 := do
  let output <- IO.Process.output {
    cmd := "cargo"
    args := #[
      "run", "-q",
      "--manifest-path", "../../Cargo.toml",
      "--bin", "formal_manifest_check",
      "--",
      "--root", ".",
      "--check"
    ]
  }
  if !output.stdout.isEmpty then
    IO.print output.stdout
  if !output.stderr.isEmpty then
    IO.eprint output.stderr
  return output.exitCode
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0f5da4511161a9ff926926577659f83581878f2062366a7293fa0e5da8ea4f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ManifestCheck/Variant5784fcd5ea9a410f5a27d58b81fd5e3073be8a153db0e9148f8a724e4d1115af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
