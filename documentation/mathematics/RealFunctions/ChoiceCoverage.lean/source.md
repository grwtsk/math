# Choice Coverage — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cb37fccfac1ee67a07c36fcb69d8ece396529bf` · SHA-256 `d769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Choice.NonMeasurable
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying choice-dependent coverage follows from an
explicit choice foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not install choice as an ambient axiom and does not prove
choice-independent coverage for choice-dependent objects.
-/

namespace Surface
namespace Legacy

theorem choiceCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.choice ≤ Γ.logicalFoundation ->
      ∀ f : ChoiceDependentObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.choice f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.choice f) h

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47add0cf5b8e61e25382c91b46a504f48170efd13a4e6a473b2daafc99a46962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/ChoiceCoverage/Variantd769a926d580308dad77090db3e9750ad40d38bd2acc7aac017fec2aff3f208a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
