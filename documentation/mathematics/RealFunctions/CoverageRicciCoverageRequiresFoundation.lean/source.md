# Coverage Ricci Coverage Requires Foundation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3056ec97298139adfa78c501f14c88cfa12c752f` · SHA-256 `d551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Ricci.Stability
import Surface.Legacy.BinaryLogicMatrix.Coverage

namespace Surface
namespace Legacy

theorem ricciCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.ricciFlow ≤ Γ.logicalFoundation ->
      ∀ f : RicciFlowRepresentableObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.ricciFlow f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.ricciFlow f) h

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d6f7a2c191a2cda9f3ea5112bdcc4c8409f84511ebba8728ba8840c92ff84f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Coverage/Variantd551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
