# System Levelwise System Factor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd320b1ad9936a1b111f199e5bd84ae2f61f79e1` · SHA-256 `3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Fabric.Reaction

/-!
# System-level strengths of fabric reactions

Every cell map of a reaction is already a `DAF.System.Hom`.  Surjectivity is
additional proof data, packaged here as `LevelwiseSystemFactor`.  No arbitrary
realization is assumed to preserve these factors; that conclusion belongs to
the separate capability in `DAF.Fabric.Realization`.
-/

namespace DAF.Fabric

/-- A reaction whose state map is surjective at every source cell. -/
structure LevelwiseSystemFactor
    {F G : Fabric}
    (reaction : Reaction F G) : Prop where
  state_surjective :
    ∀ {n : Nat} (x : F.Cell n),
      Function.Surjective (reaction.cellMap x).mapState

namespace LevelwiseSystemFactor

/-- Recover the existing `DAF.System.Factor` at a selected cell. -/
def factor
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    DAF.System.Factor
      (F.cellSystem x)
      (G.cellSystem (reaction.mapCell x)) where
  toHom := (reaction.cellMap x).toHom
  state_surjective := h.state_surjective x

@[simp]
theorem factor_toHom
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    (h.factor x).toHom = (reaction.cellMap x).toHom :=
  rfl

/-- The identity reaction is levelwise a system factor. -/
def id (F : Fabric) : LevelwiseSystemFactor (Reaction.id F) where
  state_surjective := by
    intro n x state
    exact ⟨state, rfl⟩

end LevelwiseSystemFactor

end DAF.Fabric
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=321b7306c02285a70337afc5ace13dbd5edafad57198e2c7c52860cbd6ffb46a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant3760544749af3366aaf4033daacab61fa25837ed2045c950422bf5b4c4dda661.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
