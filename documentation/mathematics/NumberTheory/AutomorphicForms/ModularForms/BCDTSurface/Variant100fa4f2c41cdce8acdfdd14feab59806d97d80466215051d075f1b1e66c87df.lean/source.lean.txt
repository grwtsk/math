import Think.SourceTree.Legacy.Arithmetic.ModularityBridge
import Think.SourceTree.Legacy.Arithmetic.SpecialTheoremSources

set_option autoImplicit false

namespace Think.Arithmetic.BCDTSurface
open Think.Arithmetic.ModularityBridge
open Think.Arithmetic.SpecialTheoremSources

def source : ArithmeticTheoremSource :=
  bcdt2001Modularity

theorem source_is_bcdt_2001 :
    source.sourceId = "bcdt_2001" := by
  rfl

theorem source_kind_is_modularity :
    source.sourceKind = ArithmeticSourceKind.modularity := by
  rfl

theorem source_has_no_imported_authority :
    source.authorityStatus = SourceAuthorityStatus.externalTheoremNotImported := by
  rfl

def arbitraryCurveSurface : EllipticCurveOverQSurface :=
  { curveId := "E_over_Q_arbitrary_surface" }

def fullModularFormSurface : ModularFormSurface :=
  { formId := "full_modularity_associated_modular_form_surface"
    weightLabel := "weight_2_surface"
    levelLabel := "conductor_level_surface" }

def fullModularitySurface : ModularitySurface :=
  { curve := arbitraryCurveSurface
    modularForm := fullModularFormSurface
    relationLabel := "full_modularity_compatibility_surface" }

def fullGaloisRepresentationSurface : GaloisRepresentationSurface :=
  { curve := arbitraryCurveSurface
    primeLabel := "auxiliary_prime_surface"
    representationLabel := "full_modularity_galois_representation_surface" }

def bcdtFullModularityClaim : Prop :=
  fullModularityStatement arbitraryCurveSurface fullModularitySurface

def bcdtProofImportResidue : Think.Residue :=
  { target := FWR.Target.OpenConjectureLedger
    atomId := "bcdt.full_modularity.proof_import"
    kind := FWR.ResidueKind.externalTheoremNotImported
    blocks := "BCDT full modularity proof is not imported as a checked Lean theorem"
    clearsBy := "checked Lean import/proof of the exact full modularity theorem or an explicit theorem adapter" }

def bcdtFullModularityChecked :
    Think.Checked bcdtFullModularityClaim :=
  FWR.Checked.residue [bcdtProofImportResidue]

theorem bcdt_checked_hasResidue :
    bcdtFullModularityChecked.hasResidue = true := by
  rfl

theorem bcdt_full_galois_surface_is_for_arbitrary_curve :
    fullGaloisRepresentationSurface.curve = arbitraryCurveSurface := by
  rfl

end Think.Arithmetic.BCDTSurface
