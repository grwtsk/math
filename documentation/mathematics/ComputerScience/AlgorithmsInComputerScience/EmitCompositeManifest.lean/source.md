# Emit Composite Manifest — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32c45a123d3da003128ab3246f6cee07ccf4de22` · SHA-256 `afdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CompositeElements.Export

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output
        (URSM.Composite.formalManifestJson ++ "\n")
  | _ =>
      throw <| IO.userError
        "usage: emit_composite_manifest OUTPUT.json"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54108fc74eb6c9f652ab23352fb6d7f8cc0e51a21ed701bba4a0d1786e596dc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EmitCompositeManifest/Variantafdf6b2b7b0eade2fd757518245b820157f26c72ffb45debfa5d78fb25a93539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
