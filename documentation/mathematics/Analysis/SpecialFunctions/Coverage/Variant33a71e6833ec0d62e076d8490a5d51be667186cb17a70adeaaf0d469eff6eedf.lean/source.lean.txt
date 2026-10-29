import Surface.Legacy.Oracle.UniversalOracle
import Surface.Legacy.BinaryLogicMatrix.Coverage

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.

What is formalized:
A historical eliminator saying oracle coverage follows from the explicit oracle
foundation in the old Surface coverage scaffold.

What is not claimed:
This module does not make oracle access constructive and does not make an
external oracle a theorem-producing authority.
-/

namespace Surface
namespace Legacy

theorem oracleCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.oracle ≤ Γ.logicalFoundation ->
      ∀ f : OracleRepresentableFunction,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.oracle f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.oracle f) h

end Legacy
end Surface
