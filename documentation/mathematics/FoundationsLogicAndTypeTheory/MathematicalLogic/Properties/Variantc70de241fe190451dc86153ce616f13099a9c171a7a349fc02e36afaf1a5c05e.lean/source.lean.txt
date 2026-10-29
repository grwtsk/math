-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsInjective.Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsInjective.Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8","mathematical_subject":"Logic.Foundations","original_sha256":"a4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Comparison/Properties.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Core
import Mathlib.Logic.Equiv.Defs

/-!
# Properties of comparison maps

Properties are predicates on a `Spec`; they are not fields of the map itself.
An equivalence is constructed only from a proof of bijectivity.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsInjective.Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8

namespace DAF.Comparison

universe u v w

def IsInjective (C : Spec A B) : Prop :=
  Function.Injective C.map

def IsSurjective (C : Spec A B) : Prop :=
  Function.Surjective C.map

def IsBijective (C : Spec A B) : Prop :=
  Function.Bijective C.map

def IsLeftInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.LeftInverse inverse.map forward.map

def IsRightInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.RightInverse inverse.map forward.map

def IsInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  IsLeftInverseOf inverse forward ∧ IsRightInverseOf inverse forward

theorem isInjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsInjective g) (hf : IsInjective f) :
    IsInjective (g.comp f) :=
  hg.comp hf

theorem isSurjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsSurjective g) (hf : IsSurjective f) :
    IsSurjective (g.comp f) :=
  hg.comp hf

theorem isBijective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsBijective g) (hf : IsBijective f) :
    IsBijective (g.comp f) :=
  ⟨isInjective_comp hg.1 hf.1, isSurjective_comp hg.2 hf.2⟩

namespace Spec

/-- Promote a comparison to an equivalence only from a proof certificate. -/
noncomputable def toEquiv (C : Spec A B) (h : IsBijective C) : A ≃ B :=
  Equiv.ofBijective C.map h

@[simp]
theorem toEquiv_apply (C : Spec A B) (h : IsBijective C) (a : A) :
    C.toEquiv h a = C.map a :=
  rfl

end Spec

end DAF.Comparison
