# Verification target: Pos Part Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1d22aa56e9317143d3dc58f51a2e9acaad0a196",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1d22aa56e9317143d3dc58f51a2e9acaad0a196`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/instance.md) | 36 | `declaration-track:32417e9883c82f71d9ae1457ed85ebfbb15deefd7e48a14c0b69345d93cf3f05` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:7d575ea142008040dc4bf8326660b8252d1051a3ae2347ea00f6fbbfbd0123fd` |
| 3 | `lemma` | [posPart_def](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-def.md) | 46 | `result-track:6e91d1824bcf8e4c776e25844652584ad305c2bd24ce981916eecdf0790bf08d` |
| 4 | `lemma` | [negPart_def](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-def.md) | 48 | `result-track:a8ae982a6a829827c7d72703a9d185450da5ec59a86072a4310db3e8198a237a` |
| 5 | `lemma` | [posPart_zero](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-zero.md) | 51 | `result-track:52b64842c63bb855cc72ddd189c27b708eb361fca9e4a217d99bad53d5d3c797` |
| 6 | `lemma` | [negPart_zero](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-zero.md) | 54 | `result-track:a9bf5950c6ca3de1b8ca48fb7d853f621e8b71141eda76ae2a982e41808d3af0` |
| 7 | `lemma` | [posPart_eq_zero_of_not_isSelfAdjoint](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-eq-zero-of-not-isselfadjoint.md) | 56 | `result-track:466e241da99f9e8263b3ffe98452ae0fab35fa2fb0bbd26abbec9598207d2bc5` |
| 8 | `lemma` | [negPart_eq_zero_of_not_isSelfAdjoint](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-eq-zero-of-not-isselfadjoint.md) | 59 | `result-track:4ea282a798d140d865df2e4fba6bd0aca55f99831f4ef3e9af43da27fc554a2b` |
| 9 | `lemma` | [posPart_mul_negPart](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-mul-negpart.md) | 63 | `result-track:7b326c94525872b21aba3c079ef2dfd11f8520ac8b11c83a12875642f006c932` |
| 10 | `lemma` | [negPart_mul_posPart](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-mul-pospart.md) | 73 | `result-track:1b115ba6e06c9ef381dd56fe76abf6b715ce29eca815c48a3ab32ca1e6d2f243` |
| 11 | `lemma` | [posPart_sub_negPart](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-sub-negpart.md) | 82 | `result-track:dce29ffda0a14ebab3adb42f4e31e8b66ee932c4276ed46e5f7fdbf2c12c1814` |
| 12 | `lemma` | [posPart_neg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-neg.md) | 94 | `result-track:426209f9fc675ae1a076875a96b731ecd1974703056719fe34acdafdac80e89c` |
| 13 | `lemma` | [negPart_neg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-neg.md) | 103 | `result-track:727e1d8e8887b1a78f8a2b913d451068b7499af72d06f51969ef48f5b8a7c14f` |
| 14 | `lemma` | [posPart_smul](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-smul.md) | 111 | `result-track:13623989c19ed4f7dfcbfa59bf4406b1e377f7151a772504061feadd8d27b61f` |
| 15 | `lemma` | [negPart_smul](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-smul.md) | 124 | `result-track:34a58b75e6f7d26bf3a7d2aa9edd926fd5f63a70352642f55c980a2f6e15db3f` |
| 16 | `lemma` | [posPart_smul_of_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-smul-of-nonneg.md) | 127 | `result-track:9dd6173b05f2552afc6e4aeec1b1885022b381909c4752562e80beaf3daeb4b2` |
| 17 | `lemma` | [posPart_smul_of_nonpos](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-smul-of-nonpos.md) | 130 | `result-track:b68f76123b1428696c8f5ae78c976a1681dba4ca7e4b9229d72cb87919393355` |
| 18 | `lemma` | [negPart_smul_of_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-smul-of-nonneg.md) | 134 | `result-track:cad94b6b7fd4b7bdc8b7c0096d07bbcbd8db98b1b092ff9010456fcc2736e750` |
| 19 | `lemma` | [negPart_smul_of_nonpos](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-smul-of-nonpos.md) | 137 | `result-track:ea325ce893f85fe8ec3c18eeb95887d637f8e3569862602432baabdeb78d75f2` |
| 20 | `lemma` | [posPart_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-nonneg.md) | 147 | `result-track:73a5bc5cb73b556cc58b763ff15132fd1fbe935fe5a1774eb07ce0114a6ee544` |
| 21 | `lemma` | [negPart_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-nonneg.md) | 152 | `result-track:724eadbbbc68a16b7980a7a877027e88a54e7fe73814fdcc5decfde9a7ecbcd1` |
| 22 | `lemma` | [posPart_eq_of_eq_sub_negPart](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-eq-of-eq-sub-negpart.md) | 156 | `result-track:b932ec242ecbd62b7492c40b046ef97b75f3da9e0689764145b99d4086c00d3a` |
| 23 | `lemma` | [negPart_eq_of_eq_PosPart_sub](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-eq-of-eq-pospart-sub.md) | 162 | `result-track:072f863e5efafeb4ce1de2ce97a64e27f2e9759b156864459b82abed8a9f2869` |
| 24 | `lemma` | [le_posPart](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/le-pospart.md) | 168 | `result-track:2d4596abd129ba367827f0d43d561c7fdf5f5fc5a1bd1638333f8ad976cbfa99` |
| 25 | `lemma` | [neg_negPart_le](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/neg-negpart-le.md) | 171 | `result-track:097e5d3b76ac40534e6fdfda1d4c9c9f295ffb7047fa0a1abd352c206815e745` |
| 26 | `lemma` | [posPart_eq_self](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-eq-self.md) | 177 | `result-track:33bea5167576d6d784a6fa3bb8bee61197d4694d5c65d86b12d97271a55a0a6d` |
| 27 | `lemma` | [eq_posPart_iff](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/eq-pospart-iff.md) | 185 | `result-track:d8c20b219ce31cb88053db60d33c39430935cf889d583cfafc69b6ba272d408a` |
| 28 | `lemma` | [negPart_eq_zero_iff](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-eq-zero-iff.md) | 188 | `result-track:b0fa3a2251959c99760b1352b0aa7f6ceb83892a0309bb531afaafb9650f59e5` |
| 29 | `lemma` | [negPart_eq_neg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-eq-neg.md) | 194 | `result-track:5ba346bbe6053e017394c392f32f7e13d77a1f13dc093c31d7b05eba4848a4ad` |
| 30 | `lemma` | [eq_negPart_iff](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/eq-negpart-iff.md) | 208 | `result-track:03b59b025bd2f9589eb5a1fb7b57ffd36f7c61dba83cccb8675a3130aa69c305` |
| 31 | `lemma` | [posPart_eq_zero_iff](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-eq-zero-iff.md) | 211 | `result-track:ca8e5ef9d1f95f255df273709fa841f7111e9c3695e724ba4906b29851780452` |
| 32 | `lemma` | [posPart_negPart_unique](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-negpart-unique.md) | 227 | `result-track:a450e28d38516ee20659d3be4f993f9492d36e2e80cd2a46bea9f9fa1edce7fe` |
| 33 | `lemma` | [posPart_one](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-one.md) | 330 | `result-track:8ad46428a97c5544e8aca7d2c0cba871ff96da92fbb3beacf867fc36df371555` |
| 34 | `lemma` | [negPart_one](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-one.md) | 335 | `result-track:0a7493308e67ec91ceaaf25acc1b2bcddcd66d2c3b461c8c18cb941e0f06211d` |
| 35 | `lemma` | [posPart_algebraMap](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-algebramap.md) | 340 | `result-track:ca496b235aa91699d1a710ef3f3aad9bcb9b14f8066efb004ca8492873e9bed0` |
| 36 | `lemma` | [negPart_algebraMap](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/negpart-algebramap.md) | 345 | `result-track:b5e690a2fc9400a9a438906c9b42ea98758c37848ed657b1480fd5deeea076e6` |
| 37 | `lemma` | [posPart_algebraMap_nnreal](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-algebramap-nnreal.md) | 351 | `result-track:1acd1e9e77486f89c5d77460161c27eb688060305d5320a57f6f8b6c09349cfb` |
| 38 | `lemma` | [posPart_natCast](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/pospart-natcast.md) | 357 | `result-track:4719cd1f99b853a66040c01246c516c772ce684b4300807600612735abd21f22` |
| 39 | `lemma` | [CStarAlgebra.linear_combination_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/cstaralgebra-linear-combination-nonneg.md) | 373 | `result-track:4cb8ae50bf6d075ec32e143997cf768f57689121c0476325b2af516511366d87` |
| 40 | `lemma` | [CStarAlgebra.span_nonneg](../../../../SpecialFunctions/PosPartBasicNamespaced.lean/declarations/cstaralgebra-span-nonneg.md) | 381 | `result-track:1cc6e5c85245e69d047546c96a74f47768b4a134cc7f2bf3de01a5a85822a5f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0083233eb500ffb4e907a4fedf16e6ce91b566e81e1b3e4c7c8eff4867846306 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variante6c4adf5cd3427d38299cb42390f0acf5852ce6bf004e2040af605f8fe3485c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
