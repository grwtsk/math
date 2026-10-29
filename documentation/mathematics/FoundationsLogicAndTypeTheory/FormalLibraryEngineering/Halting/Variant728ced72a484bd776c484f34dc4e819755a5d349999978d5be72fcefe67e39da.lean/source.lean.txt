import Surface.Legacy.Oracle.TuringModel

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure HaltingOracleDescriptor where
  oracle : Oracle String Bool
  relativeOnly : Prop

theorem haltingPredicate_marked_oracle_relative
    (H : HaltingOracleDescriptor) :
    H.relativeOnly -> H.relativeOnly := by
  intro h
  exact h

end Legacy
end Surface
