# Complete source: GRWTSK.Algebra.LinearAlgebra.Lattice.Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aaf117348e310d776dfea8991e6b604a103d1de5` · SHA-256 `af1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix.Operations
import Boolean.Algebra

namespace Boolean

/--
Nonempty Boolean matrices form a Boolean algebra pointwise.

The nonempty assumptions are needed because an empty `0 × n` or `m × 0`
matrix has no cells, so its all-zero and all-one matrices are extensionally equal.
-/
instance Matrix.instAlgebra
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    Algebra (Matrix rows cols) where
  join := Matrix.join
  meet := Matrix.meet
  compl := Matrix.compl
  bot := Matrix.zeros
  top := Matrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : Matrix.zeros i j = Matrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [Matrix.join, Matrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.join, Matrix.ones, Matrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [Matrix.meet, Matrix.zeros, Matrix.compl]

end Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7d098c9dcb877c271696a3dcd9675f9731d15753c16eccc59be9adb125ec3a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lattice/Variantaf1d90aca0066e8def6039cbdeffca38e84d97eede4d054c0cfdda581adb3310.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
