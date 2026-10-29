# Memory Algebra Correct — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cbdb7d13bc3307bfdfd2e06c8be8b19d71ad3b0` · SHA-256 `9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Semiring

set_option autoImplicit false

namespace Think.Validation.MemoryAlgebraCorrect

abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev MemorySemiringLaws := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemorySemiringLaws

def semiringLawsForNonnegativeMemory : MemorySemiringLaws :=
  Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring_laws

theorem memory_add_zero (M : WeightedMemory) :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add M
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.zero = M :=
  semiringLawsForNonnegativeMemory.addZero M

theorem memory_zero_add (M : WeightedMemory) :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.zero M = M :=
  semiringLawsForNonnegativeMemory.zeroAdd M

theorem memory_add_assoc (M N K : WeightedMemory) :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add
      (Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add M N) K =
        Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add M
          (Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.add N K) :=
  semiringLawsForNonnegativeMemory.addAssoc M N K

theorem memory_semiring_default_residue :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.semiringOnlyUntilInverseDefined ∈
      Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring.residueAtoms :=
  Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.memorySemiring_marks_default

end Think.Validation.MemoryAlgebraCorrect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf4a09d1987baf35cf05476c5ed7dd5f30dd4a26b6e0a2d132b49389e7984b8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MemoryAlgebraCorrect/Variant9fd7cb37389bfb931f3bad5d918c7a43bbd8d34f2b4f0521f0641c9769c350be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
