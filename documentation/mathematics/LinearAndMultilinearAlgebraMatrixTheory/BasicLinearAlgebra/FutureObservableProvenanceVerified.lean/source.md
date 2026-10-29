# Future Observable Provenance Verified — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56e44847ed177cecac9a7523bb0128ae0b9b39cd` · SHA-256 `1a2cde687103562dfd5bfdf933bc084e75517da99cad6147b0b336292d63561b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FutureObservable

/-!+# Checked parent reuse for exact provenance words

The word executes its head first. Its composed state matrix therefore appends
the head generator on the right of the parent's already checked matrix. The
fold theorem binds this recursive computation to independent full-word replay;
it permits reuse of a source-local parent product, not omission of any source
link, local expansion or final readout comparison.

Direction and formation of the medium: grwtsk contributors. Implementation and
proof construction: OpenAI Codex. Efficacy and integration remain separate.
-/

set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.FutureObservableProvenance

open FutureObservable

variable {ι Move : Type*} [Fintype ι] [DecidableEq ι]

/-- Chronological word composition, with the head generator acting first. -/
def matrixWord (generators : Move → Matrix ι ι ℚ) : List Move → Matrix ι ι ℚ
  | [] => 1
  | g :: word => matrixWord generators word * generators g

/-- Exact parent reuse has a fixed multiplication orientation. -/
theorem matrixWord_cons (generators : Move → Matrix ι ι ℚ)
    (g : Move) (word : List Move) :
    matrixWord generators (g :: word) = matrixWord generators word * generators g := rfl

/-- Complete left-to-right replay with any initial matrix agrees with the
recursive word product; no commutativity or involution is assumed. -/
theorem matrixWord_fold (generators : Move → Matrix ι ι ℚ) (word : List Move)
    (initial : Matrix ι ι ℚ) :
    word.foldl (fun accumulated g => generators g * accumulated) initial =
      matrixWord generators word * initial := by
  induction word generalizing initial with
  | nil => simp [matrixWord]
  | cons g word ih =>
    simp only [List.foldl_cons, matrixWord, ih, Matrix.mul_assoc]

/-- Recursive parent products reproduce the original state execution. -/
theorem matrixWord_execute (generators : Move → Matrix ι ι ℚ)
    (word : List Move) (x : ι → ℚ) :
    (matrixWord generators word).mulVec x =
      execute (fun g => (generators g).mulVec) word x := by
  induction word generalizing x with
  | nil => simp [matrixWord, execute]
  | cons g word ih =>
    simp only [matrixWord, execute, ← Matrix.mulVec_mulVec, ih]

/-- A checked parent and checked local expansion imply the complete child
provenance equation, with the unchanged target and every signed entry retained. -/
theorem provenance_extension (generators : Move → Matrix ι ι ℚ)
    (H parent child : Matrix ι ι ℚ) (word : List Move) (g : Move)
    (parent_checked : parent = pullback H (matrixWord generators word))
    (child_checked : child = pullback parent (generators g)) :
    child = pullback H (matrixWord generators (g :: word)) := by
  rw [matrixWord_cons, pullback_comp, ← parent_checked]
  exact child_checked

/-- The retained complete child readout is an actual finite future. -/
theorem quadratic_matrixWord (generators : Move → Matrix ι ι ℚ)
    (H : Matrix ι ι ℚ) (word : List Move) (x : ι → ℚ) :
    quadratic (pullback H (matrixWord generators word)) x =
      quadratic H (execute (fun g => (generators g).mulVec) word x) := by
  rw [quadratic_pullback, matrixWord_execute]

end FormalResearch.PositiveAtlas.FutureObservableProvenance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0885a4dd311030c1e3d03e596fef640b744235d9844574bcfba6c81a2471a153 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FutureObservableProvenanceVerified/Variant1a2cde687103562dfd5bfdf933bc084e75517da99cad6147b0b336292d63561b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
