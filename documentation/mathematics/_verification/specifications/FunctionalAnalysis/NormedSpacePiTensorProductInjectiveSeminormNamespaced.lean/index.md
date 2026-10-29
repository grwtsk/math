# Verification target: Normed Space Pi Tensor Product Injective Seminorm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd10e61202f69053042a811269c8d34d3b7b161",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd10e61202f69053042a811269c8d34d3b7b161`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.PiTensorProduct.ProjectiveSeminorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualContinuousMultilinearMap](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/todualcontinuousmultilinearmap.md) | 103 | `declaration-track:6f07d53813093a9e7e22b0b8dbb44c172523a93f8cf94e95b3b82f978684d99c` |
| 2 | `theorem` | [toDualContinuousMultilinearMap_le_projectiveSeminorm](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/todualcontinuousmultilinearmap-le-projectiveseminorm.md) | 125 | `result-track:aaf608d57a957aca0029b14364f14d465857f3526572ea339e410a25e2cc768a` |
| 3 | `lemma` | [dualSeminorms_bounded](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/dualseminorms-bounded.md) | 140 | `result-track:ab5f4316ef1428d9a7b5fa68be6ea8f8bd18f134c7bc954617c043653af46fb0` |
| 4 | `theorem` | [injectiveSeminorm_apply](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/injectiveseminorm-apply.md) | 153 | `result-track:be539607d9f0e01f9679be452aee7479635ae890a0272ac54fd29603504718c0` |
| 5 | `theorem` | [norm_eval_le_injectiveSeminorm](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/norm-eval-le-injectiveseminorm.md) | 161 | `result-track:70c92afb10460f8c8494bcdd1799e787d2fd27dcaaf18a49e7a9d4c10270fd29` |
| 6 | `theorem` | [injectiveSeminorm_le_projectiveSeminorm](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/injectiveseminorm-le-projectiveseminorm.md) | 214 | `result-track:eacf65dc2ae25036eac36154edb6086c22e72feabb6c75ed77f924e1beb16ee0` |
| 7 | `theorem` | [injectiveSeminorm_tprod_le](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/injectiveseminorm-tprod-le.md) | 230 | `result-track:aa29938e4be8f2d014fc56c911f0ab9e2547f8ab39eb93c893ce385e66b718a8` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/instance-source-edition-2.md) | 234 | `declaration-track:f1c243fbc16c557d49260204610a6128ff82c44a204c0134a220d9e88004856c` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/instance.md) | 237 | `declaration-track:18cda8f830df7dbb70bd36f012785eb53353a5f34345c15497bffa0d95ad9ebb` |
| 10 | `def` | [liftEquiv](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftequiv.md) | 249 | `declaration-track:661d7a9bee63063c56cb51d66cccce2e38942978db489d420421d4c717264da8` |
| 11 | `def` | [liftIsometry](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftisometry.md) | 274 | `declaration-track:0f2ab16f204c851b5dc6fd166beaa6c835975d6cbf66a41b7ac2d6d43773e5e7` |
| 12 | `theorem` | [liftIsometry_apply_apply](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftisometry-apply-apply.md) | 288 | `result-track:bd750c23ef543959fddf42cac99f35c2e073d8e2e4a54ba6e87da71491494598` |
| 13 | `def` | [tprodL](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/tprodl.md) | 297 | `declaration-track:e1fb60f24f016e341d1242ea1eaadbdbcba19e56f5fd9218a89481750cca79cd` |
| 14 | `theorem` | [tprodL_coe](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/tprodl-coe.md) | 301 | `result-track:e54584f22796d8ae751d66c066acb2faef95411d1e41da972ad53f45a1357f4c` |
| 15 | `theorem` | [liftIsometry_symm_apply](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftisometry-symm-apply.md) | 306 | `result-track:4bf264dac749d662d13744e9af4866ff38ec1895c4922ac4488cb75c206fcc22` |
| 16 | `theorem` | [liftIsometry_tprodL](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftisometry-tprodl.md) | 315 | `result-track:d2c46541bbd56f78463dad5ceba25dd97dd4a80696d6ff1c76e1281e94739711` |
| 17 | `def` | [mapL](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl.md) | 336 | `declaration-track:4e1251e67becc5360d915ff6f61997ced173ed179d9e425a8580dd776a4d9482` |
| 18 | `theorem` | [mapL_coe](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-coe.md) | 340 | `result-track:7827fde98f9bcabed1a9c91e8107a0a4ac5a6cb13cefdc74a25ac888f032d1d5` |
| 19 | `theorem` | [mapL_apply](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-apply.md) | 347 | `result-track:febc5c027e46dc931f03c8b840606fd187b05f65c2c106f88a939e6075b046ff` |
| 20 | `def` | [mapLIncl](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/maplincl.md) | 359 | `declaration-track:664cc6dee710012c14a438016531bdd4c1f4203b210f7b0a418f86f97b4d0c3f` |
| 21 | `theorem` | [mapL_comp](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-comp.md) | 362 | `result-track:4e41bacba640557ff384e0cf1b9969ae5e2471c697d77deabb21022e53e59f01` |
| 22 | `theorem` | [liftIsometry_comp_mapL](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/liftisometry-comp-mapl.md) | 368 | `result-track:3c92d2221c862f1fdf8004cf3e2a2b4ace076958b5b4b8d831dbbad96f05ebe9` |
| 23 | `theorem` | [mapL_id](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-id.md) | 378 | `result-track:317d0931e8ae2516dbbc030f79e2d505f2d032fe6f1a6bf383c2003d46b71815` |
| 24 | `theorem` | [mapL_one](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-one.md) | 385 | `result-track:84c445f0c54c91e2ef2b37fbb5b5cdf6e3c7c94ea1f6b3ca1c7801da6e75d18e` |
| 25 | `theorem` | [mapL_mul](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-mul.md) | 388 | `result-track:2e66d5af8775fcd293cf1a0e8493309492fd19f3c54df6ac3c44addec6cbef15` |
| 26 | `def` | [mapLMonoidHom](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/maplmonoidhom.md) | 394 | `declaration-track:df6f40528f52aaa19dd27adc2a3a4ad92f97598340294f63ab4a3c7e523be4c9` |
| 27 | `theorem` | [mapL_pow](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-pow.md) | 400 | `result-track:2b7744a705cdcecea9a9ed964cab374dcbd5f6049ce9e952df8db8c951fe7fef` |
| 28 | `theorem` | [mapL_add_smul_aux](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-add-smul-aux.md) | 406 | `result-track:2d6ab334c558b3f46fe1e54679033d241d7da090f7b11bb3762e071f5ea2a9ed` |
| 29 | `theorem` | [mapL_add](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-add.md) | 420 | `result-track:6dc2872f0d5ddb3a446a7960a1d2783b026ea50ff9d92e90b35869a4806fcb8f` |
| 30 | `theorem` | [mapL_smul](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-smul.md) | 427 | `result-track:1ddc853f8f092417384bfd85f78e4065ccaa96f4621e60ec6d02f5de620b2f10` |
| 31 | `theorem` | [mapL_opNorm](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/mapl-opnorm.md) | 434 | `result-track:163addefa2f9556f31e74851e886f9c09cc98153c62e145aa25df1aac87e0237` |
| 32 | `def` | [mapLMultilinear](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/maplmultilinear.md) | 454 | `declaration-track:c5c8e2e0947d3394a46cfef0908fc37dd166473697602669877d8fd1694ba1df` |
| 33 | `theorem` | [mapLMultilinear_opNorm](../../../../FunctionalAnalysis/NormedSpacePiTensorProductInjectiveSeminormNamespaced.lean/declarations/maplmultilinear-opnorm.md) | 464 | `result-track:c3b2dc623f486af01159d5ddbc397e6f0541a27b35748c4509f3865ff5469ec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ff70cd421573dbee3866fc65c1af28abd31089748066b5024c2686e3b2b7503 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantdb82b57422b0d3b32af67be54d06fcb680834bde872a5c678b0023de7dcaeca7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
