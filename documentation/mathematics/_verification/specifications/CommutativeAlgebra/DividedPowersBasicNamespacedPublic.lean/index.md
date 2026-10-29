# Verification target: Divided Powers Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "551c7265033d2e1ede0cc884876f3b114f5e71c8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `551c7265033d2e1ede0cc884876f3b114f5e71c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean.json)

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
| 1 | `structure` | [DividedPowers](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dividedpowers.md) | 86 | `declaration-track:2c06a1e2c3292abf1838a61a7a17c8f9a2cbafe34f6b88f1a4197e13d3088cb8` |
| 2 | `def` | [dividedPowersBot](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dividedpowersbot.md) | 104 | `declaration-track:f346478b4c82e9e6916feb581e348004ba0c79cab31aea9e2814372df9189dc5` |
| 3 | `lemma` | [dividedPowersBot_dpow_eq](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dividedpowersbot-dpow-eq.md) | 146 | `result-track:f0505c102486240463caf6aa6f87847950fb4bb30110e89225accc8ea62cd491` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/instance.md) | 151 | `declaration-track:3f947105552f5d2719f5b6977060803d94ae5c5822aab45979d22a336bb7723c` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 155 | `declaration-track:dc2d862d4ebcdbc9736691de4a593cf71beca25ea9274f2f53078f3c7cd82bf3` |
| 6 | `theorem` | [DividedPowers.ext](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dividedpowers-ext.md) | 159 | `result-track:e7fd4232ce58b0dcc1c2e2f74c38915d0c321ce48c5406357866b5a305d28637` |
| 7 | `theorem` | [DividedPowers.coe_injective](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dividedpowers-coe-injective.md) | 167 | `result-track:caa117ff5dec9b9e1b508072cca1554869a1e52fea7df194c67e3e536d70f881` |
| 8 | `theorem` | [dpow_add'](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-add.md) | 183 | `result-track:4ea6d1011a844216b87e4fb210d8b1aca8b9b914d35353af79f8aa98846b9633` |
| 9 | `def` | [exp](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/exp.md) | 189 | `declaration-track:34f2e87cdfa80756748ec1b7e4cd93b4441a5ae912b7921cee0e33e0034ef2fd` |
| 10 | `theorem` | [exp_add'](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/exp-add-source-edition-2.md) | 193 | `result-track:e3c06a99208477e04a469e70c6fcdb5d8fadaa5510dcb830aca359e940745bd4` |
| 11 | `theorem` | [exp_add](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/exp-add.md) | 201 | `result-track:734074ee28d7903b14724f6aec06828ea8b2b5c3d4043283f526e093d667206f` |
| 12 | `theorem` | [dpow_smul](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-smul.md) | 209 | `result-track:cd480563a92e63824d2f7b6c2c2d6a6c5e5a8acb618d8e970acec2fb8067acd8` |
| 13 | `theorem` | [dpow_mul_right](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-mul-right.md) | 213 | `result-track:4acf95f9fa470f7ffdd8cbb13c83948775e46614faab441661076928ed69c4ac` |
| 14 | `theorem` | [dpow_smul_right](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-smul-right.md) | 217 | `result-track:c67889984cc464e74c365066d314650bd97e078ff3a770ade7671968c43ca8e9` |
| 15 | `theorem` | [factorial_mul_dpow_eq_pow](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/factorial-mul-dpow-eq-pow.md) | 221 | `result-track:ed4a99ba95244962638431ff7f92d7688c34555685bfc1b9ebb4ea14a1160949` |
| 16 | `theorem` | [dpow_eval_zero](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-eval-zero.md) | 231 | `result-track:7eb20f79baf93c0e85873a4ea7e5da14aa4c84a6907759ff7cc7c7a928a7ddc5` |
| 17 | `theorem` | [nilpotent_of_mem_dpIdeal](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/nilpotent-of-mem-dpideal.md) | 239 | `result-track:c251afc431bc57e54662021016e346fbbb1d11c87cad333d6ca5aaaadf0dcec9` |
| 18 | `theorem` | [coincide_on_smul](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/coincide-on-smul.md) | 250 | `result-track:36596c3c9828f422a9babbbc0865e420fe5d441e91559cf6603bfbd8f6089e53` |
| 19 | `theorem` | [prod_dpow](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/prod-dpow.md) | 267 | `result-track:79c9b4ed7070ffcef092386770efc619fd2401768bce54d8a9b3725b7a0868ed` |
| 20 | `theorem` | [dpow_sum'](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-sum.md) | 283 | `result-track:02fd56281d6a53ffd45246d3d9cc21a5a5d63258f49f92456476168333024e04` |
| 21 | `theorem` | [dpow_sum](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-sum-source-edition-2.md) | 337 | `result-track:b5910168aa41b35da120b3279059e6701bbd48bf0979b0a3ac4e86e760c54a57` |
| 22 | `theorem` | [dpow_finsupp_sum](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-finsupp-sum.md) | 344 | `result-track:d406c57cdadde08ba8451f81388309a01de39c98db7cff39fb3f28fef4dd0de3` |
| 23 | `theorem` | [dpow_linearCombination](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-linearcombination.md) | 349 | `result-track:752836cfb3c2b74948fdda7e54216d3ec31b343fa45d834ba3bd1ca0f6dc8f44` |
| 24 | `theorem` | [dpow_prod](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/dpow-prod.md) | 364 | `result-track:7b314157a184b46428ecee06614d67cc8af17e944f6a46aedbf7e7944602ee9f` |
| 25 | `def` | [ofRingEquiv](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/ofringequiv.md) | 396 | `declaration-track:5288d425cba6d4564a0736a2af196f0789f8966cca9a1f5d4c058d0ddb983b1f` |
| 26 | `theorem` | [ofRingEquiv_dpow](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/ofringequiv-dpow.md) | 432 | `result-track:dba23c4cfae418d7744ebc471a22f61af6b1dff9fb04e991fa80058d01e80323` |
| 27 | `theorem` | [ofRingEquiv_dpow_apply](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/ofringequiv-dpow-apply.md) | 435 | `result-track:4ffeb2f0f992989a0a2c4c36b9a85978db7026021c55db022b43a0dd78e7cf93` |
| 28 | `def` | [equiv](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/equiv.md) | 440 | `declaration-track:e0e76ac39be0860d271a7295761f0999404951ba229f2cedc7121a7dfa660975` |
| 29 | `theorem` | [equiv_apply](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/equiv-apply.md) | 446 | `result-track:79ef93c1e89adb1322f6b49bc57206450bda0ca6161a98de991c1ca0d52fb6b8` |
| 30 | `theorem` | [equiv_apply'](../../../../CommutativeAlgebra/DividedPowersBasicNamespacedPublic.lean/declarations/equiv-apply-source-edition-2.md) | 450 | `result-track:fa541aaf29c84730f1bfcc90e149600fe279ea4803ba44b55e409ab061e276a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf12f5297df8ae84bc57616079f9271a096e7739a6b21db9f92d96e12a9598e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant913f6c9bc8f2c9a54ac012a5bfb74c4b44a219bc4226b7e071cbcf8299ff394a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
