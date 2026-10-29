# Verification target: Mellin Transform Namespaced Cpow Mul Of Real Nonneg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b9ec15830990f700c9e5dd190ee90ccf39262c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b9ec15830990f700c9e5dd190ee90ccf39262c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cpow_mul_ofReal_nonneg](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/cpow-mul-ofreal-nonneg.md) | 41 | `result-track:02a7a57922d4620b83291f09a7817ba74ca49cfd7ee2582d5263944ae1fbb75f` |
| 2 | `def` | [MellinConvergent](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent.md) | 63 | `declaration-track:74d01be9e638e608d868956454e71d5d8145f72bf965d642167229312ef6548e` |
| 3 | `theorem` | [MellinConvergent.const_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-const-smul.md) | 67 | `result-track:aa9d10ffd330c1cfbf6b215f45c75235c83b397e20ba684ec6b252f133581e64` |
| 4 | `theorem` | [MellinConvergent.cpow_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-cpow-smul.md) | 73 | `result-track:bb6c3eb7dd7295187e382f03cc9a3058c21d29e093e5e357916a79a0d83f32ef` |
| 5 | `theorem` | [MellinConvergent.div_const](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-div-const.md) | 79 | `result-track:6e592153a198475b55bdc6703f3c5e38bf328dcf52da7bc06084204edd3db820` |
| 6 | `theorem` | [MellinConvergent.comp_mul_left](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-comp-mul-left.md) | 84 | `result-track:bd786bc0c9736c1cd3ed09809e7d358e580c1fbd0d11ab1eae42ad955bb1d816` |
| 7 | `theorem` | [MellinConvergent.comp_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-comp-rpow.md) | 98 | `result-track:283a8a141ab29631ba4a183300f13c9b522ab03c6e3635e81e0defd47ac3af3e` |
| 8 | `def` | [mellin](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin.md) | 114 | `declaration-track:9e9b0c60cbcd7fdf1dcc4fcc8578f81617b8111fabb96ddfa0d7df900569064f` |
| 9 | `theorem` | [mellin_cpow_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-cpow-smul.md) | 119 | `result-track:a20225a6ce58385e91b3ab550bce88278d53ad23b88ef8dfe0a2a22e41501dbc` |
| 10 | `theorem` | [mellin_const_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-const-smul.md) | 125 | `result-track:70569c999ae0785adb9f11fe7cce56c4a49f0d929c010566310df282a43488ba` |
| 11 | `theorem` | [mellin_div_const](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-div-const.md) | 130 | `result-track:16c47ecc345ff88a9061efc473e8bd48d787380639854cd5d78d4e59a631a3b9` |
| 12 | `theorem` | [mellin_comp_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-comp-rpow.md) | 134 | `result-track:a7bf06615cf54e040bed89a6829422f23e63e27ad3a69d37f11e26917f303082` |
| 13 | `theorem` | [mellin_comp_mul_left](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-comp-mul-left.md) | 149 | `result-track:d9d0f06eb550765c8d758c93be04758fdde558a502698c39cb0e22f0c2561668` |
| 14 | `theorem` | [mellin_comp_mul_right](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-comp-mul-right.md) | 167 | `result-track:7d26b5bdded22cd1c03c44cc5b07ad124b2250b4faf8523833657c6fd9d56084` |
| 15 | `theorem` | [mellin_comp_inv](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-comp-inv.md) | 172 | `result-track:34191b842fcd0c919a3251175599599daccb9899d4f784a824ca716a6b2e91e4` |
| 16 | `def` | [HasMellin](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/hasmellin.md) | 179 | `declaration-track:a0877b36e814d724dcd3d071cc12c7b3837826e17b011cded8e5981e2e8a1df8` |
| 17 | `theorem` | [hasMellin_add](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/hasmellin-add.md) | 183 | `result-track:f616c9704e8d58ec1dc67c9a0ed91cb92459fdc1a32fc53de914c80a9e184926` |
| 18 | `theorem` | [hasMellin_sub](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/hasmellin-sub.md) | 189 | `result-track:b55590cad8cf00d4a70c8fb4e062da21959cfc6ca25bae0afecc173187352720` |
| 19 | `theorem` | [mellin_convergent_iff_norm](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-convergent-iff-norm.md) | 205 | `result-track:79329cebb0614b8a606cf0a457add24dd94d242657dcaff2003f55586131b3cd` |
| 20 | `theorem` | [mellin_convergent_top_of_isBigO](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-convergent-top-of-isbigo.md) | 219 | `result-track:11143fe7cac51f864cc5cc575a4b3035ef91589991414741f373e37e6f6730dd` |
| 21 | `theorem` | [mellin_convergent_zero_of_isBigO](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-convergent-zero-of-isbigo.md) | 246 | `result-track:629075ecad72a8674bbc528353707f982394e8a22e4493ace4a79a293e40bba0` |
| 22 | `theorem` | [mellin_convergent_of_isBigO_scalar](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-convergent-of-isbigo-scalar.md) | 279 | `result-track:7304544a533815dbb5c154d79f046e899a7b21848e9a00a794cc932d00e5bab3` |
| 23 | `theorem` | [mellinConvergent_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-of-isbigo-rpow.md) | 298 | `result-track:fda847e247e46346e161bd54a71aded68a260d896a0cf1bdd8e718c7766a40ff` |
| 24 | `theorem` | [isBigO_rpow_top_log_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/isbigo-rpow-top-log-smul.md) | 313 | `result-track:1311f3e6fafd195b3c9da74313a2a56888f5016b89fd7ea296a3bf9d207f5b06` |
| 25 | `theorem` | [isBigO_rpow_zero_log_smul](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/isbigo-rpow-zero-log-smul.md) | 326 | `result-track:fef08f0f36666e7ec8a196cb0f048006474b04885b53614a4a47a33c061f329e` |
| 26 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-hasderivat-of-isbigo-rpow.md) | 348 | `result-track:98c6f683d82981670512db6a3b9999e2fea4687db087260ed7b33694b0797ce7` |
| 27 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-differentiableat-of-isbigo-rpow.md) | 430 | `result-track:49a2bbf39ce041bf9c2672256bc23337d33dd1e06c59b683ee545d762c1cb705` |
| 28 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 445 | `result-track:f1cb59a015f76d702b5e376b92224c01545c26cbdc58b49d6b53c662e87b99c5` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 455 | `result-track:0b3b660f99878b719308315e888964e03051458adb7b17897db4119030432eb4` |
| 30 | `theorem` | [hasMellin_one_Ioc](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/hasmellin-one-ioc.md) | 473 | `result-track:537ec732f3296359a321e6d4bd787a8c675ff529c3f372254d707643068df906` |
| 31 | `theorem` | [hasMellin_cpow_Ioc](../../../../FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/declarations/hasmellin-cpow-ioc.md) | 489 | `result-track:2746a2ef9ae5f9708a7f8f5420d99b1be0f794b5a22ad60bf1f518b85fd056fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a092f9057541799f3e7698060afa20021338f47e367855b67b7969c53898c892 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
