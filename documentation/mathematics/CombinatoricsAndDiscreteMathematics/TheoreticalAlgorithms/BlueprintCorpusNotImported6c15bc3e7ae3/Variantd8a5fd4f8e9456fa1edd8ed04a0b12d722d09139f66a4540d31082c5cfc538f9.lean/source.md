# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BlueprintCorpusNotImported6c15bc3e7ae3.Variantd8a5fd4f8e9456fa1edd8ed04a0b12d722d09139f66a4540d31082c5cfc538f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bf8ba4b85c18fb810cee258c22c6198a38c9866` · SHA-256 `d8a5fd4f8e9456fa1edd8ed04a0b12d722d09139f66a4540d31082c5cfc538f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.proof_authority.blueprint_cannot_close_authority_7adeba310a88

/-!
Blueprint surface marker.

This root surfaces blueprint authority-band metadata and conceptual boundary
markers only. It does not import the unresolved analytic/PNT or tactic
blueprint files.
-/

namespace Formal.Surface.Blueprint

def importsBlueprintCorpus : Bool := false

theorem blueprint_corpus_not_imported : importsBlueprintCorpus = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Formal.Blueprint.Analytic"
  , "Formal.Blueprint.PrimeNumberTheoremAnd"
  , "Formal.Blueprint.Tactic"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 3 := by
  rfl

end Formal.Surface.Blueprint
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5922a5c702c401631b88cc76a901e0151d25b08372a61abc0c49a7780ef6fa8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BlueprintCorpusNotImported6c15bc3e7ae3/Variantd8a5fd4f8e9456fa1edd8ed04a0b12d722d09139f66a4540d31082c5cfc538f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
