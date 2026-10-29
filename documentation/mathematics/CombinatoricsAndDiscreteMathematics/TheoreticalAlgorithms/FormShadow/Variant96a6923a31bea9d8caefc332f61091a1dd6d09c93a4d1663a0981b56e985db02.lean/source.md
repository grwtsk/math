# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormShadow.Variant96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a90fc7f3cd1b96e21baca48774c43c508463617` · SHA-256 `96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.ModularWeight

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure FormalQShadow where
  path : String
  truncation : Nat
  weight : Nat
  coefficientTags : List String
  modularShadowOnly : Prop

def phaseShadow (n : Nat) : FormalQShadow :=
  { path := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    truncation := 60
    weight := phaseWeight n
    coefficientTags := [ "phase", "pole", "residue", "witness" ]
    modularShadowOnly := True }

theorem phaseShadow37_weight :
    (phaseShadow 37).weight = 12 := by
  rfl

end Think.RadoProjectedModularHeatflow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfbb0e4c9bc003468d47fa3236cb1dac94e21438b6bdc846532e87eb5b57046f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FormShadow/Variant96a6923a31bea9d8caefc332f61091a1dd6d09c93a4d1663a0981b56e985db02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
