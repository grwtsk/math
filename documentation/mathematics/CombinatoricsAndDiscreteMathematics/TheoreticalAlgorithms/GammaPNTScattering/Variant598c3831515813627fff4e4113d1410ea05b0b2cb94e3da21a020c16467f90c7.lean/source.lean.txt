-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GammaPrincipalPart.Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GammaPrincipalPart.Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2","mathematical_subject":"Computation.DataStructures","original_sha256":"44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/GammaPNTScattering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PrimeCompact


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GammaPrincipalPart.Variant44110f0d1b71a0621b163b1146e101f75c8a7601bd4e8820410f2ca866f662f2

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure GammaPrincipalPart where
  poleLabel : String
  gammaPart : Int
  poleResiduePart : Int
  torsionResiduePart : Int

def GammaPrincipalPart.canceled (P : GammaPrincipalPart) : Prop :=
  P.gammaPart + P.poleResiduePart + P.torsionResiduePart = 0

structure GammaPNTScattering where
  source : CompactPatch
  target : CompactPatch
  normalizer : PNTNormalizer
  gammaParts : List GammaPrincipalPart
  torsionCharacter : String
  transferOperatorLabel : String
  heatDecayBound : Nat
  smoothForPositiveTime : Prop
  holomorphicAwayFromRenormalizedPoleDivisor : Prop

def GammaPNTScattering.principalPartsCanceled
    (S : GammaPNTScattering) : Prop :=
  ∀ P ∈ S.gammaParts, P.canceled

def GammaPNTScattering.admitted (S : GammaPNTScattering) : Prop :=
  S.principalPartsCanceled ∧
    S.smoothForPositiveTime ∧
    S.holomorphicAwayFromRenormalizedPoleDivisor ∧
    S.normalizer.residue = 0

structure EnhancedCompactResidue where
  compact : CompactPatch
  boundaryResidue : Int
  torsionResidue : Int
  gammaResidue : Int
  pntResidue : Int

def EnhancedCompactResidue.value (R : EnhancedCompactResidue) : Int :=
  R.boundaryResidue + R.torsionResidue + R.gammaResidue + R.pntResidue

def EnhancedCompactResidue.resolved (R : EnhancedCompactResidue) : Prop :=
  R.value = 0

theorem gamma_principal_part_canceled_iff
    (P : GammaPrincipalPart) :
    P.canceled ↔
      P.gammaPart + P.poleResiduePart + P.torsionResiduePart = 0 := by
  rfl

theorem enhanced_compact_residue_zero_resolved
    (R : EnhancedCompactResidue)
    (h : R.boundaryResidue + R.torsionResidue + R.gammaResidue + R.pntResidue = 0) :
    R.resolved := by
  exact h

theorem admitted_scattering_has_pnt_residue_zero
    (S : GammaPNTScattering)
    (h : S.admitted) :
    S.normalizer.residue = 0 := by
  exact h.2.2.2

end Think.RadoProjectedModularHeatflow.MemoryCore
