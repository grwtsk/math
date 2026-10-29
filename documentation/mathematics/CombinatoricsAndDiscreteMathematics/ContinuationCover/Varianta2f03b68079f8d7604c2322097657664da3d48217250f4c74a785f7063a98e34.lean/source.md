# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ContinuationCover.Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `598a836a543702a3e603e0313ae1218e2ee875f3` · SHA-256 `a2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.Completion.Core

/-!
# Certified continuation covers

Child absence is not an infeasibility proof.  A parent may inherit
infeasibility from all children only when an explicit cover shows that every
parent completion continues through a registered child.
-/

namespace Mathematics.BinaryFrontier

structure ContinuationCover
    {Partial Full Constraint : Type}
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    (parent : Partial)
    (children : Finset Partial) where
  childrenRefine :
    ∀ child ∈ children,
      semantics.refines parent child
  completionCovered :
    ∀ full,
      semantics.extendsFull parent full →
      ∃ child ∈ children,
        semantics.extendsFull child full

theorem parent_infeasible_of_continuation_cover
    {Partial Full Constraint : Type}
    [DecidableEq Partial]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint)
    {constraints : Finset Constraint}
    {parent : Partial}
    {children : Finset Partial}
    (cover : ContinuationCover semantics parent children)
    (childrenInfeasible :
      ∀ child ∈ children,
        Infeasible semantics constraints child) :
    Infeasible semantics constraints parent := by
  intro parentFeasible
  obtain ⟨full, parentExtends, satisfies⟩ := parentFeasible
  obtain ⟨child, childMember, childExtends⟩ :=
    cover.completionCovered full parentExtends
  exact childrenInfeasible child childMember
    ⟨full, childExtends, satisfies⟩

end Mathematics.BinaryFrontier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cfa8e7e7498ee45d6b74217334672645eae8691ba63818a8eb395cb6941cd42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ContinuationCover/Varianta2f03b68079f8d7604c2322097657664da3d48217250f4c74a785f7063a98e34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
