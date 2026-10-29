# Oracle Simplex Algorithm — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb69cec1de1d14e3323091bb1b176a0696259a74` · SHA-256 `d21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Vasily Nesterov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vasily Nesterov
-/
import Mathlib.Tactic.Linarith.Datatypes
import Mathlib.Tactic.Linarith.Oracle.SimplexAlgorithm.PositiveVector

/-!
# The oracle based on Simplex Algorithm

This file contains hooks to enable the use of the Simplex Algorithm in `linarith`.
The algorithm's entry point is the function `Linarith.SimplexAlgorithm.findPositiveVector`.
See the file `PositiveVector.lean` for details of how the procedure works.
-/

namespace Linarith.SimplexAlgorithm
open Mathlib

/-- Preprocess the goal to pass it to `Linarith.SimplexAlgorithm.findPositiveVector`. -/
def preprocess (matType : ℕ → ℕ → Type) [UsableInSimplexAlgorithm matType] (hyps : List Comp)
    (maxVar : ℕ) : matType (maxVar + 1) (hyps.length) × List Nat :=
  let values : List (ℕ × ℕ × ℚ) := hyps.foldlIdx (init := []) fun idx cur comp =>
    cur ++ comp.coeffs.map fun (var, c) => (var, idx, c)

  let strictIndexes := hyps.findIdxs (·.str == Ineq.lt)
  (ofValues values, strictIndexes)

/--
Extract the certificate from the `vec` found by `Linarith.SimplexAlgorithm.findPositiveVector`.
-/
def postprocess (vec : Array ℚ) : Std.HashMap ℕ ℕ :=
  let common_den : ℕ := vec.foldl (fun acc item => acc.lcm item.den) 1
  let vecNat : Array ℕ := vec.map (fun x : ℚ => (x * common_den).floor.toNat)
  (∅ : Std.HashMap Nat Nat).insertMany <| vecNat.zipIdx.filterMap
    fun ⟨item, idx⟩ => if item != 0 then some (idx, item) else none

end SimplexAlgorithm

open SimplexAlgorithm

/-- An oracle that uses the Simplex Algorithm. -/
def CertificateOracle.simplexAlgorithmSparse : CertificateOracle where
  produceCertificate hyps maxVar := do
    let (A, strictIndexes) := preprocess SparseMatrix hyps maxVar
    let vec ← findPositiveVector A strictIndexes
    return postprocess vec

/--
The same oracle as `CertificateOracle.simplexAlgorithmSparse`, but uses dense matrices. Works faster
on dense states.
-/
def CertificateOracle.simplexAlgorithmDense : CertificateOracle where
  produceCertificate hyps maxVar := do
    let (A, strictIndexes) := preprocess DenseMatrix hyps maxVar
    let vec ← findPositiveVector A strictIndexes
    return postprocess vec

end Linarith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86283b74138b2ac8ae51e67852aa4eb867d29593797c73ca59f02147efb01ae3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimplexAlgorithm/Variantd21d444fb521a47384dc75fcedb95fe72be5433e6deb459b1ee0ee0a851ec42e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
