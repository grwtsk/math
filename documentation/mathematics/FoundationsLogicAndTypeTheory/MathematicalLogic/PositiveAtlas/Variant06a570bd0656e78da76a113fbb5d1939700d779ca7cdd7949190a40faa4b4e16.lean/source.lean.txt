-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificateRestriction.Variantc9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CertificateRestriction.Variantc9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c","mathematical_subject":"Logic.Foundations","original_sha256":"c9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/new-cache-source-audit/source/c9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CertificationEquivalence

/-!
# Directed restriction of certificate families

A restriction carries the observable-index map and the value-type equivalences
as data. Minimality of the coarse representation then supplies a directed map
from any sufficient fine representation. Identity, composition and decoder
laws follow on reachable images and, with surjectivity, on whole carriers.
An evolution law is additional data: a snapshot restriction alone does not
justify compatibility with future transitions.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificateRestriction.Variantc9b8009302c1eddc4c44ba4d2fdb0aee25b013f8f483dcfd27a1fffa2985f07c

namespace FormalResearch.PositiveAtlas

universe u v₁ v₂ v₃ w₁ w₂ w₃ a b c
universe a' b'

/-- The coarse observations occur among the fine observations, with explicit
heterogeneous value equivalences and the exact state-observation diagram. -/
structure CertificateRestriction {State : Type u}
    {FineIndex : Type v₁} {CoarseIndex : Type v₂}
    (Fine : CertificateFamily.{u, v₁, w₁} State FineIndex)
    (Coarse : CertificateFamily.{u, v₂, w₂} State CoarseIndex) where
  index : CoarseIndex → FineIndex
  valueEquiv : (i : CoarseIndex) → Fine.value (index i) ≃ Coarse.value i
  observe : ∀ i s, valueEquiv i (Fine.observe (index i) s) = Coarse.observe i s

namespace CertificateRestriction

variable {State : Type u}
variable {I : Type v₁} {J : Type v₂} {K : Type v₃}
variable {F : CertificateFamily.{u, v₁, w₁} State I}
variable {G : CertificateFamily.{u, v₂, w₂} State J}
variable {H : CertificateFamily.{u, v₃, w₃} State K}

/-- Admit all the same observations with their original value types. -/
def refl (F : CertificateFamily.{u, v₁, w₁} State I) : CertificateRestriction F F where
  index := id
  valueEquiv _ := Equiv.refl _
  observe _ _ := rfl

/-- Restrictions compose in the fine-to-coarse direction. -/
def trans (R : CertificateRestriction F G) (T : CertificateRestriction G H) :
    CertificateRestriction F H where
  index := R.index ∘ T.index
  valueEquiv i := (R.valueEquiv (T.index i)).trans (T.valueEquiv i)
  observe i s := by
    change T.valueEquiv i (R.valueEquiv (T.index i) (F.observe _ s)) = _
    rw [R.observe, T.observe]

/-- The same compressed data is sufficient for every explicitly restricted
observable. Information loss enters when it is minimized for the coarse family. -/
def representation (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F) :
    SufficientRepresentation.{u, v₂, w₂, a} G where
  carrier := p.carrier
  compress := p.compress
  recover i x := R.valueEquiv i (p.recover (R.index i) x)
  recover_compress i s := by
    rw [p.recover_compress, R.observe]

/-- A fine sufficient carrier maps into a coarse minimal carrier. Its
minimality hypothesis is at the actual fine-carrier universe. -/
noncomputable def map (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q) :
    p.carrier → q.carrier :=
  SufficientRepresentation.comparisonMap (R.representation p) q hq

@[simp]
theorem map_compress (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q) (s : State) :
    R.map p q hq (p.compress s) = q.compress s :=
  SufficientRepresentation.comparisonMap_compress _ _ _ s

theorem map_unique_on_image (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (f : p.carrier → q.carrier) (hf : ∀ s, f (p.compress s) = q.compress s)
    (x : p.carrier) (hx : x ∈ Set.range p.compress) :
    f x = R.map p q hq x := by
  obtain ⟨s, rfl⟩ := hx
  rw [hf, map_compress]

theorem map_unique (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (sp : Function.Surjective p.compress)
    (f : p.carrier → q.carrier) (hf : ∀ s, f (p.compress s) = q.compress s) :
    f = R.map p q hq := by
  funext x
  obtain ⟨s, rfl⟩ := sp x
  rw [hf, map_compress]

/-- Naturality for every admitted observation on a reachable fine certificate. -/
theorem map_recover_on_image (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (i : J) (x : p.carrier) (hx : x ∈ Set.range p.compress) :
    q.recover i (R.map p q hq x) = R.valueEquiv i (p.recover (R.index i) x) := by
  obtain ⟨s, rfl⟩ := hx
  rw [map_compress, q.recover_compress, p.recover_compress, R.observe]

theorem map_recover (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (sp : Function.Surjective p.compress) (i : J) (x : p.carrier) :
    q.recover i (R.map p q hq x) = R.valueEquiv i (p.recover (R.index i) x) := by
  exact R.map_recover_on_image p q hq i x (sp x)

theorem map_refl (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (hp : SufficientRepresentation.IsMinimal.{u, v₁, w₁, a, a} p)
    (sp : Function.Surjective p.compress) : (refl F).map p p hp = id := by
  exact ((refl F).map_unique p p hp sp id (fun _ => rfl)).symm

/-- Directed carrier maps compose; they are not silently made invertible. -/
theorem map_trans (R : CertificateRestriction F G) (T : CertificateRestriction G H)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (r : SufficientRepresentation.{u, v₃, w₃, c} H)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (hrq : SufficientRepresentation.IsMinimal.{u, v₃, w₃, c, b} r)
    (hrp : SufficientRepresentation.IsMinimal.{u, v₃, w₃, c, a} r)
    (sp : Function.Surjective p.compress) :
    T.map q r hrq ∘ R.map p q hq = (R.trans T).map p r hrp := by
  apply (R.trans T).map_unique p r hrp sp
  intro s
  simp only [Function.comp_apply, map_compress]

/-- Directed restriction is natural under any coherent reversible changes of
the fine and coarse encodings. The supplied equivalences retain the actual
state-compression diagrams; no information-losing restriction is inverted. -/
theorem map_equiv_natural (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (p' : SufficientRepresentation.{u, v₁, w₁, a'} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (q' : SufficientRepresentation.{u, v₂, w₂, b'} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (hq' : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b', a'} q')
    (sp : Function.Surjective p.compress)
    (ef : p.carrier ≃ p'.carrier) (ec : q.carrier ≃ q'.carrier)
    (hf : ∀ s, ef (p.compress s) = p'.compress s)
    (hc : ∀ s, ec (q.compress s) = q'.compress s) (x : p.carrier) :
    R.map p' q' hq' (ef x) = ec (R.map p q hq x) := by
  obtain ⟨s, rfl⟩ := sp x
  rw [hf, map_compress, map_compress, hc]

/-- Future-state compatibility requires actual lifts of the chosen evolution
on both certificate carriers. Snapshot sufficiency alone does not supply them. -/
theorem map_evolution_on_image (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (evolve : State → State) (fineStep : p.carrier → p.carrier)
    (coarseStep : q.carrier → q.carrier)
    (hf : ∀ s, fineStep (p.compress s) = p.compress (evolve s))
    (hc : ∀ s, coarseStep (q.compress s) = q.compress (evolve s))
    (x : p.carrier) (hx : x ∈ Set.range p.compress) :
    R.map p q hq (fineStep x) = coarseStep (R.map p q hq x) := by
  obtain ⟨s, rfl⟩ := hx
  rw [hf, map_compress, map_compress, hc]

theorem map_evolution (R : CertificateRestriction F G)
    (p : SufficientRepresentation.{u, v₁, w₁, a} F)
    (q : SufficientRepresentation.{u, v₂, w₂, b} G)
    (hq : SufficientRepresentation.IsMinimal.{u, v₂, w₂, b, a} q)
    (sp : Function.Surjective p.compress)
    (evolve : State → State) (fineStep : p.carrier → p.carrier)
    (coarseStep : q.carrier → q.carrier)
    (hf : ∀ s, fineStep (p.compress s) = p.compress (evolve s))
    (hc : ∀ s, coarseStep (q.compress s) = q.compress (evolve s))
    (x : p.carrier) :
    R.map p q hq (fineStep x) = coarseStep (R.map p q hq x) :=
  R.map_evolution_on_image p q hq evolve fineStep coarseStep hf hc x (sp x)

end CertificateRestriction

end FormalResearch.PositiveAtlas
