# Main Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `806fcf7b107c111d454db9ac29c09e73bf2e25aa` · SHA-256 `bd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Export
open Lean

def main (args : List String) : IO Unit := do
  initSearchPath (← findSysroot)
  let (opts, args) := args.partition (fun s => s.startsWith "--" && s.length ≥ 3)
  let (imports, constants) := args.span (· != "--")
  let imports := imports.toArray.map fun mod => { module := Syntax.decodeNameLit ("`" ++ mod) |>.get! }
  let env ← importModules imports {}
  let constants := match constants.tail? with
    | some cs => cs.map fun c => Syntax.decodeNameLit ("`" ++ c) |>.get!
    | none    => env.constants.toList.map Prod.fst |>.filter (!·.isInternal)
  M.run env do
    let _ ← initState env opts
    dumpMetadata
    for c in constants do
      modify (fun st => { st with noMDataExprs := {} })
      dumpConstant c
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe3af1659bf019f10ed44a74277910af733b8574dbae5345739f4cfc10653e5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variantbd8e350903f1382b25fe767f9086dd9882000f01085f7046ea06545e7848842a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
