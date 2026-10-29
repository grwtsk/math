# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryCharge.Variant70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28b2cc7180b0debe3a888814b00830aa1a5c8278` · SHA-256 `70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.Core
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Real.Basic

/-!
# Binary charges on concrete terrain vertices

Charges are vertex observations, not permutation matrices or action matrices.
The Boolean and `ZMod 2` presentations are tied pointwise by a proof field.
-/

universe u

namespace DAF.Terrain

/-- A finite family of one-bit channels on each concrete vertex. -/
structure BinaryVertexCharge
    (V : Type u) [Fintype V] [DecidableEq V] where
  channels : Nat
  bits : V → Fin channels → Bool
  f2 : V → Fin channels → ZMod 2
  f2_spec : ∀ v i, f2 v i = if bits v i then 1 else 0

/-- Terrain adjacency and vertex charge remain separate fields. -/
structure ChargedTerrain
    (V : Type u) [Fintype V] [DecidableEq V] where
  terrain : Terrain V
  charge : BinaryVertexCharge V

/-- Exact Boolean embedding used by raster and threshold layers. -/
def boolToReal : Bool → Real
  | false => 0
  | true => 1

@[simp] theorem boolToReal_false : boolToReal false = 0 := rfl
@[simp] theorem boolToReal_true : boolToReal true = 1 := rfl

end DAF.Terrain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec82022fc20b5dc72b042a483472af92bef0f7cc8e26ba1c253382262acaf4c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinaryCharge/Variant70b40bb1cbf791e134460a4416946a96b5838e6c0ef57d6425f767fe0d0609fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
