# Verification target: Operator Norm Mul Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0431c3d66cb19d21428bdd6b0e3d656f78acfde",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0431c3d66cb19d21428bdd6b0e3d656f78acfde`.

Source path: `GRWTSK/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/mul.md) | 45 | `declaration-track:2b2acf040676bb902df12c63385531f7ad11da5d2f8d36853f740d58f476eb6c` |
| 2 | `theorem` | [mul_apply'](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/mul-apply.md) | 49 | `result-track:b3878f0545c7bdba53324c227e09328e50ba698a762ecec33f7d7e6030950e16` |
| 3 | `theorem` | [opNorm_mul_apply_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mul-apply-le.md) | 53 | `result-track:445aed42c1a77166db0c85f1980a9a07d311febcea18105ec974cc082002cbfd` |
| 4 | `theorem` | [opNorm_mul_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mul-le.md) | 57 | `result-track:08006086b331799efafa223e848271ad360d77f8459310b666c856344c678e96` |
| 5 | `def` | [Operator Norm Mul Namespaced](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/lmul.md) | 69 | `declaration-track:1a44d453a5ccf725b0f5c44ca2fecc1a93ef0689cd79e0582d53db33e0fde2c5` |
| 6 | `theorem` | [Operator Norm Mul Namespaced](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/coe-lmul.md) | 76 | `result-track:f5aeffbf27d5aebab4aa1ba8f20f656c81b836f9378e3c0c2cb6fd84e93903cb` |
| 7 | `def` | [mulLeftRight](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/mulleftright.md) | 82 | `declaration-track:a66ff0347b65d05c7ce3f11a2f17a39c6e3d9196da7ed03be76866168963a0f3` |
| 8 | `theorem` | [mulLeftRight_apply](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/mulleftright-apply.md) | 86 | `result-track:3dc2dea61675865d8395b0c140fb2ef4e4791e59d3a6ec723309c49abd744e6a` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mulleftright-apply-apply-le.md) | 89 | `result-track:35c2a50c825efbab0e7793d93b2b063be7377177532dc5fbe13a7f6b3a3f79d9` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mulleftright-apply-le.md) | 96 | `result-track:ea25c6e72c08a821b49308533544b89aa834ed3ad0cb522a26aa7222428dbc9a` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mulleftright-le.md) | 99 | `result-track:8f403790c637bf3226af6d6d1edb52f34615dc40185f5eb5b6ea25326a4ac3e7` |
| 12 | `class` | [Operator Norm Mul Namespaced](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/regularnormedalgebra.md) | 112 | `declaration-track:fc3114f55b23659853206dcc16c49bb849c835bbfa1480769afc840d973a81c8` |
| 13 | `instance` | [Operator Norm Mul Namespaced](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/instregularnormedalgebra.md) | 117 | `declaration-track:2b71c2703e18b13fed136da2280d9dff922d91ab678f2981fab642510d9e765b` |
| 14 | `lemma` | [isometry_mul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/isometry-mul.md) | 126 | `result-track:097f08c2c666a91af89bcb6b264be20f81b4a2836a866760d2011605bbd398ba` |
| 15 | `lemma` | [opNorm_mul_apply](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mul-apply.md) | 130 | `result-track:6084a366daf570b00d8a2115a1425d0ce25d0509b7b6d5d3c27812a6c748ec55` |
| 16 | `lemma` | [opNNNorm_mul_apply](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnnnorm-mul-apply.md) | 135 | `result-track:d5f67758034a9b8828139fe1d5411e2bb002cc29ab02ef27d0a62fa547637fc1` |
| 17 | `def` | [mulₗᵢ](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/mul-source-edition-2.md) | 141 | `declaration-track:c1f54164c99d0cb76214e52ec2b26264caef2bc62991c759af834aa1643f4443` |
| 18 | `theorem` | [coe_mulₗᵢ](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/coe-mul.md) | 146 | `result-track:07bb32f8f869cf25a490d3faada055064eee62c271ef91b87c6dee0cf587fef1` |
| 19 | `lemma` | [flip_mul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/flip-mul.md) | 155 | `result-track:6144bf44635cb781c96d6e1ee9a16534be30cf67c6bf38704bfb481faa76cf5b` |
| 20 | `def` | [ring_lmap_equiv_selfₗ](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/ring-lmap-equiv-self-source-edition-2.md) | 165 | `declaration-track:f7162a077720235818f8481e39f7c339718d9a5d52c34c5330eb609cc1a8d223` |
| 21 | `def` | [ring_lmap_equiv_self](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/ring-lmap-equiv-self.md) | 175 | `declaration-track:dc1d948761d8074614715c5ec36e1d5efe23eca265d908f5b9752e94a1e8e05e` |
| 22 | `def` | [lsmul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/lsmul.md) | 194 | `declaration-track:fd1b99313fadc808ced1dfdad1c7d0ca92bc44c2fe6d6c7a3f834539bd1ff860` |
| 23 | `theorem` | [lsmul_apply](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/lsmul-apply.md) | 199 | `result-track:8c65b6bab688ff1ab300ac233fef60288658ba7f11e8315a4a49c8331fed1361` |
| 24 | `theorem` | [norm_toSpanSingleton](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/norm-tospansingleton.md) | 204 | `result-track:c990a18259d15f46320d3762a0bf36663bcbc10dc97b79b1ab42d17361ec337a` |
| 25 | `theorem` | [opNorm_lsmul_apply_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-lsmul-apply-le.md) | 211 | `result-track:5f8ad5305c7e9ba854bb6d45fbd2feee6e6b2c6f9fa4289744fc4999ffd91159` |
| 26 | `theorem` | [opNorm_lsmul_le](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-lsmul-le.md) | 216 | `result-track:5125701c4396dc15c8004b0221dd649290d2ce046b769e7ee832b186b553aee2` |
| 27 | `theorem` | [opNorm_mul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-mul.md) | 240 | `result-track:fb31441a19c51448723dd3f296a025e24d6df03184579dc77aff2880f77d4b20` |
| 28 | `theorem` | [opNNNorm_mul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnnnorm-mul.md) | 245 | `result-track:d68bb49190dddd53dfb8d28d1a1e68388a03556d15aec0010c4764146a3e9183` |
| 29 | `theorem` | [opNorm_lsmul](../../../../FunctionalAnalysis/OperatorNormMulNamespaced.lean/declarations/opnorm-lsmul.md) | 255 | `result-track:98944b0fe698ddc9f9b0abad84244280afa3b509b8acc930c979db6d44556a59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f2605729fdf824269a7acc60d0ef6e3551ba6eb0b78c2c9a0f5127f35e09c2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean","GRWTSK/_verification/specifications/Analysis/Mul/Variantf243473a98d27f40084a86bcc6c8e42395678594ee6207d450e999c9f122d8ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
