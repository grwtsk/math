-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/Influence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.TraceStability
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Exact finite bit influence

Influence is the maximum single-flip observable change over the finite admitted
bitfield.  It is sensitivity data, not a concentration theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InfluenceEnergyCertificate.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba

namespace Mathematics.SpectralClosure

theorem allBitfieldsNonempty
    (width : Nat) :
    (Finset.univ : Finset (Bitfield width)).Nonempty :=
  ⟨fun _ => false, Finset.mem_univ _⟩

noncomputable def bitInfluence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width) : ℝ :=
  (Finset.univ : Finset (Bitfield width)).sup'
    (allBitfieldsNonempty width)
    (fun field =>
      |observable field -
        observable (flipAt field coordinate)|)

noncomputable def influenceEnergy
    {width : Nat}
    (observable : Bitfield width → ℝ) : ℝ :=
  ∑ coordinate, (bitInfluence observable coordinate) ^ 2

theorem observable_flip_change_le_influence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width)
    (field : Bitfield width) :
    |observable field -
        observable (flipAt field coordinate)| ≤
      bitInfluence observable coordinate := by
  unfold bitInfluence
  exact Finset.le_sup'
    (fun candidate =>
      |observable candidate -
        observable (flipAt candidate coordinate)|)
    (Finset.mem_univ field)

structure InfluenceEnergyCertificate
    {width : Nat}
    (observable : Bitfield width → ℝ) where
  bound : ℝ
  boundNonnegative : 0 ≤ bound
  certified : influenceEnergy observable ≤ bound
  proofRef : SpectralId

end Mathematics.SpectralClosure
