# Phase Splitting — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d83a11ce22ff13b184e0c899f54b6e43fe400c48` · SHA-256 `351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.OrdinaryBockstein

/-!
# Chosen phase splitting

An abstract splitting may exist, but it is never canonical.  Product
coordinates require this separate certificate and cannot be obtained from
the unsplit Bockstein record alone.
-/

namespace Mathematics.Homology

universe u v w

/-- A chosen homomorphic section of one Bockstein quotient. -/
structure BocksteinSplitting
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion) where
  lift : Torsion →+ Phase
  rightInverse :
    Function.RightInverse lift extension.bockstein
  choiceDigest : Digest
  splittingCertificate : ObjectAddress

namespace BocksteinSplitting

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    {extension : BocksteinExtension Torus Phase Torsion}
    (splitting : BocksteinSplitting extension)

/-- The selected torsion lift has exactly the requested finite phase. -/
theorem section_phase (torsion : Torsion) :
    extension.bockstein (splitting.lift torsion) = torsion :=
  splitting.rightInverse torsion

end BocksteinSplitting

end Mathematics.Homology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b38d6c4e45bde4e8b943316eb1e22166a2166325643cbfebc630397fabf40f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/PhaseSplitting/Variant351e0f815b54f62289791395c5a850d69de20b7e5efa51bc167f7ef5070dc6b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
