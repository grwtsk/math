# Verification target: Restrict Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41f6b32bdca4ee637ca6d7a2c1acd44f2205c9b8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41f6b32bdca4ee637ca6d7a2c1acd44f2205c9b8`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.nonempty_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinesubspace-nonempty-map.md) | 39 | `result-track:81d20cdc52f187eb80990cf5478eeebf13ddfdeac8317849201a1ab04d4e486e` |
| 2 | `def` | [AffineMap.restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict.md) | 47 | `declaration-track:af3c8879203657d543ccfe29ece38032fa3fd2534321cc57b715b4aa931046b5` |
| 3 | `theorem` | [AffineMap.restrict.coe_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-coe-apply.md) | 58 | `result-track:bf7f91f4c09069c08b6621f17c372fa0337d8ad89070fc08d4e626ef8f4f3980` |
| 4 | `theorem` | [AffineMap.restrict.linear_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-linear-aux.md) | 63 | `result-track:cb74ad1f9b41df0d43672b6f26d136cd7a2d65fa68494d980a6830682ed93a6e` |
| 5 | `theorem` | [AffineMap.restrict.linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-linear.md) | 68 | `result-track:524d06ff0e4589c6f967cf5bce2f325ba598ec00a217035bbc7a58a53cb4844a` |
| 6 | `theorem` | [AffineMap.restrict.injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-injective.md) | 73 | `result-track:d1b62dcfc63fe1ffdec794d6b58cad17e4313d2f3e5322c1ea20eed2fecd1c77` |
| 7 | `theorem` | [AffineMap.restrict.surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-surjective.md) | 80 | `result-track:cbbcec10298baabfbbb97602281c80990c1094e5ab6d9c2157aa48712753184d` |
| 8 | `theorem` | [AffineMap.restrict.bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RestrictNamespaced.lean/declarations/affinemap-restrict-bijective.md) | 88 | `result-track:2d0d9b7eed4cb643443be989a48270fd3742d07852fa2739b413fa69d7ae7719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a816bf73f84c939e92ec9d9ba9dd5d3e7e702204bbaf3cf82161291d43a405a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Restrict/Varianta1ec867a5bd4e90370a91d8a048ea4dd3ac0c16c044262947e4b39fe7543f80a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
