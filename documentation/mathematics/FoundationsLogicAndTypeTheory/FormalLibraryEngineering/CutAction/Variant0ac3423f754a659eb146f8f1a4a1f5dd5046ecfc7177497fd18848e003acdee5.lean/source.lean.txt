-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutEquivariance.Variantc6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CutEquivariance.Variantc6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f","mathematical_subject":"Foundations.Unclassified","original_sha256":"c6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Symmetry/CutAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.Equivariance
import Mathematics.StratifiedBoundary.Boundary.FiniteCut

/-!
# Finite-cut automorphism action

The stratum layer reuses the exact equivariant kernel certificate already
carried by each Connes--bitfield closure package.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CutEquivariance.Variantc6083f040931711aa131977af7c4c6319aa72359e292dfdb43db71f7f37c364f

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

abbrev CutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  EquivariantScheduleKernelCertificate
    cut.closure.crossedProduct
    cut.closure.dynamics

def FiniteReflectiveCut.cutEquivariance
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :
    CutEquivariance cut :=
  cut.closure.equivariance

theorem finite_cut_boundary_law_automorphism_invariant
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (automorphism : cut.Automorphism) :
    cut.cutEquivariance.lawAction
        automorphism
        cut.closure.dynamics.invariantLaw =
      cut.closure.dynamics.invariantLaw :=
  invariantLaw_automorphism_invariant
    cut.cutEquivariance automorphism

end Mathematics.StratifiedBoundary.Symmetry
