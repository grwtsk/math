# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Witness.Variantf25fadb6ae342ce62b3f138c581b5ba2180bfcede19ff73e1bb3a66cbe597ec3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34fe3569eef0cccc12b1e0dae979c3ae9ff00f12` · SHA-256 `f25fadb6ae342ce62b3f138c581b5ba2180bfcede19ff73e1bb3a66cbe597ec3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Stack.Descent

/-!
# Folder.Stack.Witness

Radiation role: stack-architecture
BinaryMatrix spine: This module stores stack witness metadata rather than treating runtime or witness layers as BinaryMatrix proofs.
Ontology: stack.witness
Pivot role: none
Zero typology: none
Contract boundary: witness
Composite stack role: infrastructure
-/

namespace Folder
namespace Stack

structure StackWitness where
  name : String
  claim : Prop
  certified : claim

theorem stack_witness_certified
    (W : StackWitness) :
    W.claim :=
  W.certified

end Stack
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0713d4202599ec9142298a673881bf2313587cef6be36a3c158bf6b3ec53c489 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Witness/Variantf25fadb6ae342ce62b3f138c581b5ba2180bfcede19ff73e1bb3a66cbe597ec3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
