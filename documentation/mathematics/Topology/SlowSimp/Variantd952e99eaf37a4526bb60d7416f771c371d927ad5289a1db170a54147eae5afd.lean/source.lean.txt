-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.PointedSpace.Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PointedSpace.Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/slow_simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathlib.Topology.Category.TopCat.Basic

/-!
This test file serves as a sentinel against bad simp lemmas.

When this test file was first setup,
the final declaration of this file took 12,000 heartbeats
with the minimal import of `Mathlib/Topology/Category/TopCat/Basic.lean`,
but took over 260,000 heartbeats with `import Mathlib`.

After deleting some bad simp lemmas that were being tried everywhere
(discovered using `set_option diagnostics true`):
* Mathlib.MeasureTheory.coeFn_comp_toFiniteMeasure_eq_coeFn
* LightProfinite.hasForget_forget_obj
* CategoryTheory.sum_comp_inl
* CategoryTheory.sum_comp_inr
it is back down to 19,000 heartbeats even with `import Mathlib`.
-/


namespace GRWTSK.Topology.PointedSpace.Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837

open CategoryTheory

structure PointedSpace where
  carrier : Type
  [inst : TopologicalSpace carrier]
  base : carrier

attribute [instance] PointedSpace.inst

namespace PointedSpace

structure Hom (X Y : PointedSpace) where
  map : ContinuousMap X.carrier Y.carrier
  base : map X.base = Y.base

attribute [simp] Hom.base

namespace Hom

def id (X : PointedSpace) : Hom X X := ⟨ContinuousMap.id _, rfl⟩

def comp {X Y Z : PointedSpace} (f : Hom X Y) (g : Hom Y Z) : Hom X Z :=
   ⟨g.map.comp f.map, by simp⟩

end Hom

instance : Category PointedSpace where
  Hom := Hom
  id := Hom.id
  comp := Hom.comp

end PointedSpace

set_option maxHeartbeats 20000 in
def PointedSpaceEquiv_inverse : Under (TopCat.of Unit) ⥤ PointedSpace where
  obj := fun X =>
  { carrier := X.right
    base := X.hom () }
  map := fun f =>
  { map := f.right.hom
    base := by
      have := f.w
      replace this := CategoryTheory.congr_fun this ()
      simp [-Under.w] at this
      simp
      exact this.symm }
  map_comp := by intros; simp_all; rfl -- This is the slow step.
