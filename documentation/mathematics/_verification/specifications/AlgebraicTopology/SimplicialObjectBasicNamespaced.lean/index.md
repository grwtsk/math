# Verification target: Simplicial Object Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d35798af9d30ee38b7aeb744c4d265793e5bacd",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d35798af9d30ee38b7aeb744c4d265793e5bacd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Arrow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Superscript` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialobject.md) | 56 | `declaration-track:00f0461cc9dcc9c6f4dfadb241933cae42f93c77c2819be80b50821cf424d9a1` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 60 | `declaration-track:8248b43618aa4630e7803843b71e842db0c5f3097e1f0d0a30aad1c9ca720d2c` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:1449f8e73a327a94ceebeb791e68b5e2a02f3bf484f677f24464ea8902303be7` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 79 | `declaration-track:3c06718424de9a3ed9d99ce606ccb84f9610c13b8c4971b29dbf00ea6b05d49a` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:1aacaea38a7d1760639ddf9828c43e9787932f14c26f38bc03caf450e5af4101` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-24.md) | 87 | `declaration-track:ff137245511eea7915c28920a4982f02980b0d595cd0d59880dc75d932442db2` |
| 7 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/hom-ext-source-edition-4.md) | 93 | `result-track:e4babf67808d32f5d643da94debf796c4c602fd65e36f2af226e19384a8fcf89` |
| 8 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/anonymous-source-edition-4.md) | 100 | `declaration-track:cb5bd197ddd8a6101011d49a3250d56c55357498dc3e7236daa0dde9e3f8b295` |
| 9 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/anonymous-source-edition-2.md) | 104 | `declaration-track:4ac0e504392c1dfeed328ed7a5ba5764d7b365c6b02636b699d346936a72fbf7` |
| 10 | `def` | [diagonal](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/diagonal.md) | 108 | `declaration-track:76f9fa1c8d0e921b5cf748621eb07f9c2543e073cbf9c5796d73fd2e6f95d7cf` |
| 11 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/eqtoiso.md) | 111 | `declaration-track:8662f8961888c2a4ac46db9b85eb651b60ad050bb5054de570ecb77363d7cbc8` |
| 12 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/eqtoiso-refl.md) | 115 | `result-track:1d2a13eb857b2f3262072af56fda39eae78e21b9388f1bc0f0cf070a4ef41d08` |
| 13 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-3.md) | 121 | `result-track:2bc580f6108969499f79aff58d294ce32237fabdbe765fd876f2baa9f57060e7` |
| 14 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-2.md) | 127 | `result-track:24ebc16187d759dd6022aa349d36174daea381b0b71f39d0d18e83e8939119ae` |
| 15 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-8.md) | 134 | `result-track:b85bf4e023413dc1fe2c19c61cecfec9d9dd8f074c126f61467ea29961309a53` |
| 16 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self.md) | 142 | `result-track:3036a364f35595cfe5a48e664ceab04b5e6608d2562e3c86c2dfd21426d9e9c2` |
| 17 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-8.md) | 148 | `result-track:f1dc8352a497186e6c99e1784695ee3afc95602c2a1da2d278bbbfa883cc480c` |
| 18 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-le.md) | 155 | `result-track:6d7bb901d99589ea46b769c288bc0c68d107165b97bcf2818f5cdd63da99408f` |
| 19 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-6.md) | 162 | `result-track:9f63e1a0fb7edd67683b4f1fea787c60f3bfadaa343bef3195600bc47917f424` |
| 20 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-4.md) | 167 | `result-track:6b9a4952ad1da03f54de6fc7802d99b2c81ea11bb5d3e190811c4a51c3589ad0` |
| 21 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-succ-source-edition-3.md) | 174 | `result-track:2328e42cad3597d12d0fb1a420f56b544274674ef3456f0f87589747ddd664b7` |
| 22 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-succ-source-edition-4.md) | 179 | `result-track:9957103057faf4dbd80ea7db0bf6f62dcb1372c6748c4ec5692e0f330b078a65` |
| 23 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-gt-source-edition-4.md) | 186 | `result-track:f6b6090400fe7d624fec64a8a50bd602becf65ba64ce2da32af9d53806b2ecf6` |
| 24 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-gt-source-edition-3.md) | 192 | `result-track:f0902746a3a0ce255240d023c9cc1366661b87ab0c19c9eec60e94606e7baf86` |
| 25 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-5.md) | 201 | `result-track:527cf39e84a6a6396df36519c137812077e6a060fb3909c7310509d06b54a7ec` |
| 26 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/naturality-source-edition-4.md) | 209 | `result-track:f8c468a78739110c576e6b73ce0a07b2a0360c11c4d597e10abf6c5a4a5f548e` |
| 27 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/naturality.md) | 214 | `result-track:0acec7b8256b98b3401f93ababb6f6c599fb968f059cd49f6ea778ca3314bf7a` |
| 28 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering.md) | 222 | `declaration-track:18ed3d1686f026e78a36aa3968c9501ed8973f5f0aec92e86e1251404ea8d467` |
| 29 | `def` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncated-source-edition-2.md) | 226 | `declaration-track:d371f51198e2ca90050a3f531b4c8b0b4beb49bade4e98f2a7434fa762f924d2` |
| 30 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 229 | `declaration-track:8ec1ca2215126b4352068d3b8e051c564266a104c8899fd619edb8851837a315` |
| 31 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:03a778a11553e55278f5e7000163949a2cfb021e651a06602a443045661ac617` |
| 32 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 242 | `declaration-track:7c396ff891b69683c07209ecc60cd4303a53f6f75ad394a6224678734591d147` |
| 33 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-23.md) | 245 | `declaration-track:f030d08d1553ca62e02b1fe226027f63988cf79046e576c9912904974df794b0` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-22.md) | 250 | `declaration-track:e8c4af89206553b83441fb153f37d32aa87264179ab55acca6b63c99c1b42745` |
| 35 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering-source-edition-3.md) | 256 | `declaration-track:8991a310df8b34fd538620fc228af88876194f1ff2f89e852ae5283e8af0ab38` |
| 36 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/macro-rules-source-edition-2.md) | 266 | `declaration-track:e37e5a48d2d85ad0d8a4ffbef4281cda1a1173d75cffe4732e4151b4f307968e` |
| 37 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/trunc.md) | 278 | `declaration-track:4a2680b2b0293641dcf9bac3df4e55640900a9b56398ce0dd072881329281e48` |
| 38 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncation.md) | 286 | `declaration-track:24353c768f54977a14f2771407580eaf9203c06a418a44994726862391392b39` |
| 39 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncationcomptrunc.md) | 290 | `declaration-track:700570f87d98c1da857ca5fc38e692332d9586ed740608a07a8136fd0639ecb0` |
| 40 | `abbrev` | [Truncated.sk](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncated-sk.md) | 300 | `declaration-track:b2f89a919415a4a024eb68e8b7abff9c590ccaf1e342bc5901315063cc45c5e7` |
| 41 | `abbrev` | [Truncated.cosk](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncated-cosk.md) | 306 | `declaration-track:911cc382ddb05094661cede302a9d79deaa567381974e05724017c03a4700839` |
| 42 | `abbrev` | [sk](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/sk.md) | 312 | `declaration-track:6df46367c1e6d24353e13a70e7e4def81448e139cbe88184a60f50534108838d` |
| 43 | `abbrev` | [cosk](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosk.md) | 317 | `declaration-track:31efec7e354eb14adebd629165c4e9573cdb0a800b992c265c5a4f3e2a75da64` |
| 44 | `def` | [skAdj](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/skadj.md) | 335 | `declaration-track:a87f27ba73bebf06c6f21d885887b998762222e27a27309fd049b1b0597dddbf` |
| 45 | `def` | [coskAdj](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/coskadj.md) | 339 | `declaration-track:ff6a2f3e6bb62d13edc62572130f045abdad1094abcb190a0143707d1bdf0621` |
| 46 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 342 | `declaration-track:8800e066c1834adeebf3529ab7e1799ec1eab1a2e856f037dcd8356261c6973c` |
| 47 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 347 | `declaration-track:30e60f89d0f55eccfe1bc3a2c3cd56b638826dcaeabd64338cfb375ab5f69807` |
| 48 | `instance` | [cosk_reflective](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosk-reflective.md) | 361 | `declaration-track:065bb49b19d0a5b8f18f2dae1a0a4ca7c9a4706fbbd1d74361d965a217f7be03` |
| 49 | `instance` | [sk_coreflective](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/sk-coreflective.md) | 364 | `declaration-track:2c28fcaa31bcaef23bff371f53c75de32aaf489af63ba86de3d7eb9f86a327b6` |
| 50 | `def` | [cosk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosk-fullyfaithful.md) | 368 | `declaration-track:41aee5e7d2ce5a88062347048e50b03caaa7612d9e628995f7a8143c410ecd01` |
| 51 | `instance` | [cosk.full](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosk-full.md) | 372 | `declaration-track:e871a3c868aec01ceb8fef41f7fd2c225e87b0cc8ff6e9287695191836ac236e` |
| 52 | `instance` | [cosk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosk-faithful.md) | 374 | `declaration-track:9673db9374f8219e0393057c326813fd5ba5f61ec750552ea3efeb1c26271913` |
| 53 | `instance` | [coskAdj.reflective](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/coskadj-reflective.md) | 377 | `declaration-track:4fa26c7baeae6a6433a437fb6277f52cda9d299173a25967990e15032dc029e1` |
| 54 | `def` | [sk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/sk-fullyfaithful.md) | 381 | `declaration-track:07d63ca262590c7ebef9a05d0eb98643206111303a0e51ae4c48dabc20bea671` |
| 55 | `instance` | [sk.full](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/sk-full.md) | 384 | `declaration-track:fe7a6863174dda8fbf539ce1965578f04384196b390baddfd5db8c1557f1c1b5` |
| 56 | `instance` | [sk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/sk-faithful.md) | 386 | `declaration-track:766673e5b9f998ab367b320483a7acf01b075665b775c46dd4d1b9f69ac7b990` |
| 57 | `instance` | [skAdj.coreflective](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/skadj-coreflective.md) | 389 | `declaration-track:1e54fd28d1661955fd8f13cc16eb0d3727ab772d64c5aa11491aa1b9340ec117` |
| 58 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/const.md) | 399 | `declaration-track:165df416cac20c5bb0856167a92fca7369b0f20e3754a5373d536b95ccb6da65` |
| 59 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augmented.md) | 403 | `declaration-track:dde95620ba9199844a359737ba9c13740cf3cfda22088b0fcb91c79584aa4fc9` |
| 60 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 407 | `declaration-track:65b25d52038df4b8740645979a12e877d5f83b7b0d8d95ca69d07af98a857df9` |
| 61 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/hom-ext.md) | 416 | `result-track:4e42256b3540fa2f0ac60ddb20f1b4fcd43d95fbe8f0bf5f79cf1bdc8173be1b` |
| 62 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/drop.md) | 422 | `declaration-track:00914b2a84b25375ae7426a219a0e835648fbda5bced8b9a969a4b0cd00c2ed2` |
| 63 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/point-source-edition-2.md) | 427 | `declaration-track:f8bcc85c6bdf252245feacd4f545e7019a808c7e4ed05ff45c85052fd0d217aa` |
| 64 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/toarrow-source-edition-2.md) | 432 | `declaration-track:674892a3a933b8b1c475eb21a22a3e6764c4a696f8ce58018f295d0a9bd6f70f` |
| 65 | `theorem` | [w₀](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/w.md) | 448 | `result-track:ebffc984ea675d255bcb6dcc82a55506d1b267ed49ca083d95786f848d9ddb49` |
| 66 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskeringobj-source-edition-2.md) | 457 | `declaration-track:9f66dc99382c4f19dad228799ec55670fa7cd60a943202ef5d0ef63ded8f93b6` |
| 67 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering-source-edition-4.md) | 474 | `declaration-track:aec8e48f8294872d588022ce499768059c24a4bd67362ea0518796abf971d3f2` |
| 68 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/const-source-edition-4.md) | 490 | `declaration-track:ea69e42e02760c7348a156d9a8c96454e478b033bcf94e8d7809b2b60a3563fd` |
| 69 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augment-source-edition-2.md) | 503 | `declaration-track:d01bf521a579ebe770b94a05f5804cd86749d3aa50ab80f5ad2ff8e000247634` |
| 70 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augment-hom-zero-source-edition-2.md) | 518 | `result-track:e7b76b9a3511bdd2ae5455d09b7262868e177cf6081698d019c6c24a7f317505` |
| 71 | `def` | [CosimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosimplicialobject.md) | 524 | `declaration-track:09085a57851d42ccd0504f887735c8030ed745f68ff65cef60adc102b9645f24` |
| 72 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 528 | `declaration-track:70ed9ca70d2f14172ac2bb1dd8bb7cd50365f8c22726aa8b4b873390aa645b31` |
| 73 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 539 | `declaration-track:821fe882ea2da5dfdcb001750f77ca435ad699e043dda8db78476ca06ba3f335` |
| 74 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 544 | `declaration-track:793ec953803bfd7cecd5adfd5c87f7e9ffb5e3b1a45626662b9dab2fcb5681d4` |
| 75 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 547 | `declaration-track:5e710b976790e5a4712712363245206eabc701100d8aab58e24737c5d1b4a4c5` |
| 76 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance.md) | 552 | `declaration-track:01112acca3bdccd2a604afca39553f19f14551d46ee5f766216d1e6cda73c2fb` |
| 77 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/hom-ext-source-edition-2.md) | 558 | `result-track:4f860a7b85d8359f83f9ec45d3075aefd2b60b19220bb6bfee8775974f868b1c` |
| 78 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/anonymous-source-edition-3.md) | 567 | `declaration-track:5e7b2700e5e84341e11a7ebb1ce0995cbefe791407696d3009ebf0fb6de919dc` |
| 79 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/anonymous.md) | 571 | `declaration-track:4154a4e4bae76fd3786ad780e7a6104806e1c0fa4d7e0dac1b7be7658147628f` |
| 80 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/eqtoiso-source-edition-2.md) | 575 | `declaration-track:f21962c6451931766901ae643178c95286a98f51f8941cc0f3603cdfa5c89141` |
| 81 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/eqtoiso-refl-source-edition-2.md) | 579 | `result-track:5ca5197bc47a36edcaa5d401b46a0d5822e87afcecda4f6b55494bd7d12e8f8b` |
| 82 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp.md) | 585 | `result-track:0f27789756fc06eb698cbe062df5f6de51276b95a1b4929e0da8aa5cfdd10c39` |
| 83 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-4.md) | 591 | `result-track:31304b4dbfadf3c66e2d8b6bc9fd479658d424235f288edcc1f8674e9039a36d` |
| 84 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-7.md) | 599 | `result-track:69c36f3239a481a203c30d11fff670b1965dbae5a38b759cbfb0415313541866` |
| 85 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-7.md) | 607 | `result-track:cda47d4494206ef54ed2eb6cbd716c1deb44e81421decce8f3e22033a9cd9171` |
| 86 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-3.md) | 613 | `result-track:31167c8c8c57330f8145467963b86d33ab3ec59ad25cefea9b88b288fcaf7b6d` |
| 87 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-le-source-edition-2.md) | 620 | `result-track:c8fb60efb2ccfed3d14daed3747d0f9e1f614db0090d65e8f3019bed953e0b59` |
| 88 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-2.md) | 627 | `result-track:30e121ac36a855e9d149c96f1f529444025e3fddedb27e75f7163b886cd25295` |
| 89 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-self-source-edition-5.md) | 632 | `result-track:88f47161b0c55c919fa2fa8c88fb113a3a898a4a7f20208faaeb5b8d60e8f27e` |
| 90 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-succ-source-edition-2.md) | 639 | `result-track:16c9b72fc703c33260708aa625ea396a5b2966364d2def40b0cafa1141c669f2` |
| 91 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-succ.md) | 644 | `result-track:048480d710905848f10d33575fb56c91e34adbe76d75d316ff34c872a3614f0b` |
| 92 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-gt.md) | 651 | `result-track:42f2c8adf44f4f83f77903664a8d82f0bb48ee889adfbc0448764ca00ef93cdc` |
| 93 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-of-gt-source-edition-2.md) | 657 | `result-track:9bee9b5caacf66b4140477840254370ae974e4224cfc3b630c6905d2bdb5142f` |
| 94 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/comp-source-edition-6.md) | 667 | `result-track:642974425811e1066ac3a37fcc507b4e48a32667480226b5b971be49a300dba1` |
| 95 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/naturality-source-edition-3.md) | 673 | `result-track:62adef7bc679aa68789a60688d7f000a61a57c2ac57f32f2f46b98a19e6a0d51` |
| 96 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/naturality-source-edition-2.md) | 678 | `result-track:4ae7ec630c3a5b4ebfc5352f1f655cba565babf2d5d3e85d8f57cd49529d7e3b` |
| 97 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering-source-edition-2.md) | 686 | `declaration-track:19dd6b4c99323841b978526288cef600fabd92951f8fcc9640a9c011d59c1f17` |
| 98 | `def` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncated.md) | 690 | `declaration-track:3afee3192f93288f12f09ed05565a151e9c2065e6b44a386d88b6bfaba91bc22` |
| 99 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-21.md) | 693 | `declaration-track:d790291f5fd869e68b8bb7b5475f9162e3c8be4c23e2f37fcfbea673ea46591d` |
| 100 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 701 | `declaration-track:80a72f065205cbab9b860b55b1c98ba3323f7a696ff789d8f99a3be7137ddfa8` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 706 | `declaration-track:17e74f7425e74a015e4f2dd62147786ce562021da72dd6cda573e58b5168cba6` |
| 102 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-20.md) | 709 | `declaration-track:9a2c65758e3854fd8b5fb37998f5c2547ab5d67274e53814000df33b9e8c82a6` |
| 103 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-19.md) | 714 | `declaration-track:94b938ad32705bea4ccb1e512b646ee7ffc4131dceef475af010d3c9d4d0fb17` |
| 104 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering-source-edition-5.md) | 720 | `declaration-track:b47c97f4dbd481c48034dead2e3eb652f5e46f4beea1b6e989c89579f299ceb1` |
| 105 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/macro-rules.md) | 730 | `declaration-track:25360bf6eeea95b45c15e45509bc025c5bbd07fb3b94ed32bcc6d4ce483e4666` |
| 106 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/trunc-source-edition-2.md) | 741 | `declaration-track:627d0048dfda2ba1e54dbe873c21babb5fd8ceb6e5133ebc30fc23dfaccdceea` |
| 107 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncation-source-edition-2.md) | 749 | `declaration-track:f8ada178c97182b3eb0d3dbbd7aada31961163b77a53c18c9a37f9a63ecf11a5` |
| 108 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/truncationcomptrunc-source-edition-2.md) | 753 | `declaration-track:ca618d71aa02d2732ac15ba4e0297e601e75b97f4ff0b848c8997464c3471011` |
| 109 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/const-source-edition-3.md) | 762 | `declaration-track:cb6d074683f33112ef3fcf0784cb552a86ecf6c8f2393a2faa30430c494292e8` |
| 110 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augmented-source-edition-2.md) | 766 | `declaration-track:efd91035274bad090065351bdd91ad9c18fcbf78a20602143b4c9f993597f3da` |
| 111 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 770 | `declaration-track:87deb27b0c5c18490f974d08b123b24a5a21a00cafe1916a30ae30214e966864` |
| 112 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/hom-ext-source-edition-3.md) | 779 | `result-track:cac5818335b54867c48f04377ecfa7006071a36b6fc9500ce4b1c6b03dd3c1c1` |
| 113 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/drop-source-edition-2.md) | 785 | `declaration-track:b24a8df80cb7271437aa523b23d169f401813fe95e60e333557d27c732e02939` |
| 114 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/point.md) | 790 | `declaration-track:479385c6210570412f3c11241ceb0ea052b057b42f1a58b20fd6e0191f51f559` |
| 115 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/toarrow.md) | 795 | `declaration-track:2da513a931f1a17ae52fa27dadafacd20ca9717682086e26192be02041d3ec73` |
| 116 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskeringobj.md) | 813 | `declaration-track:19ea0b7a94dff920856b09c4d1c3976230a4a665ac89bc1682ced4cb17f866db` |
| 117 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/whiskering-source-edition-6.md) | 830 | `declaration-track:f7adc7ac203edc849fb72ebe813be11484c6fdbe11bc6ae8df3805764cbcc96f` |
| 118 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/const-source-edition-2.md) | 846 | `declaration-track:a5a113ff6d06de0594180c135e8fbadf9ccdaa85e6eb110a07d75742d2de78a1` |
| 119 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augment.md) | 861 | `declaration-track:69aaf8f07f653c8a0c9f642c6dd64b2f85714cc93798f916b27188690f0d9ca6` |
| 120 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/augment-hom-zero.md) | 874 | `result-track:2d591c861b1af4dd49b2dc03bd8b1d02fe9192171a0aa1f7075134ad1d1cb5a2` |
| 121 | `def` | [simplicialCosimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialcosimplicialequiv.md) | 881 | `declaration-track:3b1c9a2551a40ede226cfbb7ce5191b520a5fe1febc2a72de0ac536f91eb133b` |
| 122 | `def` | [cosimplicialSimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosimplicialsimplicialequiv.md) | 886 | `declaration-track:01162c2864f26437906fa65452702e982091bf62e06db1223f7b951eb3d76a4c` |
| 123 | `def` | [SimplicialObject.Augmented.rightOp](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialobject-augmented-rightop.md) | 894 | `declaration-track:725f44b5c2e5a3290ed59a71f30bf24a9511eea5f6f6f508734d1b1ae706d112` |
| 124 | `def` | [CosimplicialObject.Augmented.leftOp](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosimplicialobject-augmented-leftop.md) | 903 | `declaration-track:dceab0fa127608d4e015aff8b3eec68a6e0cf09d80923f8fd77168ad998e25d4` |
| 125 | `def` | [SimplicialObject.Augmented.rightOpLeftOpIso](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialobject-augmented-rightopleftopiso.md) | 912 | `declaration-track:b5b2c0503b773e96ccd8ab6fb829e48f625e14249287fd3005689d2df78a1514` |
| 126 | `def` | [CosimplicialObject.Augmented.leftOpRightOpIso](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosimplicialobject-augmented-leftoprightopiso.md) | 919 | `declaration-track:e0f30e971a984c816e43a1ea7f82309bf796e1d986cfc91c40e810aa6116924b` |
| 127 | `def` | [simplicialToCosimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialtocosimplicialaugmented.md) | 927 | `declaration-track:eb616bdb05b50e1803d8eed51e7ca0ed24f871290470c148a7d02d28c5b6400f` |
| 128 | `def` | [cosimplicialToSimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/cosimplicialtosimplicialaugmented.md) | 942 | `declaration-track:9da02f50d0e41b97ffe3ad3a08571be39ed76657ab13a1c4ce006d60e1e3e0e0` |
| 129 | `def` | [simplicialCosimplicialAugmentedEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicNamespaced.lean/declarations/simplicialcosimplicialaugmentedequiv.md) | 959 | `declaration-track:e6d4a778627e262c929b2ea4239c745a444917cb05f952c7ba6fa8a88e26a112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dc172731fda5a1a338a8689ae6cf5bc53312f4d3359843420041f8c08677fe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc71e5aebfff4a9c283978f3fa3559950df5de1d40b745bc319ee9922b88892b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
