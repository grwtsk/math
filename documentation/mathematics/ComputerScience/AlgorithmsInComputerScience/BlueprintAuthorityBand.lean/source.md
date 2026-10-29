# Blueprint Authority Band — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71a4cf1038e0dabdd44f7958a511315f6a68f79a` · SHA-256 `1c3b65093b01004126f45c3c2767349a907fe6b92ddb61279aa2bd5ef7408e52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Blueprint.Analytic
import Formal.Blueprint.PrimeNumberTheoremAnd
import Formal.Blueprint.Tactic

/-!
Blueprint boundary root.

This module is an explicit marker for formal files that may contain `sorry`,
unresolved external imports, copied blueprint statements, tactic experiments,
or theorem-shaped obligations. It imports only conceptual marker modules.
Nothing under this root may be imported by `Formal.Kernel`.
-/

namespace Formal.Blueprint

inductive AuthorityBand where
  | blueprint
  deriving DecidableEq, Repr

def mayCloseTheoremAuthority : AuthorityBand -> Bool
  | .blueprint => false

theorem blueprint_cannot_close_authority :
    mayCloseTheoremAuthority .blueprint = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Analytic"
  , "PrimeNumberTheoremAnd"
  , "Tactic"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 3 := by
  rfl

end Formal.Blueprint
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a85aab723f33a4fce895a371dc0579ae6f9237da28f4739fc109fc1e3b441c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Blueprint/Variant1c3b65093b01004126f45c3c2767349a907fe6b92ddb61279aa2bd5ef7408e52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
