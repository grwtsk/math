# Verification target: Direct Sum Decomposition Decomposition Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bf19987cf467d7477e23b894f253f086cec4ca5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Decomposition/Variantbef55e94a5941745e2658ceca6dba00046952ce0be4ee5315af3af84c1f31f5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bf19987cf467d7477e23b894f253f086cec4ca5`.

Source path: `GRWTSK/Algebra/Decomposition/Variantbef55e94a5941745e2658ceca6dba00046952ce0be4ee5315af3af84c1f31f5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Decomposition/Variantbef55e94a5941745e2658ceca6dba00046952ce0be4ee5315af3af84c1f31f5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Decomposition](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposition.md) | 60 | `declaration-track:875fd8a9e85baddee0baf9388607ab51652a0fae42e0736a7d3a2b1ad13d4b3b` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/instance.md) | 67 | `declaration-track:1b376b22df19da505bd383d74271c607e6601f2e39cd73b6d92017a8b0707511` |
| 3 | `theorem` | [Decomposition.isInternal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposition-isinternal.md) | 76 | `result-track:442175f343f7e94c6cf3155ce65fd7a4306d05137943dc012fe5edaa54e9d3bf` |
| 4 | `def` | [decompose](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose.md) | 82 | `declaration-track:7f70d8926cc1f243768439721a6fd3362799737160ffc6cf67704367609f68a8` |
| 5 | `theorem` | [Decomposition.inductionOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposition-inductionon.md) | 89 | `result-track:93cfa1adfd500981ec31815592f95e3c8795139cc854d85057f7045a5acf407e` |
| 6 | `theorem` | [Decomposition.decompose'_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposition-decompose-eq.md) | 108 | `result-track:8abcabfce7cfa84dfcef2dd77baec85a71618b2e9540333a65a17d62daebfe45` |
| 7 | `theorem` | [decompose_symm_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-of.md) | 112 | `result-track:593213a27e1b0e0c9681975b2a32875433fe9d37de312a6b6d8c6b946d1c51bc` |
| 8 | `theorem` | [decompose_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-coe.md) | 117 | `result-track:5ac5a5c678b7e24637d2b9410ce67fcaf584d8f8772a618148148df0fd2481d1` |
| 9 | `theorem` | [decompose_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-of-mem.md) | 121 | `result-track:1a3ddd41ed908766a25ceb1bea9a2dcf3ecb64bb2d5bc48f200d6db8d951092b` |
| 10 | `theorem` | [decompose_of_mem_same](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-of-mem-same.md) | 126 | `result-track:7c37eff193c9052ec545c96711542517b5183306814dd695531816de06f07ea9` |
| 11 | `theorem` | [decompose_of_mem_ne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-of-mem-ne.md) | 130 | `result-track:aeb3706083b2df9c233e27263b1f16c422eb1ea9367acb1a51514208554452b6` |
| 12 | `def` | [decomposeAddEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposeaddequiv.md) | 138 | `declaration-track:75254a27377bbb332ce1f43657de27248ad99fa2739b1adcbadd44c317767823` |
| 13 | `lemma` | [decomposeAddEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposeaddequiv-apply.md) | 143 | `result-track:ba51a509ff1c48e6b4e55c748ab72ec8932dcdc991aa480f31d4841b25b4bfec` |
| 14 | `lemma` | [decomposeAddEquiv_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposeaddequiv-symm-apply.md) | 147 | `result-track:647727837457cc70002094fdbcf4e2b266ab3a792b44621f7ed1d6533b76c702` |
| 15 | `theorem` | [decompose_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-zero.md) | 151 | `result-track:441cc15adf278bf4e31b1721209aec490b917ab2a4508a186d6023ec5df8d577` |
| 16 | `theorem` | [decompose_symm_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-zero.md) | 156 | `result-track:9a6f15eafc463a5f22333afd97b2ce879b1fb2b1b2db6c03358b6f7e0f2e015f` |
| 17 | `theorem` | [decompose_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-add.md) | 161 | `result-track:2a4a1045b55930168c4ee42bbe32c50883bd2155db298b33fc97a8785168f7fd` |
| 18 | `theorem` | [decompose_symm_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-add.md) | 166 | `result-track:608c9a233356ce269e61848ad254e18ed46aab81b3c6a9ab441d8acba3dc42a3` |
| 19 | `theorem` | [decompose_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-sum.md) | 172 | `result-track:ad181c3d25179cda360eb5031a10e7167dbadf1fc3d828e20fe41be189c030e6` |
| 20 | `theorem` | [decompose_symm_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-sum.md) | 178 | `result-track:4e8233745adaf8d0d82b7e57bdd166d7f67056c073a44cce0082a615b04eeffb` |
| 21 | `theorem` | [sum_support_decompose](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/sum-support-decompose.md) | 183 | `result-track:c13770066d0ed27d00593056c1c412f0590423d7670625f01fc91c85752e968e` |
| 22 | `instance` | [addCommGroupSetLike](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/addcommgroupsetlike.md) | 200 | `declaration-track:14cb323459e75f9981c5254a81226a198f672e0fbaf4ed907195257a3372d94f` |
| 23 | `theorem` | [decompose_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-neg.md) | 213 | `result-track:dd2220f3f7c69095ab1f986f190686322bdef2b9e94d841ecfbc6f7d608413f1` |
| 24 | `theorem` | [decompose_symm_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-neg.md) | 218 | `result-track:1cfae2d534fff27fa4aa66ab46423b2cdb572c0fd7e3b1f45b625e708a7729a7` |
| 25 | `theorem` | [decompose_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-sub.md) | 223 | `result-track:5bc9cd30a36e246d3c6fe5e028124c6ebcf2767438c0cd1e63c6abdde1fc399d` |
| 26 | `theorem` | [decompose_symm_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-symm-sub.md) | 228 | `result-track:5a5e081b133013e5b01a57a5889b19b9e0d6ffb66b73d421e7409c625a1eef79` |
| 27 | `def` | [decomposeLinearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decomposelinearequiv.md) | 246 | `declaration-track:f3b3e56fbb50c5c4f403e03d169ce14e95cca4f2a67a996f79f97f1453b2458b` |
| 28 | `theorem` | [decompose_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumDecompositionDecompositionNamespacedSourceEdition1.lean/declarations/decompose-smul.md) | 252 | `result-track:483a11ac7677a80b728963759edc393e4e2cf8b8c7ba7a858b85414f46e4aaef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=131d4b752dd08bbdf2ccba0b82c4be34c5953470cd0c87634982f89cf951291d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Decomposition/Variantbef55e94a5941745e2658ceca6dba00046952ce0be4ee5315af3af84c1f31f5b.lean","GRWTSK/_verification/specifications/Algebra/Decomposition/Variantbef55e94a5941745e2658ceca6dba00046952ce0be4ee5315af3af84c1f31f5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
