# Verification target: Linear Algebra Basis Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8981744fc52981243bc275ea79f5ad380c24d608",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8981744fc52981243bc275ea79f5ad380c24d608`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [repr_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/repr-range.md) | 46 | `result-track:847253dad32697e10e65b4361fc4eac4e4c0613bd5e4a4fec7a43b54e356019f` |
| 2 | `theorem` | [mem_span_repr_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mem-span-repr-support.md) | 49 | `result-track:0eeb1e39c19d112d6015587cc7908182532616ffe87735ac23b144a64225dd48` |
| 3 | `theorem` | [repr_support_subset_of_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/repr-support-subset-of-mem-span.md) | 53 | `result-track:17b0211a2785f0c6992dc693cdbf4478e6da2ee9038f80e81f531785edaca1d5` |
| 4 | `theorem` | [mem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mem-span-image.md) | 58 | `result-track:e73ee5cd673a37dee39361fd783260913c1ef1bb368ff2e2a69ac619ba52f8fd` |
| 5 | `theorem` | [self_mem_span_image](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/self-mem-span-image.md) | 63 | `result-track:e6a674bcaa2950ed53f33c62f05cdef6ce8e2426f951ab3ddf6bd88d8ff2ad96` |
| 6 | `theorem` | [mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mem-span.md) | 67 | `result-track:2e8166ab019bc56721ab75d34acd24bab70eef0ac0fcffe1117998f8d5959a9f` |
| 7 | `theorem` | [span_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/span-eq.md) | 71 | `result-track:12358d203e8e776ffc8f09c6b6696717193b52901f4f84536999ce2bdb20e94b` |
| 8 | `theorem` | [index_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/index-nonempty.md) | 74 | `result-track:104903bc3293d5f143db876fc75678543b90ee0aed1cf9e64d5110fb5c85858c` |
| 9 | `theorem` | [linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/linearindependent.md) | 79 | `result-track:26716803e0551c9dad553c334dd849d3c3f8c65c7c07e06b4105ddb720b47fe4` |
| 10 | `theorem` | [ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/ne-zero.md) | 83 | `result-track:da71da6c041dfd53312588838a74c424b8d4e4d6b7870f41ae910765ebba7679` |
| 11 | `def` | [mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk.md) | 95 | `declaration-track:e039e9900af98dd58a9132e38a6b75c35725c6151242e70002b68acb1de1acab` |
| 12 | `theorem` | [mk_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk-repr.md) | 103 | `result-track:d85c02248f50287b90f9bb9715f1c3c4c72e4bc1cdf26844f1b58e385e9e998d` |
| 13 | `theorem` | [mk_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk-apply.md) | 106 | `result-track:905def627f2a468a211c2134d1180bec0b67db279d4daedaa69653e27c0b10b1` |
| 14 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/coe-mk.md) | 110 | `result-track:25eae06449dded2e00c49cfea7d2a23cfd8ad8ebe1811f5ddbf908f7fea370c5` |
| 15 | `theorem` | [mk_coord_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk-coord-apply-eq.md) | 123 | `result-track:8c1f58c2ea56d6cb94a011006d60f86b2d95f256d8a0a76b39d1b0e94504d504` |
| 16 | `theorem` | [mk_coord_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk-coord-apply-ne.md) | 128 | `result-track:dddd65b1245058a8eaeb5acea344b65f4f79122948951b16b5fbd65c6cae85ba` |
| 17 | `theorem` | [mk_coord_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/mk-coord-apply.md) | 134 | `result-track:2e80f8d86bc3c66816cc82334faa9d1c598363d992967fa099c327c2eb0824b7` |
| 18 | `def` | [span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/span.md) | 147 | `declaration-track:b7b7fd90e91e71439a73e03ad0225f9fc496b478232eba81baab5fd88df5e299` |
| 19 | `theorem` | [span_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/span-apply.md) | 167 | `result-track:6efe18b7551a8ddb85debbfec5b802a5d2ed9571797cf11dc4efa84bc85e0cb7` |
| 20 | `theorem` | [maximal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/maximal.md) | 174 | `result-track:606a23728eac9c10f5d9fe23439091e71e18b75218e44ef8fdac00b5809d6149` |
| 21 | `instance` | [uniqueBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/uniquebasis.md) | 198 | `declaration-track:10cb710288467c19fba9fd39359e3473170bdf750e797fe9623dc47bcd633572` |
| 22 | `def` | [singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/singleton.md) | 206 | `declaration-track:925e396c683099e11dfa2a4e8f5b516eee13e1a4a13c29fd5c41636db6774c21` |
| 23 | `theorem` | [singleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/singleton-apply.md) | 216 | `result-track:a30625394854be3218574983caa6c826b4364587da81416c64608657a259b6d1` |
| 24 | `theorem` | [singleton_repr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/singleton-repr.md) | 220 | `result-track:12b876ce8fbba9023c032ed010d556de5f1d76b4d5a130d773bece445744f307` |
| 25 | `def` | [empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/empty.md) | 230 | `declaration-track:7ad31f17de4a6f7e10a9bdf80f9cb52f5d6fe04a34f08aacae77edce72445dcb` |
| 26 | `instance` | [emptyUnique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/emptyunique.md) | 233 | `declaration-track:71476d66c7f653cc43646cc9d88388ef98233a8a4f6b013591899d5281f29d2d` |
| 27 | `theorem` | [noZeroSMulDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/nozerosmuldivisors.md) | 242 | `result-track:3bdba36165fcb4e3794b5bb86b8ab3e984d5599780b048461f91fc01cd7ee6e1` |
| 28 | `theorem` | [smul_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/smul-eq-zero.md) | 252 | `result-track:f96e97b7c84e1838d0fe4a094221a35c22b5c3878b514962c513bb7f8a3fec7e` |
| 29 | `theorem` | [basis_singleton_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraBasisBasic.lean/declarations/basis-singleton-iff.md) | 260 | `result-track:f280915ad1b66be9f72f381d6a84e20bf98c188ffc3331dce832b4f394ea7994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4df877dd6d0386e550e0270e34f21f5d5ce1798be2fe30838e404ed291e1888 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantb6b9493c9b767403b2b6e9161d5784316705cdab09360d7977c66637c4a95664.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
