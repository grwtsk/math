# Complete source: GRWTSK.Algebra.LinearAlgebra.BooleanMatrix.Variant698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `795ea240b0377013e1bed811b4b08a50e0b0c8f6` · SHA-256 `698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Matrix.Pointwise
import BooleanMatrix.Matrix.Update
import BooleanMatrix.Application.Iteration
import BooleanMatrix.TypedApplication
import BooleanMatrix.Codec.Bool

/-!
# BooleanMatrix

A `Matrix` is a countably indexed Boolean carrier.

An `Application` accepts exactly one matrix and emits exactly one matrix:

    Application = Matrix → Matrix

Formats, codecs, and typed applications supply interpretation without changing
the common carrier.

This declaration-free module is the public aggregate.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e79d0557b3834914f4fcf1ec48037b88098325e76f72ee2f8cc246a83b648ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BooleanMatrix/Variant698687a7d1ca9c19711c558be83371602537f4991c72dd38ec0bb8bc336f2505.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
