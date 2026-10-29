# Verification target: Discrete Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7af84f7a1a36036fbf18bc04ace2360fb5422cd9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7af84f7a1a36036fbf18bc04ace2360fb5422cd9`.

Source path: `GRWTSK/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean.json)

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
| 1 | `class` | [IsRankOneDiscrete](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isrankonediscrete.md) | 76 | `declaration-track:c6cabd7682892a738472f217799ce760fbc28683835ff343ab1e134751df22dd` |
| 2 | `lemma` | [exists_generator_lt_one](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/exists-generator-lt-one.md) | 83 | `result-track:b5896e4277f13fb80d83e420ba6ff7fdd89d5e314cbf1727f5353df791b075a8` |
| 3 | `def` | [generator](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-source-edition-2.md) | 88 | `declaration-track:d08968ffdc64f3d3138dd748d2a7b52cd0ef9a7485d1aba32f05c7680003778c` |
| 4 | `lemma` | [generator_zpowers_eq_valueGroup](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-zpowers-eq-valuegroup.md) | 90 | `result-track:a7e381e98dcaac9722b11f6bf102218f11f22db96ca0c6800ce407853b64c338` |
| 5 | `lemma` | [generator_mem_valueGroup](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-mem-valuegroup.md) | 94 | `result-track:4a42a3dbcb81a54ac3ba4122f3ed4a27ec33af0b1b76e428344be1421b7a2fdf` |
| 6 | `lemma` | [generator_lt_one](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-lt-one-source-edition-2.md) | 99 | `result-track:eb4cbbc5d08a9395e9a74a39fba37f80bd7394bda313f6af441bb312ff012768` |
| 7 | `lemma` | [generator_ne_one](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-ne-one.md) | 102 | `result-track:b4e9ce5b8596f9411eb5abfa4024e4267a7972c65132f773817e3cbb7d41cdff` |
| 8 | `lemma` | [generator_zpowers_eq_range](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-zpowers-eq-range.md) | 105 | `result-track:e333c4b1e63b2f13b8b289faa685cd49fe1926ac5402b19958436982ea990674` |
| 9 | `lemma` | [generator_mem_range](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-mem-range.md) | 109 | `result-track:a33712066454921c4be96b0f6b331d13a5be3210b311790a8231da0bec76ae88` |
| 10 | `lemma` | [generator_ne_zero](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-ne-zero.md) | 115 | `result-track:8f8f9abed68e17b43834b813627951a5e7feccca76820a4995f4a1146ddaf755` |
| 11 | `def` | [generator'](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator.md) | 119 | `declaration-track:03582b6868fe592757f58823deb51bdd5fd88fbc6c8727e7482c6f606bb2f415` |
| 12 | `lemma` | [embedding_generator'](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/embedding-generator.md) | 122 | `result-track:1fb3494589c024070778d5ce32880adafee4916a4878e660ab26850ffa3fd1be` |
| 13 | `lemma` | [generator'_zpowers_eq_top](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-zpowers-eq-top.md) | 125 | `result-track:e9dd9ec61e76e5a542ca6e28a2f8342b4207701e0aa86f9d34aac15a2e52d00d` |
| 14 | `lemma` | [generator'_lt_one](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-lt-one.md) | 130 | `result-track:841aba2358dae8483cfbafe5637d65c6b7a00ebf1d115b4e020f2259e7ca3373` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/instance-source-edition-3.md) | 133 | `declaration-track:b6df5649193d1d2ba61eddc14c0f256296ff9c785a7d72dd602d6bd4fa1e3caa` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/instance-source-edition-4.md) | 137 | `declaration-track:dd1bfc1c56d2dd20676b228a56f0a1cdc4c1f3390f659c938d5e6b16b0a0f7a5` |
| 17 | `lemma` | [valueGroup_genLTOne_eq_generator](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/valuegroup-genltone-eq-generator.md) | 149 | `result-track:b9d1fc1ef93e06878c1d86167f697662c09ffde4b06f3866af65733a498c684f` |
| 18 | `theorem` | [generator_eq_exp_neg_one_of_mem_range](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-eq-exp-neg-one-of-mem-range.md) | 162 | `result-track:0d17579e5fedacb01af7849767f46f23798c4c1eebd958070944c530cc8e837e` |
| 19 | `lemma` | [generator_eq_exp_neg_one_of_surjective](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-eq-exp-neg-one-of-surjective.md) | 181 | `result-track:3d2c5d308c46e355d70dd262d7fec63f2ccf0e1caad3f5ce994d1cc939d26dcd` |
| 20 | `lemma` | [generator_eq_neg_exp_one_of_surjective](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/generator-eq-neg-exp-one-of-surjective.md) | 186 | `result-track:e55b2efc2a4ea44369d986af64389653a3212d07c1d75fdc6d8ddd80f97e1e54` |
| 21 | `def` | [IsUniformizer](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isuniformizer.md) | 199 | `declaration-track:6454ec868cb758a0ceafec0e7b73bc6c23f7b0eeed8b34badf81a01f8b38169c` |
| 22 | `theorem` | [iff](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/iff.md) | 205 | `result-track:a421f47cf0e8e027d8c64dc4ff2dcc3eee24533945e728e03eaffcc9d58f49f5` |
| 23 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/ne-zero.md) | 207 | `result-track:8c752bace21842a2cb0838d31e59332eafb6e499ee97c3980d574f72eee7ed5a` |
| 24 | `lemma` | [val](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/val.md) | 213 | `result-track:d4b921caa12e0e9c5bd9aca4253a7ad2cabb6c2cfe18fe5eca4a374a9af39508` |
| 25 | `lemma` | [val_lt_one](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/val-lt-one.md) | 215 | `result-track:0f31750fba98b0dfb16644d72aae9eec8552c6508a5c04e4c161c6a4b94bd71d` |
| 26 | `lemma` | [val_ne_zero](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/val-ne-zero.md) | 217 | `result-track:f9e417f11bd8404ce9ab33e3235b8b6252877d3e9f18dca9801c564441deff42` |
| 27 | `theorem` | [val_pos](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/val-pos.md) | 222 | `result-track:5a776903acc0d4cf67898cb3d74e5ffe72e42dfeba4466058bb1adccd44dfd36` |
| 28 | `lemma` | [zpowers_eq_valueGroup](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/zpowers-eq-valuegroup.md) | 225 | `result-track:316d66f71ad03d3020e47b2f83a43396a1ab3611286a071aaf72aa9b993f03a2` |
| 29 | `structure` | [Uniformizer](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/uniformizer.md) | 238 | `declaration-track:9eb1ee21bf432a256b64c114e91812880ed4ce8f5e9549ca3894d70762fda4e8` |
| 30 | `def` | [mk'](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/mk.md) | 246 | `declaration-track:00e0d3330293fce710cafa52e7daaac23726d51f4481f02d8de640f52c703e93` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/instance.md) | 251 | `declaration-track:84912b62f46594807aba22f60c081795a6e5836dfa4cc420e16ddac272c799a4` |
| 32 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/ne-zero-source-edition-2.md) | 253 | `result-track:e03ee2a69d8b601796c989b23908bbc16f02f3d2a32d22d0e7bf427677c04f64` |
| 33 | `theorem` | [IsUniformizer.not_isUnit](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isuniformizer-not-isunit.md) | 265 | `result-track:7a2070f2b70bfc8916addfd98d1db3e7982c12c51a5fe50486dc6819ca099823` |
| 34 | `instance` | [IsRankOneDiscrete.mk'](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isrankonediscrete-mk.md) | 275 | `declaration-track:42df56a7e5ae1cf9604a7b080709a7238fd7faee4cffd8b4d3bd7374276357b6` |
| 35 | `theorem` | [exists_isUniformizer_of_isCyclic_of_nontrivial](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/exists-isuniformizer-of-iscyclic-of-nontrivial.md) | 296 | `result-track:e73e2b95f15698024a1ada9550e2109499fc8f7954280f22025ba11df4f12ef4` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/instance-source-edition-2.md) | 308 | `declaration-track:a42e80527ec8a075662dd3b48649c83b83146af4400bb74e90bf782a34e6c0de` |
| 37 | `theorem` | [IsUniformizer.of_associated](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isuniformizer-of-associated.md) | 321 | `result-track:75a3fb5204c04cba3133875e595067d66e58d70c52eeba347db9c09bb19e7c0c` |
| 38 | `theorem` | [associated_of_isUniformizer](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/associated-of-isuniformizer.md) | 328 | `result-track:ec50958ac8f0767a35b8ab777ce9016b307a3261170c2cdeeceeae457412698c` |
| 39 | `theorem` | [exists_pow_Uniformizer](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/exists-pow-uniformizer.md) | 337 | `result-track:cfc403fde4785b8db5507925f8774bab5bc42d70e706dd59d4c79c457aef2693` |
| 40 | `theorem` | [Uniformizer.is_generator](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/uniformizer-is-generator.md) | 370 | `result-track:f043ada60e891cd808a3061be00617c6a16fe282716f2e12d065de71b07c854c` |
| 41 | `theorem` | [IsUniformizer.is_generator](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isuniformizer-is-generator.md) | 387 | `result-track:5129f1079ca6ad25a6270be4b52e2833bf9cdac2c25066d3c467f4436287a7a3` |
| 42 | `theorem` | [pow_Uniformizer_is_pow_generator](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/pow-uniformizer-is-pow-generator.md) | 391 | `result-track:0da67a2482e92f90aeb8c43da4c09b4b8daf5a43ceafdcf806cd5ca23f38e3ba` |
| 43 | `theorem` | [valuationSubring_not_isField](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/valuationsubring-not-isfield.md) | 399 | `result-track:e414978c7bf2a653d33775dcfb40b8f9d98642d2be69ce751a40759925a51eb4` |
| 44 | `theorem` | [isUniformizer_of_maximalIdeal_eq_span](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/isuniformizer-of-maximalideal-eq-span.md) | 409 | `result-track:052ad45c7479d35687aa960e434cccfd7e1a30c97ea421643a413d8a4b1aa231` |
| 45 | `theorem` | [ideal_isPrincipal](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/ideal-isprincipal.md) | 422 | `result-track:f252c8f68ebabf19813d0ddc46a86deeeca8b54659c10972e768645241ce543b` |
| 46 | `theorem` | [valuationSubring_isPrincipalIdealRing](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/valuationsubring-isprincipalidealring.md) | 444 | `result-track:7bb6f75a5dd8052c4b94700be3d1249f9f6e1dcd15191459f863c04cadff22d2` |
| 47 | `instance` | [valuationSubring_isDiscreteValuationRing](../../../../CommutativeAlgebra/DiscreteBasicPublic.lean/declarations/valuationsubring-isdiscretevaluationring.md) | 449 | `declaration-track:b89ce641056c549c36b082b7c1308b89c4ebd425a29100ad904f5c9e832a987f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1437a63a29ae350bbcbf9bc81ae6455832c7e4bb0c4295c98e70c2701a68da26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant56536e709daf5b64965fc476e3bb7e47e84b9dcb9d100f04bf36de045a19128c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
