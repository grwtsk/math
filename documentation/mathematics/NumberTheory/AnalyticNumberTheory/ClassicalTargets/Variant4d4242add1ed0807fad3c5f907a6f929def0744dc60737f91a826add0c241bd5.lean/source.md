# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ClassicalTargets.Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5948cd879840df6425e220ddb1182851d0ed1c39` · SHA-256 `4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

/-!
# Folder.Rebuild.AnalyticNumberTheory.ClassicalTargets

Classical analytic number theory targets and anchors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

structure PNTInputs where
  zetaMeromorphicContinuation : Prop
  zetaSimplePoleAtOne : Prop
  zetaNoZerosOnReOne : Prop
  tauberianTheorem : Prop

def PrimeNumberTheoremAnchor : ClassicalAnchor :=
  pntAnchor

def PNTClassicalRouteAnchor : ClassicalAnchor where
  shortName := "Classical route to prime asymptotics"
  paperOrBook := "Hadamard, de la Vallee Poussin, and Tauberian references"
  theoremLabel := "PrimeNumberTheoremTarget"
  mathematicalContent :=
    "Meromorphic continuation, a simple pole at one, a no-zero boundary statement, and a Tauberian theorem form the classical route."
  formalRole := RebuildProofStatus.theoremTarget
  proofDependencyAllowed := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b13d1a23d49489c4dc0a9593f663ea92e9966efb4318dc237c1630dd1c70997 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ClassicalTargets/Variant4d4242add1ed0807fad3c5f907a6f929def0744dc60737f91a826add0c241bd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
