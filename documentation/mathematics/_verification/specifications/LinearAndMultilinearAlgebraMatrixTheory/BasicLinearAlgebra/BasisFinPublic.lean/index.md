# Verification target: Basis Fin Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2cc98a0e87750d635a64afbe0c2cc0213d594c1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2cc98a0e87750d635a64afbe0c2cc0213d594c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/mkfincons.md) | 44 | `declaration-track:2a06ea5c0508316ffa3986ce7ee14a11306eaec4a5caed3430786799f8016b6c` |
| 2 | `theorem` | [coe_mkFinCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/coe-mkfincons.md) | 58 | `result-track:93134f1511976b062993dc0199d273b40108538b11bd63d63af256ae34921c9f` |
| 3 | `def` | [mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/mkfinconsofle.md) | 67 | `declaration-track:b46c6addab5f57c4b97e72cbb252420ec77ccff6eb77f28ae0da9904cd078d53` |
| 4 | `theorem` | [coe_mkFinConsOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/coe-mkfinconsofle.md) | 75 | `result-track:8bcc3978da47cb07acc72198b0ce25194582348def7212b1c24a4a8423bcc29a` |
| 5 | `def` | [mkFinSnoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/mkfinsnoc.md) | 85 | `declaration-track:12728c6f99c67931df27dcfcec668c5dd1cf48d39bd2d0ca317381e95d8ba3f3` |
| 6 | `theorem` | [coe_mkFinSnoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/coe-mkfinsnoc.md) | 99 | `result-track:5930c8b014b38131c28d2c4bd30e7dc8183dc355205a2d864bb1a7f0a5c92062` |
| 7 | `def` | [mkFinSnocOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/mkfinsnocofle.md) | 108 | `declaration-track:f5427bd7f363dcdeb9c4ea064f2a368f1c1808a09ded29fecf01237f3bc67e54` |
| 8 | `theorem` | [coe_mkFinSnocOfLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/coe-mkfinsnocofle.md) | 116 | `result-track:a4b1fbecf4e6aaef5da65c33918646abaa0ce7ed8d10f46d341c46daa2a4f505` |
| 9 | `def` | [finTwoProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/fintwoprod.md) | 124 | `declaration-track:9a68db4b47b8a0ace9e25dd3bf5c863bdf5fb907796948f6fc121916f87a2b77` |
| 10 | `theorem` | [finTwoProd_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/fintwoprod-zero.md) | 128 | `result-track:171c2900739cd50710da68512c9efe710e3cc1763d6aaef7748047552e764c10` |
| 11 | `theorem` | [finTwoProd_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/fintwoprod-one.md) | 132 | `result-track:ebbf5b69bb1c3349c40d8183d8de0c98677837aba972721a474cb7fd45b74cc0` |
| 12 | `theorem` | [coe_finTwoProd_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisFinPublic.lean/declarations/coe-fintwoprod-repr.md) | 136 | `result-track:d8b453e351ba3392f2237c6104f85608d7b0cd3211c126e11f5c957bf4d51036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b29e06d7f65e01d00af22ce683d4cec881988f924a546157a50f38a37101b013 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Fin/Variantbc1107b51b023f15ba6b116e921d72825e5fd28811d110becc324cfa9ebc2fb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
