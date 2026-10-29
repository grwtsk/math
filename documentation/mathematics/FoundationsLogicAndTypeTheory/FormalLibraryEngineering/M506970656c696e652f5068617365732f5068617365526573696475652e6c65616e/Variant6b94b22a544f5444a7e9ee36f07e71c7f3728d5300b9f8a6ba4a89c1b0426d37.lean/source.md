# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.Variant6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88f3db33a29cc72036293d27172accb15e812c54` · SHA-256 `6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f5068617365732f506861736553796d6d657472792e6c65616e


/- source-tree-label: STL1|L|addr=01011110|role=proof_code_atom|slug=pipeline-phases-phaseresidue|owner=canonical_owner|core=Pipeline/Phases/PhaseResidue.lean|leaf=M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Phases

structure PrunedWitness where
  oldPath : String
  newPath : String
  oldWeight : Nat
  newWeight : Nat
  sameWeight : oldWeight = newWeight
  residueClass : String
  reason : String

def phase37Witness : PrunedWitness :=
  { oldPath := "binomial-retired:Pipeline/Phases/Phase37_WeightScoring.lean"
    newPath := "formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean"
    oldWeight := phaseWeight 37
    newWeight := phaseWeight 23
    sameWeight := by rfl
    residueClass := "Classifier.WeightScore"
    reason := "phase-table contraction preserving mirror Phase23" }

theorem phase37Witness_preservesWeight :
    phase37Witness.oldWeight = phase37Witness.newWeight :=
  phase37Witness.sameWeight

end Think.Pipeline.Phases
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c9e1fd0311c28ac2c732b0f3156d3abcb38a0c4490de0d9a5f973332d3c7626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e/Variant6b94b22a544f5444a7e9ee36f07e71c7f3728d5300b9f8a6ba4a89c1b0426d37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
