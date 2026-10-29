# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.MUS.Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4b528702b53a2f3f17db76841d3ba6f204ed3ec` · SHA-256 `24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Primitive finite obstruction cores

The certificate is deletion-minimal: the core is infeasible, and deleting any
one member restores feasibility.  This is minimality by inclusion, not minimum
cardinality or uniqueness.
-/

namespace Mathematics.BinaryFrontier

structure PrimitiveObstructionCertificate
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (registry : Finset Constraint)
    (state : Partial)
    (core : Finset Constraint) where
  core_nonempty : core.Nonempty
  core_subset_registry : core ⊆ registry
  core_infeasible :
    Infeasible semantics core state
  deletion_feasible :
    ∀ constraint ∈ core,
      Feasible semantics (core.erase constraint) state

structure ProperDeletionWitness
    {Constraint : Type}
    [DecidableEq Constraint]
    (core subset : Finset Constraint) where
  removed : Constraint
  removed_mem : removed ∈ core
  subset_without_removed :
    subset ⊆ core.erase removed

theorem deletion_minimal_implies_proper_subset_feasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {registry core subset : Finset Constraint}
    {state : Partial}
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (proper : subset ⊂ core) :
    Feasible semantics subset state := by
  obtain ⟨removed, removedMember, subsetWithoutRemoved⟩ :=
    Finset.ssubset_iff_exists_subset_erase.mp proper
  exact feasible_of_constraint_subset
    semantics
    subsetWithoutRemoved
    (primitive.deletion_feasible
      removed removedMember)

theorem primitive_core_is_infeasible
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {registry core : Finset Constraint}
    {state : Partial}
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core) :
    Infeasible semantics core state :=
  primitive.core_infeasible

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=024a15f3e0651531fc04979f05a0534b23d504e6f516a4927118161f70b4a640 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
