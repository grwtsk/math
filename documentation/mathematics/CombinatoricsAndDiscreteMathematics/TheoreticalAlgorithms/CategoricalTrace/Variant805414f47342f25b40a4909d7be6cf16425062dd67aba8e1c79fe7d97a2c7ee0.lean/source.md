# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CategoricalTrace.Variant805414f47342f25b40a4909d7be6cf16425062dd67aba8e1c79fe7d97a2c7ee0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f81e32ace6b621d1fe67808ed9f0e6b319cb5fdf` · SHA-256 `805414f47342f25b40a4909d7be6cf16425062dd67aba8e1c79fe7d97a2c7ee0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.CrystallineTensor.CategoricalTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records categorical trace interfaces, not archive or BinaryMatrix trace algorithms.
Ontology: crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure Endomorphism
    (alpha : Type _) where
  map : alpha → alpha
  label : String

def FixedBy
    {alpha : Type _}
    (f : Endomorphism alpha)
    (x : alpha) : Prop :=
  f.map x = x

structure CategoricalTrace
    (alpha : Type _) where
  End : Type _
  trace : End → Type _
  cyclic : Prop
  cyclic_certified : cyclic
  additivity? : Prop
  multiplicativity? : Prop

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : CategoricalTrace alpha) :
    T.cyclic :=
  T.cyclic_certified

end CrystallineTensor
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=897089fc09158385cf8a316868064047b76e287960e5a52e7554d16c3232e5c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CategoricalTrace/Variant805414f47342f25b40a4909d7be6cf16425062dd67aba8e1c79fe7d97a2c7ee0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
