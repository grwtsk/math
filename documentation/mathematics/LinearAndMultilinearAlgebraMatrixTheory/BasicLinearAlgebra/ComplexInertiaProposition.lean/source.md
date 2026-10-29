# Complex Inertia Proposition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed956a31b1aa982064071e30e3da162f39184ae8` · SHA-256 `19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.Analysis.Matrix.Spectrum

namespace JHFDispositionDraft

open Matrix FormalResearch.PositiveAtlas
open scoped ComplexOrder

noncomputable def complexInertia {σ : Type*} [Fintype σ] [DecidableEq σ]
    (M : Matrix σ σ ℂ) (hM : M.IsHermitian) : ℕ × ℕ × ℕ :=
  (Fintype.card {i // 0 < hM.eigenvalues i},
    Fintype.card {i // hM.eigenvalues i < 0},
    Fintype.card {i // hM.eigenvalues i = 0})

/-- Exact remaining complex multiplicity-count statement. This is a proposition,
not an axiom or theorem. Hermiticity witnesses are explicit and must also be
constructed from `hA`, `hB` in the eventual public adapter. -/
def ComplexFeshbachInertiaObligation {m n : Type*}
    [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] : Prop :=
  ∀ (_hA : A.IsHermitian) (_hB : B.PosDef)
    (hH : (Matrix.fromBlocks A Cᴴ C B).IsHermitian)
    (hFB : (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
      (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian),
    complexInertia (Matrix.fromBlocks A Cᴴ C B) hH =
      complexInertia (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
        (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B) hFB

#print ComplexFeshbachInertiaObligation
#print axioms ComplexFeshbachInertiaObligation

end JHFDispositionDraft
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a4a2453118950097b16193e41cee7366e2c7f538205e6b053c6b631c4029e92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775ComplexInertiaPr/Variant19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
