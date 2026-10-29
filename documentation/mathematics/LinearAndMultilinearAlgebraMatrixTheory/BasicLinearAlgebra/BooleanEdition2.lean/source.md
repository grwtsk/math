# Boolean Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b6466cf4a51c1457ebe46dd83e2f60357fb9b15` · SHA-256 `69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Algebra
import Boolean.Algebra.Bool
import Boolean.Algebra.Formula
import Boolean.Algebra.Laws
import Boolean.BDD
import Boolean.Formula
import Boolean.Formula.CNF
import Boolean.Formula.Enumeration
import Boolean.Formula.Eval
import Boolean.Formula.Laws
import Boolean.Formula.Semantics
import Boolean.Formula.Traversal
import Boolean.Tree
import Boolean.Tree.ANF
import Boolean.Tree.CNF
import Boolean.Tree.Compile
import Boolean.Tree.Completeness
import Boolean.Tree.Eval
import Boolean.Tree.Graph
import Boolean.Tree.List
import Boolean.Tree.MatrixEncoding
import Boolean.Tree.Normalize
import Boolean.Tree.OrderedFactor
import Boolean.Tree.Polish
import Boolean.Tree.Size
import Boolean.Tree.SOP
import Boolean.Tree.SOP.Minimize
import Boolean.Tree.Variadic
import Boolean.Matrix
import Boolean.Matrix.Count
import Boolean.Matrix.Cycle
import Boolean.Matrix.Encoding
import Boolean.Matrix.Ext
import Boolean.Matrix.Lattice
import Boolean.Matrix.Operations
import Boolean.Matrix.Relation
import Boolean.Matrix.Warshall
import Boolean.Runtime
import Boolean.Cube

/-!
# Boolean

Public import surface for the finite Boolean library.

This module exposes the stable finite infrastructure: algebra, formulas,
decision diagrams, expression trees, matrices, finite cubes, Boolean networks,
Walsh/Fourier shadows, and finite projection utilities.

Certificate-gated analytic, prismatic, torsion, and ZKP-facing boundary modules
are available through explicit imports such as `Boolean.Cube.CertificateBoundary`.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc42e562fff9454ac93660e30f7fda6284fb64d960ba1554f5c3dcd22789808d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Boolean/Variant69f0d3aaa2a61b04ec7b467089f31d2428e0bb380f417b9c29504237445d2089.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
