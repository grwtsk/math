# Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7f5f832b383095fc3af710e8937a3f5755673b1` · SHA-256 `b9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Core
import Mathlib.Order.Fin.Basic

/-!
# First infeasible boundary on an explicit finite branch

The predicate records infeasibility at one branch index and feasibility at
every earlier index.  Uniqueness is branch-relative.
-/

namespace Mathematics.BinaryFrontier

def FirstInfeasibleOnBranch
    {n : Nat}
    (feasible : Fin n → Prop)
    (index : Fin n) : Prop :=
  ¬ feasible index ∧
    ∀ earlier, earlier < index →
      feasible earlier

theorem firstInfeasibleOnBranch_unique
    {n : Nat}
    {feasible : Fin n → Prop}
    {left right : Fin n}
    (leftFirst :
      FirstInfeasibleOnBranch feasible left)
    (rightFirst :
      FirstInfeasibleOnBranch feasible right) :
    left = right := by
  apply le_antisymm
  · by_contra leftNotLeRight
    have rightLtLeft : right < left :=
      lt_of_not_ge leftNotLeRight
    exact rightFirst.1
      (leftFirst.2 right rightLtLeft)
  · by_contra rightNotLeLeft
    have leftLtRight : left < right :=
      lt_of_not_ge rightNotLeLeft
    exact leftFirst.1
      (rightFirst.2 left leftLtRight)

theorem failed_branch_has_unique_first_infeasible_prefix
    {n : Nat}
    {feasible : Fin n → Prop}
    (existsFirst :
      ∃ index, FirstInfeasibleOnBranch feasible index) :
    ∃! index,
      FirstInfeasibleOnBranch feasible index := by
  obtain ⟨index, indexFirst⟩ := existsFirst
  exact ⟨index, indexFirst, fun other otherFirst =>
    firstInfeasibleOnBranch_unique
      otherFirst indexFirst⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab568130f0e57622ba9ace4441fdc361addbf4529b89ba347f4a242d7d606752 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variantb9d23be71837733bdc3fdb508b790687b9d43fc4b34dddcde2b06a4bb430778f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
