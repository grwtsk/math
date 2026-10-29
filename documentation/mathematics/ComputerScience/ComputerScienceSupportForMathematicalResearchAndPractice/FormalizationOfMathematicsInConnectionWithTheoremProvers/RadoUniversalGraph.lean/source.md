# Rado Universal Graph — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `792c7898147fa26814cba20409653e8c7edc916c` · SHA-256 `dcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7e16248ea52d2de969c03918df707b1c945d591fb9f185f6bd8afcd6f2974a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RadoUniversalGraph/Variantdcaa5f73d50be8bc570665e6b4fa455c1c2525defce1d0c86a64b901a8e62c22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
