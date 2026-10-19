import Think.SourceTree.Legacy.ResearchSurvey.Sources.RadoUniversalGraph

set_option autoImplicit false

namespace Think.Validation.RadoUniversalGraph

open Think.ResearchSurvey.Sources.RadoUniversalGraph

theorem final_witness_is_residue (ctx : Context) :
    (finalWitness ctx).hasResidue = true :=
  finalWitness_hasResidue ctx

theorem final_residue_count (ctx : Context) :
    (finalResidues ctx).length = 16 :=
  finalResidue_count ctx

theorem final_residues_match_atoms (ctx : Context) :
    finalResidues ctx = allAtoms.map atomResidue :=
  finalResidues_match_atoms ctx

theorem source_atom_count :
    allAtoms.length = 16 :=
  allAtoms_count

theorem extension_residue_target_correct :
    (atomResidue Atom.radoExtensionProperty).target =
      FWR.Target.RadoUniversalGraph :=
  atomResidue_target Atom.radoExtensionProperty

theorem witness_insertion_residue_target_correct :
    (atomResidue Atom.witnessInsertion).target =
      FWR.Target.RadoUniversalGraph :=
  atomResidue_target Atom.witnessInsertion

theorem survey_target_is_residue :
    (Think.ResearchSurvey.targetChecked surveyTarget).hasResidue = true :=
  surveyTarget_checked_hasResidue

end Think.Validation.RadoUniversalGraph
