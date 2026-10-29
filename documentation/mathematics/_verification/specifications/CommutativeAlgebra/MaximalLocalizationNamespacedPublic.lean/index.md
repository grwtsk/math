# Verification target: Maximal Localization Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80d58cf12b750ae32b0506e7059aa90ffc482d68",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80d58cf12b750ae32b0506e7059aa90ffc482d68`.

Source path: `GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iInf_localization_eq_bot](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/iinf-localization-eq-bot.md) | 43 | `result-track:6024b87df068c472033c16febcebb4ea864aad9f5f753e8fe030ffbddc0e4b53` |
| 2 | `theorem` | [iInf_localization_eq_bot](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/iinf-localization-eq-bot-source-edition-2.md) | 68 | `result-track:8614061f1f1bc7866ba01e3a14a83e33520934d81054bc60cda01a9643802827` |
| 3 | `abbrev` | [PiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalization.md) | 78 | `declaration-track:0faea86cf10794c24115d52e25c65de900c291cb3aa94fe082df4fbe6bf983c2` |
| 4 | `def` | [toPiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-source-edition-2.md) | 82 | `declaration-track:e8325054595d70549ed87a4818de244dfdd90b07c803f509eb6fb44d3a1f455a` |
| 5 | `theorem` | [toPiLocalization_injective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-injective.md) | 84 | `result-track:5075d4977f821bb45a2bb7baf147e83ff528f80ebd6aafa724c01910d817d182` |
| 6 | `theorem` | [toPiLocalization_apply_apply](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-apply-apply.md) | 91 | `result-track:f9cd66f0990689d53870f80035423eb128652c12418cc3f8420f31cc5dfa14bd` |
| 7 | `def` | [mapPiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-source-edition-2.md) | 97 | `declaration-track:d88b497f712cf6241586dc2cc4f680d366e7bcf3d2bc314a7c4372c6b1e3e399` |
| 8 | `theorem` | [mapPiLocalization_naturality](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-naturality.md) | 101 | `result-track:3f621a0f9389f72013f03af6dfd855539698336a60deede355813b29ef2b4c8b` |
| 9 | `theorem` | [mapPiLocalization_id](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-id.md) | 110 | `result-track:0e2c280e6072e8b7d60979aa33c9d309aeb18c1f8f7483a738373643ddf426d4` |
| 10 | `theorem` | [mapPiLocalization_comp](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-comp-source-edition-2.md) | 113 | `result-track:80470b6d8883953fa3ca5a97f0c6ba630b004e2e7c8f4659062cef3e23421580` |
| 11 | `theorem` | [mapPiLocalization_bijective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-bijective.md) | 119 | `result-track:259fe0b57bfc7f6c75bbad3c79eb23994461b8f31128677bfdae09f538ace488` |
| 12 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-not-surjective-of-infinite-source-edition-2.md) | 133 | `result-track:9401a81e7e32c7334da825ddc46579f20bc4752ab7810eef99bf88e76026a2b2` |
| 13 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/finite-of-topilocalization-pi-surjective-source-edition-2.md) | 151 | `result-track:70fc1f1a2f59252f69ce5e44085dcb2847da257631208f1bac97105fad647b9a` |
| 14 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/finite-of-topilocalization-surjective.md) | 160 | `result-track:3be95761e2544d3ad7f56e1bcb434f19a096e7c4901941fcce3f32caddcf396c` |
| 15 | `abbrev` | [PiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalization-source-edition-2.md) | 174 | `declaration-track:1adfb080dbe4a78ddc24b45e79d5a52e9d0ab75ed0bee4e64ca4aa48f707ada5` |
| 16 | `def` | [toPiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization.md) | 178 | `declaration-track:0afee7b0641e4bd29f3a82b710a7c7af3891543814bdf7c81c8fb3268add6517` |
| 17 | `theorem` | [toPiLocalization_injective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-injective-source-edition-2.md) | 180 | `result-track:bfe5f875c4b0b6a4487a54bf36bf83be40547034617740482ca43042ca2fbd9e` |
| 18 | `def` | [piLocalizationToMaximal](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalizationtomaximal.md) | 186 | `declaration-track:e830f9b6d100b00e774ab320b90d318e5d215327b6a471e6ef11cb68b81329bf` |
| 19 | `theorem` | [piLocalizationToMaximal_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalizationtomaximal-surjective.md) | 189 | `result-track:5f6ee9cc398de8a7de5a2e672ec347df69d7fef6329dd30101e33e4434b52eb4` |
| 20 | `def` | [piLocalizationToMaximalEquiv](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalizationtomaximalequiv.md) | 196 | `declaration-track:01358b11f3b00dda8854846eafb416fd3be0e1de2af5a0d8bbdd649f9d7f5cca` |
| 21 | `theorem` | [piLocalizationToMaximal_bijective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalizationtomaximal-bijective.md) | 201 | `result-track:d448d3a5f39e1f2c67466102144fc1ecc6edaff9aa1647fc36a72db72fdab36f` |
| 22 | `theorem` | [piLocalizationToMaximal_comp_toPiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/pilocalizationtomaximal-comp-topilocalization.md) | 205 | `result-track:44b9831df0faee03f0f611ddefad8907d7a006c29f416e894a5c1accc1537211` |
| 23 | `theorem` | [isMaximal_of_toPiLocalization_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/ismaximal-of-topilocalization-surjective.md) | 211 | `result-track:d805426c98144a72710a891826a403888d0525a72082993fb64fe5323d386ee1` |
| 24 | `def` | [mapPiLocalization](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization.md) | 228 | `declaration-track:9488aaab4ea1b76fb81f4b2d0a64a35bf5a714455675a193226dd2100ee1f684` |
| 25 | `theorem` | [mapPiLocalization_naturality](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-naturality-source-edition-2.md) | 231 | `result-track:697492423e4d2d58a32d69bc4f5f5dfa754d1c560f34e2512a2b1e96d12b3f92` |
| 26 | `theorem` | [mapPiLocalization_id](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-id-source-edition-2.md) | 239 | `result-track:e99b085093c482f3bc1f66944a37ab6998efdf2e8c0b3876275566a59487beb3` |
| 27 | `theorem` | [mapPiLocalization_comp](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-comp.md) | 242 | `result-track:61bc0348005665130640639274a7f448df76380a715a3491d7590741d082ef92` |
| 28 | `theorem` | [mapPiLocalization_bijective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/mappilocalization-bijective-source-edition-2.md) | 246 | `result-track:305425e0c46278b92ed5f27a16e86073bfccc2d388ce98d161f72f69194a89c2` |
| 29 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/topilocalization-not-surjective-of-infinite.md) | 258 | `result-track:7d648b231a1f5e9805efabda8f03420dfd4cc316093b7c07cb03cbfb90100820` |
| 30 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/finite-of-topilocalization-pi-surjective.md) | 266 | `result-track:0a5c75bcf95db0048dcb06619b81e27e56585c22f277e77606990e9a6eff968f` |
| 31 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../CommutativeAlgebra/MaximalLocalizationNamespacedPublic.lean/declarations/finite-of-topilocalization-surjective-source-edition-2.md) | 274 | `result-track:e952a3d994f32f702059aee9921e2df3858b95bd191354d475ef0d080f8af73d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4e283f4b55ce719b9d142583e2057aeb617523e7e200fac65ef6b09d3c7e94f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variant1c4a40bd2b0c544f568ba9560d222ef39b72603543b46593c3373cf538f2f3f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
