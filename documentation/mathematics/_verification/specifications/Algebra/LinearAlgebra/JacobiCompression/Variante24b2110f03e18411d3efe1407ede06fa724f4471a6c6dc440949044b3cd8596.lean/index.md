# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad9000b5451ff9a8b149e4d59cf05ce8834716c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad9000b5451ff9a8b149e4d59cf05ce8834716c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RationalMatrix](../../../../../../Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean/declarations/rationalmatrix--1ccb385b7069115f3c9989e0.md) | 20 | `declaration-track:1ccb385b7069115f3c9989e05e9e39200dd716b620d6915d4a6b83424f11d0b9` |
| 2 | `def` | [rationalQuadraticForm](../../../../../../Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean/declarations/rationalquadraticform--7746b5b7f5051f4ab387dbe0.md) | 23 | `declaration-track:7746b5b7f5051f4ab387dbe08b4b9633ef24491b4442809264f9c8195252a685` |
| 3 | `structure` | [JacobiCompression](../../../../../../Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean/declarations/jacobicompression--3bc0be2ee81a8c9a6391ae3f.md) | 30 | `declaration-track:3bc0be2ee81a8c9a6391ae3fc0d899b0588c2136e5e6070884f149ad87bff710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79ddd54d3f4d0863d602dfdb31ec464be9ecc3b16d50617093a533ceb5a130e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/JacobiCompression/Variante24b2110f03e18411d3efe1407ede06fa724f4471a6c6dc440949044b3cd8596.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
