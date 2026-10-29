# Mellin Perron — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a8c86015af79c3afd1ed41b90c46094e5090125` · SHA-256 `7dc2d635dd722893ecfce71fc2cee979c4cc2ce60ee56dc49a769fc4d2859db4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mellin/Perron analytic blueprint boundary.

This marker groups Mellin calculus, Perron formula, and residue-calculus
blueprints while keeping them outside checked authority imports.
-/

namespace Formal.Blueprint.Analytic.MellinPerron

def files : List String :=
  [ "MellinCalculus"
  , "PerronFormula"
  , "ResidueCalcOnRectangles"
  ]

theorem files_count : files.length = 3 := by
  rfl

end Formal.Blueprint.Analytic.MellinPerron
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf3aa15dab6dcafc6c4217429408595509dfd2cf6365d88151b9c0014ccaf47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MellinPerron/Variant7dc2d635dd722893ecfce71fc2cee979c4cc2ce60ee56dc49a769fc4d2859db4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
