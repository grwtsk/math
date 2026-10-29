# Complete source: GRWTSK.Algebra.GroupTheory.Holonomy.Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf4aba662aa1eb5b572b2c55d5e58ec3cdd44fb1` · SHA-256 `b25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.TransportHolonomy

/-!
# Generated-loop holonomy

Cycle consistency is checked on a certified generating family and then
extended to every loop by subgroup closure.
-/

namespace Mathematics.MobiusOntology

universe u v w

abbrev LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] :=
  Mathematics.Federation.LoopGeneratingSet Loop Generator

abbrev CycleConsistencyCertificate
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    (holonomy : Loop →* Equiv.Perm Object)
    (generators : LoopGeneratingSet Loop Generator)
    (object : Object) :=
  Mathematics.Federation.CycleConsistencyCertificate
    holonomy generators object

theorem cycle_consistency_on_all_loops
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    {holonomy : Loop →* Equiv.Perm Object}
    {generators : LoopGeneratingSet Loop Generator}
    {object : Object}
    (certificate :
      CycleConsistencyCertificate holonomy generators object) :
    ∀ loop, holonomy loop object = object :=
  certificate.allLoops

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22caf1378da801eaa002e810a5636ba36802a5e4db14360adbd5df02589a2617 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Holonomy/Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
