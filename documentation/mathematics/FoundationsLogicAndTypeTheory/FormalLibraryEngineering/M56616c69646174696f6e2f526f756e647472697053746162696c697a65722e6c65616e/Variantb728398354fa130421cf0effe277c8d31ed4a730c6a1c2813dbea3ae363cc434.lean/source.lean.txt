-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContainmentUpdateMonotone.Variantec547775f93c9c10382fdd278c5167799ec2cafb13d3a70367047a664d96878a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec547775f93c9c10382fdd278c5167799ec2cafb13d3a70367047a664d96878a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContainmentUpdateMonotone.Variantec547775f93c9c10382fdd278c5167799ec2cafb13d3a70367047a664d96878a","mathematical_subject":"Foundations.Unclassified","original_sha256":"ec547775f93c9c10382fdd278c5167799ec2cafb13d3a70367047a664d96878a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/Bit0/M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f526f756e647472697053746162696c697a65722e6c65616e


/- source-tree-label: STL1|L|addr=0000110|role=proof_code_atom|slug=validation-roundtripstabilizer|owner=canonical_owner|core=Validation/RoundtripStabilizer.lean|leaf=M56616c69646174696f6e2f526f756e647472697053746162696c697a65722e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContainmentUpdateMonotone.Variantec547775f93c9c10382fdd278c5167799ec2cafb13d3a70367047a664d96878a

set_option autoImplicit false

namespace Think.Validation

universe u v w x y

theorem containment_update_monotone
    {Residue : Type u}
    (old active : Think.RoundtripStabilizer.FiniteSet Residue) :
    Think.RoundtripStabilizer.ledgerContains old
      (Think.RoundtripStabilizer.containmentUpdate old active) := by
  exact Think.RoundtripStabilizer.containment_monotone old active

theorem stableWithResidue_notCleared
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (r : Residue)
    (s :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (hActive : r ∈ s.activeResidues)
    (hContained : Think.RoundtripStabilizer.activeContained s) :
    ¬ Think.RoundtripStabilizer.residueCleared r s := by
  exact
    Think.RoundtripStabilizer.stableWithResidue_notCleared
      r
      s
      hActive
      hContained

theorem status_stableResidueFree_has_empty_active
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (h :
      Think.RoundtripStabilizer.statusOf eqp pot previous next =
        Think.RoundtripStabilizer.RoundtripStabilityStatus.stableResidueFree) :
    next.activeResidues = [] := by
  exact
    Think.RoundtripStabilizer.status_stableResidueFree_has_empty_active
      eqp
      pot
      previous
      next
      h

theorem status_stableWithResidue_has_nonempty_active
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (h :
      Think.RoundtripStabilizer.statusOf eqp pot previous next =
        Think.RoundtripStabilizer.RoundtripStabilityStatus.stableWithResidue) :
    next.activeResidues ≠ [] := by
  exact
    Think.RoundtripStabilizer.status_stableWithResidue_has_nonempty_active
      eqp
      pot
      previous
      next
      h

theorem containmentExpanded_implies_strict_subset
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (h :
      Think.RoundtripStabilizer.statusOf eqp pot previous next =
        Think.RoundtripStabilizer.RoundtripStabilityStatus.containmentExpanded) :
    Think.RoundtripStabilizer.ledgerStrictSubset
      previous.containedLedger
      next.containedLedger := by
  exact
    Think.RoundtripStabilizer.containmentExpanded_implies_strict_subset
      eqp
      pot
      previous
      next
      h

theorem roundtrip_containmentExpanded_implies_ledgerContains
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (h :
      Think.RoundtripStabilizer.statusOf eqp pot previous next =
        Think.RoundtripStabilizer.RoundtripStabilityStatus.containmentExpanded) :
    Think.RoundtripStabilizer.ledgerContains
      previous.containedLedger
      next.containedLedger := by
  exact
    Think.RoundtripStabilizer.containmentExpanded_implies_ledgerContains
      eqp
      pot
      previous
      next
      h

theorem authority_drift_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary ≠ next.authorityBoundary) :
    Think.RoundtripStabilizer.statusOf eqp pot previous next =
      Think.RoundtripStabilizer.RoundtripStabilityStatus.authorityBoundaryDrift := by
  exact
    Think.RoundtripStabilizer.authority_drift_refuses_stability
      eqp
      pot
      previous
      next
      hAuth

theorem nonclaim_drift_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary = next.authorityBoundary)
    (hNon : previous.nonclaims ≠ next.nonclaims) :
    Think.RoundtripStabilizer.statusOf eqp pot previous next =
      Think.RoundtripStabilizer.RoundtripStabilityStatus.nonclaimDrift := by
  exact
    Think.RoundtripStabilizer.nonclaim_drift_refuses_stability
      eqp
      pot
      previous
      next
      hAuth
      hNon

theorem correctiveEnergyIncreased_refuses_stability
    {Residue : Type u} {Payload : Type v}
    {Output : Type w} {ReverseInput : Type x} {Beam : Type y}
    (eqp :
      Think.RoundtripStabilizer.EqualityPolicies
        Payload Output ReverseInput)
    (pot : Think.RoundtripStabilizer.CorrectivePotential Beam)
    (previous next :
      Think.RoundtripStabilizer.LoopState
        Residue Payload Output ReverseInput Beam)
    (hAuth : previous.authorityBoundary = next.authorityBoundary)
    (hNon : previous.nonclaims = next.nonclaims)
    (hEnergy : pot.energy next.beam > pot.energy previous.beam) :
    Think.RoundtripStabilizer.statusOf eqp pot previous next =
      Think.RoundtripStabilizer.RoundtripStabilityStatus.correctiveEnergyIncreased := by
  exact
    Think.RoundtripStabilizer.correctiveEnergyIncreased_refuses_stability
      eqp
      pot
      previous
      next
      hAuth
      hNon
      hEnergy

end Think.Validation
