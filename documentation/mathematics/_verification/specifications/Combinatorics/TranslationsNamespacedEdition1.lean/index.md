# Verification target: Translations Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daaff3500e4b68fdd740ce9404c7e98007d83368",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daaff3500e4b68fdd740ce9404c7e98007d83368`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.WorldModelPrototype.Carrier` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototype.ExactPermutationMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototype.SupportGraphAbstraction` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Integration.WorldModelPrototype.ExecutableRefinement` — import line 9; external provider; requires a separately pinned dependency.
- `BitMatrix.Algebra.Symmetry` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prototypeAssumptionContext](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypeassumptioncontext.md) | 35 | `declaration-track:780d76cd043561ca5fbf3a0feb4b944ebfbae2a172eb2d9a745c5421be727f09` |
| 2 | `def` | [prototypeTranslationId](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationid.md) | 46 | `declaration-track:c73249a1bea7ebf714f8c2db425fc694989034a4bc84555058381c14f61b4632` |
| 3 | `def` | [prototypeVertexModel](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypevertexmodel.md) | 55 | `declaration-track:13f876b29a426f0785d78c7042a38d1abbbba339eb8cd6cfaeb4fc6fc3024fcd` |
| 4 | `def` | [prototypeTranslationRelation](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationrelation.md) | 63 | `declaration-track:3709b3c4b03585ddb3558c68f17820d3b7462c3b73aaadd073f3d15235a34d01` |
| 5 | `structure` | [PrototypeTranslationEntry](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationentry.md) | 72 | `declaration-track:608fd132d40c7b5792126eb5f84d6a79fba15254c3a73f39330549656e0cc10a` |
| 6 | `def` | [prototypeTranslationEntry](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationentry-source-edition-2.md) | 82 | `declaration-track:9ded5f49545eb85ef4d8f83c3b8d1d789a0f37d7c19acff46cf933e5b2844495` |
| 7 | `def` | [prototypeTranslationRegistry](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationregistry.md) | 96 | `declaration-track:bedb9b579c0c516ed93e409c7a29e80210738b37b15d51b88365a992d7870af1` |
| 8 | `def` | [prototypeTypedTranslation](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetypedtranslation.md) | 108 | `declaration-track:bdcfe4b1e62fe906fae968a3291c8440be0abf8c08ecd8f4494015a30b4b9678` |
| 9 | `def` | [translationPB](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationpb.md) | 137 | `declaration-track:82ea89bd1cda08531793cb145651473abe9eff57e24c1fb728231c3af067fb85` |
| 10 | `def` | [translationPBExactEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationpbexactevidence.md) | 148 | `declaration-track:9783a4a2b88ea7d686f1eb19abf7866a60ebefe14a289ce7146bf12a67c2203d` |
| 11 | `def` | [translationGP](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationgp.md) | 159 | `declaration-track:25df7cd9deaa7609a586a916769c59a619612ce54b9d4931b423b42109ff8b57` |
| 12 | `theorem` | [translationGP_injective](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationgp-injective.md) | 163 | `result-track:cf1fc0c5c83f63214e708f8075e351f1ae310eaf99daf7a8e4dc00e174506e4d` |
| 13 | `def` | [translationGPFaithfulEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationgpfaithfulevidence.md) | 168 | `declaration-track:e726f601f440ded89616eea294471c5796b74aa5b9e782becfffe97939f2168c` |
| 14 | `def` | [coordinateActionMatrix](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/coordinateactionmatrix.md) | 174 | `declaration-track:f3a8e41f4bda70230bf38025fc496b3730f5f6cade3c3c1d1615e8bdfd326777` |
| 15 | `def` | [translationGB](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationgb.md) | 178 | `declaration-track:fd358f16b4927c74bc7636d39c9766f6f291d2dbc560a8712dddb9d5c495502a` |
| 16 | `theorem` | [coordinateActionMatrix_injective](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/coordinateactionmatrix-injective.md) | 182 | `result-track:201a67e19c14508407c4f07c5b3f1639072d059fadfe707d90a421898e728c32` |
| 17 | `def` | [translationGBFaithfulEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationgbfaithfulevidence.md) | 192 | `declaration-track:820e944b99d15cc6d918db171612e9dc9087eeb64d58a726b2588be5f0c72384` |
| 18 | `def` | [translationBS](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationbs.md) | 198 | `declaration-track:8e2fe116169958b213d4292389f3ed1d24eaa4fec76b21b8cb1aaea16c24fadc` |
| 19 | `def` | [translationBSSoundEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationbssoundevidence.md) | 202 | `declaration-track:92c1554db672e1b350920bf8b60d41ea51f44369a46fa05c24cade3a6d5a4d80` |
| 20 | `abbrev` | [PrototypeBoundary](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypeboundary.md) | 211 | `declaration-track:05022699c6ccf8c053a93353f701698062a769698890100c74b41118be1db9cb` |
| 21 | `abbrev` | [PrototypeChain](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypechain.md) | 214 | `declaration-track:d1d9ea045248495b66d1076e512433049c2709e31f945f28de25b86e1a147f58` |
| 22 | `def` | [boundaryToChain](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/boundarytochain.md) | 217 | `declaration-track:64dc4a6abca29867d395bb50c4c2e5bb12b71a23ceb038bb4dcdcd26e6c1aed6` |
| 23 | `def` | [IsBoundaryIndicator](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/isboundaryindicator.md) | 221 | `declaration-track:384ffb2df00c3eb5ae837b541e884af562567b8b6338a26b60b7548729f72328` |
| 24 | `def` | [translationSH](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationsh.md) | 225 | `declaration-track:f5036ac0f1de6443ff07440b0e7f44ea20ae7199f972909b099abe713c29b032` |
| 25 | `def` | [translationSHTheoremEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationshtheoremevidence.md) | 232 | `declaration-track:ea1bb42b45e99ecfc715c9bfd125a843734341a9e9bbce96d6a57ededfadcc6e` |
| 26 | `theorem` | [translationSH_isBoundaryIndicator](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationsh-isboundaryindicator.md) | 238 | `result-track:141fc4ae077b08e7dbd7b5ac0a197d924704434dde543b9d135727d1091d8d37` |
| 27 | `theorem` | [boundaryToChain_injective](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/boundarytochain-injective.md) | 242 | `result-track:a19d4e25466cb5b969ab9abbc195b28026b33554abd1976aa18ba31c00c97bfd` |
| 28 | `structure` | [PrototypeOrbitData](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypeorbitdata.md) | 250 | `declaration-track:8ffaaa726b4073b93dd874918d77eed1b156c11f82a7480f3f81b90e6d6c5f99` |
| 29 | `def` | [orbitToCycleChain](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/orbittocyclechain.md) | 255 | `declaration-track:a53be05d119541724bcf9ad0ed5a48be268a94a541f066a975acbcc4c09c7089` |
| 30 | `def` | [translationPH](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationph.md) | 259 | `declaration-track:0da38eebe7b3efbe655bea45ed5923e713728688b98e27e8062c2245abd914fe` |
| 31 | `def` | [translationPHSoundEvidence](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/translationphsoundevidence.md) | 263 | `declaration-track:9974224273b13260f4af7c1d59b93cb85583bbc5f0b5d672232ba3b5d9788a69` |
| 32 | `def` | [PrototypeCertifiedTranslation](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypecertifiedtranslation-source-edition-2.md) | 275 | `declaration-track:fa512ea55e34779b7948f5c977e48350206da5079f161809a891a83f289da1d6` |
| 33 | `def` | [prototypeCertifiedTranslation](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypecertifiedtranslation.md) | 284 | `declaration-track:38552bfeda1953356043189668cf7f11fd3f9a5774fd008c3c1c0dce9f323c13` |
| 34 | `theorem` | [prototype_relation_certificates_complete](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototype-relation-certificates-complete.md) | 293 | `result-track:288332f964683db4987ce1d0939c9913e0b535cc5cab730691331f6f2daf400b` |
| 35 | `theorem` | [prototypeTranslationRegistry_complete](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationregistry-complete.md) | 299 | `result-track:0489fcbc21f0669c4477185c21028b483f3291dfa7802ca4f6b91b1ef2cb6448` |
| 36 | `theorem` | [prototypeTranslationRegistry_card](../../../../Combinatorics/TranslationsNamespacedEdition1.lean/declarations/prototypetranslationregistry-card.md) | 304 | `result-track:20cc2c6e8e855b76a688982d79a9f794c236c35c661d4c51e95a4a6a135dc716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2747c879ea6425fa37833ee32f75760859757781a57d6eee825f7395341ae0bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Translations/Variantcb92498c0cdccd312eacf1f818fe21d6866cff6c983e37d3fcd932456b976b68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
