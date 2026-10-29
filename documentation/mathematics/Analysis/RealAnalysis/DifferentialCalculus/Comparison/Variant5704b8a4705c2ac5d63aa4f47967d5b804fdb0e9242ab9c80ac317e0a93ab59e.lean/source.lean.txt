import DAF.Comparison.Core
import DAF.Comparison.Properties
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Construction
import DAF.Comparison.Coefficients
import DAF.Comparison.Scope
import DAF.Comparison.Composition
import DAF.Comparison.Naturality
import DAF.Comparison.Chain

/-!
# Certified comparison calculus

This declaration-free umbrella exposes typed comparisons while keeping their
mathematical map, construction provenance, coefficient endpoints, ownership
scope, and logical status separate.

In particular, provenance is independent of logical status: “canonical” does
not mean definitionally equal, and a canonical map may still have only a
conjectural isomorphism claim.  A represented map is canonical only after its
representation has been fixed unless a proof removes that dependence.  A
conjectural target is not a theorem, and metadata proves neither injectivity,
surjectivity, nor equivalence.

Localization and completion change object types.  They are therefore crossed
only by an explicit coefficient change.  Code generation and architecture
manifests record implementation facts; neither is a theorem authority.
-/
