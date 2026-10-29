# Verification target: Multiple Transitivity Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97a897abd8566b57100c83b2eb417120a055962",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97a897abd8566b57100c83b2eb417120a055962`.

Source path: `GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean.json)

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
| 1 | `def` | [Function.Injective.mulActionHom_embedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/function-injective-mulactionhom-embedding.md) | 79 | `declaration-track:1f9aaef8dbdfb0d0ecb69cc625547094abab865d18761c527fe4e09981a6ab14` |
| 2 | `theorem` | [Function.Injective.mulActionHom_embedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/function-injective-mulactionhom-embedding-apply.md) | 85 | `result-track:4d05f057d830aa21284db8b9e5813f733deadcb3c9b24abf93a4ed4232e712a4` |
| 3 | `theorem` | [Function.Injective.mulActionHom_embedding_isInjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/function-injective-mulactionhom-embedding-isinjective.md) | 90 | `result-track:5b75676e8be932793dab8c1c45025451a341b53557c5cb6f53173c253a925156` |
| 4 | `theorem` | [Function.Bijective.mulActionHom_embedding_isBijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/function-bijective-mulactionhom-embedding-isbijective.md) | 99 | `result-track:f73fe5bdb0c29e8de5437033801d1d8b863dfa77286e79ac6ca385c1d28bb85c` |
| 5 | `abbrev` | [IsMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-source-edition-3.md) | 120 | `declaration-track:37e173e6616fc9e3bdefe4e3b510bf6970e3e75a7e42d956c40aa8b902ec5a96` |
| 6 | `theorem` | [isMultiplyPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-iff.md) | 123 | `result-track:5aa408b92d3427b96624a3ffdfbfa7105c5b53b1bb1ee847bbd8d4b8148a12b3` |
| 7 | `theorem` | [IsPretransitive.of_embedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-of-embedding.md) | 136 | `result-track:6e989d99202582b6c1b28132a1e6aeeb1e70d550bc0917a7004c848071ccd32e` |
| 8 | `theorem` | [IsPretransitive.of_embedding_congr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-of-embedding-congr.md) | 153 | `result-track:d79030af1c6ade1d75f4bad06b740cda9cfa8c9d6263ed6234141c2da71c7c4f` |
| 9 | `theorem` | [is_zero_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/is-zero-pretransitive.md) | 162 | `result-track:05c3a1205dea0b75496f2f6d6f40d2472bbdf6da665b01a02438f522483c7af2` |
| 10 | `theorem` | [is_zero_pretransitive'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/is-zero-pretransitive-source-edition-2.md) | 167 | `result-track:8d9a9410e115ec653e686afe4630561ff9ebdf1bc127243a161f8b9f0d7dfda1` |
| 11 | `def` | [_root_.MulActionHom.oneEmbeddingMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/root-mulactionhom-oneembeddingmap.md) | 178 | `declaration-track:ffb1b2c0b969a0bf258da942441c3b3b51edffcf053de72fd4eedcfb36f3339a` |
| 12 | `theorem` | [_root_.MulActionHom.oneEmbeddingMap_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/root-mulactionhom-oneembeddingmap-bijective.md) | 184 | `result-track:0a1f4f7c4370799c6ec673c911bf3334cdf72786880eebf7f34047828673548d` |
| 13 | `theorem` | [oneEmbedding_isPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/oneembedding-ispretransitive-iff.md) | 190 | `result-track:3eac80bc7fa62433c854ab10599472e2799905890939bbf12ff7481182fb74d4` |
| 14 | `theorem` | [is_one_pretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/is-one-pretransitive-iff.md) | 196 | `result-track:9ebc03a3f0d850a35d47db48fe78ed82e185988202665ffb2f6cf95b043bd8af` |
| 15 | `theorem` | [is_two_pretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/is-two-pretransitive-iff.md) | 208 | `result-track:8bc1945a4ada982f2039e1df27923908e5babdaed5af8c927672dd33276e67fb` |
| 16 | `theorem` | [isPretransitive_of_is_two_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-of-is-two-pretransitive.md) | 230 | `result-track:836b389ef3b878df5ae9b4f108c60879ce561554e5e60cc3aa6b2cf2fdb7eb5e` |
| 17 | `theorem` | [isPreprimitive_of_is_two_pretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispreprimitive-of-is-two-pretransitive.md) | 241 | `result-track:33a6df8f76ac1ad3215b643aa9688183f68f8edae01bd6ca28e5a05b9bd9b0ee` |
| 18 | `def` | [_root_.MulActionHom.embMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/root-mulactionhom-embmap.md) | 270 | `declaration-track:a2a534fd11d106f47a0ea6b8e522aafef4db22e6b588b88776dd26baea4d9345` |
| 19 | `theorem` | [isMultiplyPretransitive_of_le'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-of-le-source-edition-2.md) | 286 | `result-track:99c23c040fa91e2973bc2bafc90302ade3c98213f7a27e2a728c430e43267a08` |
| 20 | `theorem` | [isMultiplyPretransitive_of_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-of-le.md) | 303 | `result-track:233adc5514e3bf79da07974ee23be4fab51bbd3f4bf90d4ff286b94b7b721447` |
| 21 | `theorem` | [isPretransitive_iff_of_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-iff-of-conj.md) | 319 | `result-track:f1e53c66f5474d1c95abbf182008789e47651ec9da4d0418f39f98ba5bb15be2` |
| 22 | `theorem` | [isPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-iff.md) | 325 | `result-track:582861ec8c11cbba4baca538a3593bf329210f67360f7612c0973dd41693f514` |
| 23 | `theorem` | [isMultiplyPretransitive_iff_of_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-iff-of-conj.md) | 332 | `result-track:6eee2f46a14c61aba047e66a13f6e8be06dfff780f9afdbbadf101fb6aa9e6f8` |
| 24 | `theorem` | [isMultiplyPretransitive_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-iff-source-edition-2.md) | 339 | `result-track:8e83a7c89335d250b478aaf71885423dc7971d9f0158937757b1a430c7a62299` |
| 25 | `theorem` | [isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-source-edition-2.md) | 351 | `result-track:2d746667cec8d824bae9837934c4c0f88fcc839fdfbad0adfd3e25b97bff21b1` |
| 26 | `theorem` | [isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-source-edition-4.md) | 391 | `result-track:63bc2e697cec0c7c9a70d383e10730f49e2a67fccede04dfae8de03a51c361ab` |
| 27 | `theorem` | [isMultiplyPretransitive'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-source-edition-6.md) | 417 | `result-track:cf043027eb24767a46d97449d18618f65e8f54990aab12a1565b59bf63418a94` |
| 28 | `theorem` | [IsMultiplyPretransitive.index_of_fixingSubgroup_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-index-of-fixingsubgroup-mul.md) | 438 | `result-track:7db44be3381b7dc7da1b7014ef13d35c0108984bc82527956fe3d84d622a4b58` |
| 29 | `theorem` | [IsMultiplyPretransitive.index_of_fixingSubgroup_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-index-of-fixingsubgroup-eq.md) | 495 | `result-track:1fcda30d2fab376d88ccd68cacada66e3561b373a3f10cb40c385054ff70f1a5` |
| 30 | `theorem` | [exists_smul_eq_embedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/exists-smul-eq-embedding.md) | 514 | `result-track:39d6118043e4de74e338d58df610835fd01aac398f3428ba9d95a21f64ec37b0` |
| 31 | `theorem` | [isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive.md) | 521 | `result-track:07ff21d2c8e0dac4c519b83314da0b7ceae6ae36d099ae99c4abc5cff15af594` |
| 32 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/instance.md) | 527 | `declaration-track:5e053db9facc7f89d019acef9907660db64690b5d6f2bb9cfda86641f31c34ba` |
| 33 | `theorem` | [eq_top_of_isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/eq-top-of-ismultiplypretransitive.md) | 532 | `result-track:723a14a37be913d4907c2d581d8672cb8cc9d5c68f94d5c28928e52c056557de` |
| 34 | `theorem` | [isMultiplyPretransitive](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ismultiplypretransitive-source-edition-5.md) | 577 | `result-track:87e5e78bd3b69ccd7f722ab77a00ff6632710a9cb9c6dcbfa9fb8bb5ef101a45` |
| 35 | `theorem` | [_root_.IsMultiplyPretransitive.alternatingGroup_le](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/root-ismultiplypretransitive-alternatinggroup-le.md) | 602 | `result-track:9c0fff178006f8f5a795d013b04ffc8a8146eb2a9bb74736413c95e1f4b4cc25` |
| 36 | `theorem` | [isPretransitive_of_three_le_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispretransitive-of-three-le-card.md) | 628 | `result-track:14ae3badc41b81d55888619048fdbbf902a4cf35d72b44bdb5c9840bc5a72e81` |
| 37 | `theorem` | [isTrivialBlock_of_isBlock](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/istrivialblock-of-isblock.md) | 639 | `result-track:7c4275e3beb8d602e676db26e93f931e700f268fcc156109d68e0f3cd9a07a30` |
| 38 | `theorem` | [isPreprimitive_of_three_le_card](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/MultipleTransitivityPublic.lean/declarations/ispreprimitive-of-three-le-card.md) | 657 | `result-track:567a482721cdefc6f9490828ae60075fa591e65a688e213d935063a5ec0c9560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffd064b61a652cf6e2c9ae611a3c11480dec692cb3eaa1e28ae0b6797b500c33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
