# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant2e577cf1316da90c0909be32d3f836eddc6c4e46930e7ae28fa6432bf89fca18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `197bf27065c4cfa2aaf276f5cbb27991803fae88` · SHA-256 `f206ac4e5f803fd9f915c42dc472a687c90f4f187a34b5503d7e70454981c06b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","mathematical_subject":"Foundations.Unclassified","original_sha256":"e8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Export/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Noeoueue
import Noeoueue.Export.CanonicalExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variante8c636aaa6f36501d7b3f28b752953327fb266deceb5496db8647138a9734613

open Lean

def main : IO Unit := do
  let env <- importModules #[{ module := `Noeoueue }] {} 0
  let rows := env.constants.toList.filterMap fun (name, info) =>
    if name.toString.startsWith "Noeoueue" then
      some s!"{name}\t{Noeoueue.Export.canonicalExpr info.type}"
    else none
  let rows := rows.mergeSort (fun left right => left < right)
  IO.println <| String.intercalate "\n" rows
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cee3c6c721442421f149e503f7d79393df5860ff42e0c8fae8649b0c9f8086ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant2e577cf1316da90c0909be32d3f836eddc6c4e46930e7ae28fa6432bf89fca18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
