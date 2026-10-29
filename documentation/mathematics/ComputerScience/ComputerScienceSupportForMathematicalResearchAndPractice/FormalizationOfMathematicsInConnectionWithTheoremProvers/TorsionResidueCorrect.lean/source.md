# Torsion Residue Correct — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e207c1080ebcb50d1d043b4f7520e3a532f3715` · SHA-256 `1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.TorsionWitness

set_option autoImplicit false

namespace Think.Validation.TorsionResidueCorrect

theorem torsion_resolved_means_zero_residue
    (T : Think.RadoProjectedModularHeatflow.MemoryCore.CompactTorsion)
    (h : T.resolved) :
    T.residueValue = 0 := by
  exact h

theorem natural_torsion_restriction_is_admitted
    (r : Think.RadoProjectedModularHeatflow.MemoryCore.TorsionRestriction)
    (h : r.naturalUnderRestriction) :
    r.admitted :=
  Think.RadoProjectedModularHeatflow.MemoryCore.natural_torsion_restriction_admitted r h

theorem torsion_witness_bridge_side
    (W : Think.RadoProjectedModularHeatflow.TorsionWitness.TorsionRadoWitness) :
    W.witness.witness.side = Think.RadoProjectedModularHeatflow.MemoryCore.BoundarySide.bridge :=
  Think.RadoProjectedModularHeatflow.TorsionWitness.torsion_witness_is_bridge W

end Think.Validation.TorsionResidueCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5507570298666290220dce87d858e13f5b486df38b96013da70cf76dd690f20a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TorsionResidueCorrect/Variant1cec9326969173936fc11af81492b84e69d1106e1f346162ab9f969383140c68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
