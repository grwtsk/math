# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Blueprint.Variant931778d49e8a68e516c18b62710b82e19dfa7f6dc3ead8a90d9e75ac1c967f7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f8384d29551221bd3703b1fec0ecd229886865` · SHA-256 `931778d49e8a68e516c18b62710b82e19dfa7f6dc3ead8a90d9e75ac1c967f7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Blueprint

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc499d7ed35bd69897ed6383376a88d37cb55731848162469aa764560ad4dae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Blueprint/Variant931778d49e8a68e516c18b62710b82e19dfa7f6dc3ead8a90d9e75ac1c967f7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
