# Verification target: Simplicial Object Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bc9f90eed4fe3c4e5ad19cafa710f56c559bc29",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bc9f90eed4fe3c4e5ad19cafa710f56c559bc29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean.json)

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
| 1 | `abbrev` | [SimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialobject.md) | 52 | `declaration-track:bf53103ca79b9429a1ac334ee2f8318a1f089203e29634754568df4467ec8e07` |
| 2 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:1d74720d27e761f470e13bfa08dfe72b1627dc33a507efb9f1ce1628aaa2a121` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-16.md) | 70 | `declaration-track:f882062ecf2cb01b4f181140c7b806e74b67d27edda99cc67ca11540ce12ebab` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance.md) | 73 | `declaration-track:1083015a3e527a75a725ae52bbf86a7cd2c26c4a4e5caf5e317581cc2c2c965b` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-13.md) | 78 | `declaration-track:e808a761976de28e13db5f55bf8c7c22482157eac8a000135c6e98a422bb31b1` |
| 6 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/hom-ext-source-edition-4.md) | 84 | `result-track:dcf688058fbd5df479a87dd915cd1c103a56bfeda5942302f9b388390fcc980d` |
| 7 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/anonymous-source-edition-4.md) | 91 | `declaration-track:f01e196579ac44dbd6d44458d08797dad31efdcea03c6072dcf5421a08dad33a` |
| 8 | `lemma` | [δ_def](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/def-source-edition-2.md) | 94 | `result-track:6a5cd68a034439919dba650fbc6517ff4549dc562e73239345f116a3606ffc60` |
| 9 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/anonymous-source-edition-3.md) | 97 | `declaration-track:d0a5df04be345d211d4b282fa4b1ee5a26fea02c3f717bd3ee53f503772d8dd9` |
| 10 | `lemma` | [σ_def](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/def.md) | 100 | `result-track:34ed89b53d0856cd1f93834dbb9aae9e6dbbbf60f5ce04dc9d8455454f1de40f` |
| 11 | `def` | [diagonal](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/diagonal.md) | 103 | `declaration-track:644b28ad3f437b830724329d0de2033298aa27dff9adb04fd5277b301a6a4ca9` |
| 12 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/eqtoiso-source-edition-2.md) | 106 | `declaration-track:ae22c11599491256ea7001c2ed025aa1a3e3de8de53b81693849faf3708c7e35` |
| 13 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/eqtoiso-refl.md) | 110 | `result-track:9f944c2b2deff5fd79b00f387838b1bab460141083a905ac3d6a9bcc46dc0ef6` |
| 14 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-5.md) | 115 | `result-track:8a41ad373155a92bcb59bbb386f451743b227029975574c21ee0e87d92901297` |
| 15 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-6.md) | 121 | `result-track:c111f383f677d1f3039dd8caf4567a937dfaee85188920039b3939da017eb9f5` |
| 16 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-7.md) | 128 | `result-track:dad14167ad9851135926eefd13ca691ff1ba6692a1e64b9886ddd3e93aadb33e` |
| 17 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-5.md) | 136 | `result-track:b269afe257897c0331e9f5c88d87d84461efd43579bbd1c96dc01e2cee3dbabe` |
| 18 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-2.md) | 142 | `result-track:29e5af54dd0a739b138215a34e8cfa03ba42b154bbed30a8c9281a5c7ea7ceac` |
| 19 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-le.md) | 149 | `result-track:02729c71e5a8a90e13b8c2456c7ddc732d79f6b84e0ef5e7cc2f45a004d29da6` |
| 20 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-4.md) | 156 | `result-track:65e164b54c50f0187dfb7bda1fb9906c4f178c72a3961b0ef04b2c98a5467973` |
| 21 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-8.md) | 161 | `result-track:e0558a7891dc7b60837d9bfc943b24c3d9e46f33314540e8546f94307f54465c` |
| 22 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-succ-source-edition-4.md) | 168 | `result-track:fb32e1511ed5eb2cf83f6823c30dff73c8edcc2a372d66a8c97ea6855a0db0c6` |
| 23 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-succ-source-edition-3.md) | 173 | `result-track:b87e787e6e88eb552caf7d74a9bbdfe31c6e620a13adce4bc95f6a1e6027738a` |
| 24 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-gt-source-edition-2.md) | 180 | `result-track:417735bda643647d0a8544f9b78981324a3490b1a1b447ab81b893b8cd9ab3d8` |
| 25 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-gt-source-edition-4.md) | 186 | `result-track:88d22ed3cc8d680f726fbb9b62159e14ff024eedeaaa7d6e910dafbaa036553e` |
| 26 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp.md) | 195 | `result-track:5160320dd9ce351f4d254243099dc3453938226d65dd93c695d5c1d11baa5152` |
| 27 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/naturality-source-edition-4.md) | 203 | `result-track:f38be4fa9b06af4d86500906fcb66e87ef4a48153db798d709512a84b1db3396` |
| 28 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/naturality.md) | 208 | `result-track:3895f16edb58af6ddd112ff55445acd1416c1d869f369b10b3b9df49c9bbf535` |
| 29 | `abbrev` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-source-edition-6.md) | 220 | `declaration-track:a8f665ee0c69225662ddf069e75736f2f527f0286857cbb5c61f90d9e27cab53` |
| 30 | `lemma` | [whiskering_obj_obj_δ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-obj-obj-source-edition-2.md) | 225 | `result-track:fc61a954cf49e7aa3dce0b671ebd6769fa9ab518b325a0e0c68e95d7c065ec45` |
| 31 | `lemma` | [whiskering_obj_obj_σ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-obj-obj.md) | 230 | `result-track:4ed1b67fbf6f15ef3a2f92681119e61a971c868ad306ff928da0301cb545bc17` |
| 32 | `abbrev` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncated.md) | 236 | `declaration-track:cddba2ff95ad2a271bdc93e8934fa966df7d01506df26e18baaf4bd1e0ac1ed0` |
| 33 | `abbrev` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-source-edition-4.md) | 244 | `declaration-track:78c60198137701a309f033a9392da7d79b5a49ece1177fb09046bc5065269d96` |
| 34 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/macro-rules-source-edition-2.md) | 254 | `declaration-track:e6406007ea4f2d04a5a71aef29686c23abe971a4f9ba7cb62d6d8dff585bb859` |
| 35 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/trunc-source-edition-2.md) | 267 | `declaration-track:f6ee55aee47f68be2df8bfda862cd5c28dc68ff7c97364ad5ad07a521836fae4` |
| 36 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncation.md) | 275 | `declaration-track:f4a2d14f93e7cc4ceced06552a078e26687994257e47290330b29c9c2bca2954` |
| 37 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncationcomptrunc-source-edition-2.md) | 279 | `declaration-track:1e48234cb60cec4671596a50d592cc72a14bd7040dc4271aacd7ae7972e2f732` |
| 38 | `abbrev` | [Truncated.sk](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncated-sk.md) | 289 | `declaration-track:fed5589d93f6c605364b2bd45ecf11e70b780ee01717a79c0dc2a17a154420c7` |
| 39 | `abbrev` | [Truncated.cosk](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncated-cosk.md) | 295 | `declaration-track:09c9d9820f882106354106a74cb983a4549f164e6fc6acab0769132bf27ed71e` |
| 40 | `abbrev` | [sk](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/sk.md) | 301 | `declaration-track:cdedfbe6aecf867aae33ac5c55f15295078e76c55458c6455d297a16d005d854` |
| 41 | `abbrev` | [cosk](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosk.md) | 306 | `declaration-track:54df647ffaded584264c03345484530f9b5154cf2daa6c237247cce9d63a91fc` |
| 42 | `def` | [skAdj](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/skadj.md) | 324 | `declaration-track:e9053fb11d17dbc58bbb854711c69c39c23f2e5181677b7555a71c2f0c0d6bb9` |
| 43 | `def` | [coskAdj](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/coskadj.md) | 328 | `declaration-track:f7adb2eef48ddac88d7aec9ee08a0ea54d019f3969ce4f0de4d1e417f7c6c101` |
| 44 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-9.md) | 332 | `declaration-track:77b2657a6edd99922e4a8b02b968bf52c3b7a1cd7b06fc049278cc3f711fc9d9` |
| 45 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-11.md) | 338 | `declaration-track:ae09b22947d5ef08f42901fda542e51584c641a6f11349c65cedc279f310f74a` |
| 46 | `instance` | [cosk_reflective](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosk-reflective.md) | 352 | `declaration-track:be28aba377f7fd410d2cb51cbbc64514377669ceb9078da68ee4d4b96fb5d390` |
| 47 | `instance` | [sk_coreflective](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/sk-coreflective.md) | 355 | `declaration-track:bc1c03928e915bc088f21a69239021d9ef0f7dbca73ddb14a7d315024598176c` |
| 48 | `def` | [cosk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosk-fullyfaithful.md) | 359 | `declaration-track:ba592fad4f101eae7d7e4fa584cab26324af96def694625d579bbde999b8ce2b` |
| 49 | `instance` | [cosk.full](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosk-full.md) | 363 | `declaration-track:6d814d9672f0a7411467e00f9bf358ec18c068b7f1008739ee0739d41804ac3a` |
| 50 | `instance` | [cosk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosk-faithful.md) | 365 | `declaration-track:1a50971406a59541250552c217bf81a577e385352f88a33b63c6ba879846c8c9` |
| 51 | `instance` | [coskAdj.reflective](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/coskadj-reflective.md) | 368 | `declaration-track:7ccbecef2349c72f9e74870e5c14d4038bd3dff5d482625b5c55f69049de20c0` |
| 52 | `def` | [sk.fullyFaithful](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/sk-fullyfaithful.md) | 372 | `declaration-track:49e2b430ab3cae6fb336e94a615eefda6cd947500975a8be07d7f9d6b7cb2128` |
| 53 | `instance` | [sk.full](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/sk-full.md) | 375 | `declaration-track:3ccca59e98df20ec314f5f6dcae204f1e519ff3f604fab35696e5b0c6bfb8bd4` |
| 54 | `instance` | [sk.faithful](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/sk-faithful.md) | 377 | `declaration-track:03b1f34039f5089d1888bee58a51577d1c1e927e507c26414bbe05b86cc0ec3a` |
| 55 | `instance` | [skAdj.coreflective](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/skadj-coreflective.md) | 380 | `declaration-track:12f4a372c026422b9bd0cf39d2e2788932d379bd7b409001cd1d896952d0da18` |
| 56 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/const.md) | 390 | `declaration-track:4bedf6bc43f08dc273e036350a9d1ea9b93bfd2d4463bebfaae8c01c4693ec2f` |
| 57 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augmented.md) | 395 | `declaration-track:87e9bc73af152052a72dee89a7de8eae8dd1bb44e61845d57a6dc8c4631e5573` |
| 58 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-15.md) | 399 | `declaration-track:f0a1e5d35290cbc341a2c30001f863722dfc864e326e0fcc50bc624a728b4e4c` |
| 59 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/hom-ext-source-edition-2.md) | 407 | `result-track:bb08c0693cae1a22bce243276031a10861f3af3ea914f4ec386a7b83eb249290` |
| 60 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/drop-source-edition-2.md) | 413 | `declaration-track:ebc434ff1c9096e01755cf783094f697b03b6a6f78e7dc3ca4e1fb996c76dc33` |
| 61 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/point-source-edition-2.md) | 418 | `declaration-track:a847694e7b9ded43a42ec9eca35e4521bb37b01c3bcc2bec4b052d3a90687238` |
| 62 | `lemma` | [w_app](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/w-app-source-edition-2.md) | 425 | `result-track:96e430784dc8776b61efa0720d9fa24a167ccae150292950131193148365e7f4` |
| 63 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/toarrow-source-edition-2.md) | 431 | `declaration-track:f34a0170e0b8beac1f81526f809aecb1ca880e101f28b02152e9b8ee83e5af55` |
| 64 | `theorem` | [w₀](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/w.md) | 446 | `result-track:9546a10f1663be628842653200eb190ce90782364e6b74d53736f2ea703fb867` |
| 65 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskeringobj.md) | 456 | `declaration-track:b1b1b35f140a504332210fea4cd41847a90cf12293a766060eceec6c90c0fff1` |
| 66 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-source-edition-5.md) | 469 | `declaration-track:9a5f862358d59d00dd446ba79c0ece993bc746c53b4ae81f364333d737dcb339` |
| 67 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/const-source-edition-2.md) | 485 | `declaration-track:89d15b18164c27a52a54ffa78d02bf176e734e288116877e312ffc37d0dca7a9` |
| 68 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augment.md) | 499 | `declaration-track:be5409d8604ae2937fdc52e58754baa6e9e31c5896be3532886496646c45745c` |
| 69 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augment-hom-zero-source-edition-2.md) | 515 | `result-track:dbb181908584255123f84c44c6a2b2d9f6fee6b65fa73600a1ecbd50fa58c068` |
| 70 | `def` | [augmentOfIsTerminal](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augmentofisterminal.md) | 522 | `declaration-track:f943ba4ac5d7a2eaa0506ac8f286b6ddd1f26b6a6bb83c569bb956bbb87e80cc` |
| 71 | `abbrev` | [CosimplicialObject](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosimplicialobject.md) | 531 | `declaration-track:8addc8576044ae484279cceb4ff9b293f5800c9253b2c636deec159f25a21eff` |
| 72 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-10.md) | 541 | `declaration-track:8935829970163bf1171cbfbdcaa935af17c1d230f797aefc55ea92b17f2be6ad` |
| 73 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-14.md) | 546 | `declaration-track:ebed1e563bb87c8b4f153ceeeba520b7915a95aba2622bbce24dc12ce0e9d612` |
| 74 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-12.md) | 549 | `declaration-track:e28de6b69895407ef99ffebb959f5cac3a61b70ac34903f40fff7cbf6b8499f5` |
| 75 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-7.md) | 554 | `declaration-track:5ee797b7891aec11f03dfec55abaf4fa3f56f5502d68f2c85fb80f79343ffe07` |
| 76 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/hom-ext-source-edition-3.md) | 560 | `result-track:c61818f179a74485f1aa1ef21f6b69aa407ecd273b963fca11aac7c557cb4e44` |
| 77 | `def` | [δ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/anonymous.md) | 569 | `declaration-track:7c3cd47878700177fcbdf3b965748ad01b43de2f687ebc8248308d3bbbd67336` |
| 78 | `def` | [σ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/anonymous-source-edition-2.md) | 573 | `declaration-track:c93031f93359fdda9a6063036282d4d2e346f6c3a764bbc4b7ffe374b95bf11a` |
| 79 | `def` | [eqToIso](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/eqtoiso.md) | 577 | `declaration-track:79991e41d02355630cc40fa7857f9ccbbd607d39ca0704ab415f2d280555ba0c` |
| 80 | `theorem` | [eqToIso_refl](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/eqtoiso-refl-source-edition-2.md) | 581 | `result-track:d33f5ad714c63966d97d4a4ca56c4d31c480831399ad266d6e751f60ec20c6a9` |
| 81 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-3.md) | 586 | `result-track:817a35d85cb105e7ea64215ddba7138e20d06a18398efb4f48ce3adb79e0b150` |
| 82 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-8.md) | 592 | `result-track:ea485dc153bfdc95b9f8039e5c012e7276b75f9a93fbc639d39329d4b4215e53` |
| 83 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-4.md) | 600 | `result-track:81921302bdeb4c951640e63a4dda841a196c9020b465eac0fcb183c808f6249e` |
| 84 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self.md) | 608 | `result-track:06342f75e5f0dec6c0328044ac61515c81377e26cc2d75cf7d7a5ef2fc0d6346` |
| 85 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-6.md) | 614 | `result-track:c38cce4e8b5d2f4fbe7616891299b658c75b135764ec73044ab7c142fbf9b849` |
| 86 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-le-source-edition-2.md) | 621 | `result-track:8fecaa44242378f3032707c929c993eae46dc8690d48b1dbae8f44aef7551246` |
| 87 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-3.md) | 628 | `result-track:5fc03fafafee87bbbb2167ebfaeba8dd28ed36dc68b0108840695a8e569e8b1a` |
| 88 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-self-source-edition-7.md) | 633 | `result-track:c50348622ee8a6d6d3bdffa1bc76f53d9248e832df7999e242d8f78274d3a910` |
| 89 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-succ.md) | 640 | `result-track:20b555cd6613e4eada7e43c186efd887db555972eafbba0d062aadbb349ddcf0` |
| 90 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-succ-source-edition-2.md) | 645 | `result-track:888291557bc897b9e1e2f8b17dfb10544b326cbaa8a36d60c31ad33b189e2080` |
| 91 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-gt.md) | 652 | `result-track:15811e5c4baaaf132c8a5a74eaebb657b211ba3fe5939d1b392ad203ceea2a23` |
| 92 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-of-gt-source-edition-3.md) | 658 | `result-track:7c93718fa1e83952e4c66842cc3b1b64b0e6528a34a54df9ea6475f5c270303d` |
| 93 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/comp-source-edition-2.md) | 667 | `result-track:58f487017843e130feedb29dacd2e55fcad836abbdecb2b8b98159bed36b7404` |
| 94 | `theorem` | [δ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/naturality-source-edition-3.md) | 673 | `result-track:bb873d14e377b0a2e2147734775e22ed2cdc128b21adcc39d03cd17180ad907f` |
| 95 | `theorem` | [σ_naturality](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/naturality-source-edition-2.md) | 678 | `result-track:6e6d806ade837b6c565059ae5733e4e6c476d1e0b2d13864582b5bf94d26937e` |
| 96 | `abbrev` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-source-edition-2.md) | 685 | `declaration-track:1d0b3c7811adfa1d4f6ace63ef009f4167fc594827cdf20bb78a65a39f34b825` |
| 97 | `def` | [Truncated](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncated-source-edition-2.md) | 690 | `declaration-track:ec68775e332f31ba7918ecf854bc89afafaea9ffc85ae547b8f5540513e510e5` |
| 98 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-3.md) | 699 | `declaration-track:131f5ba0afae75f478ddc0750fbd54dfde2880518d8ded38fc19da45d22502f6` |
| 99 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-8.md) | 704 | `declaration-track:664cd2765eb7880461056605f728d30242ca15529cb36f3bd37839c3dd823302` |
| 100 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-5.md) | 708 | `declaration-track:51c6a8682314deea942c9fb61ecbd94c00d961bdcecfa7c915005614cea40adf` |
| 101 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-2.md) | 713 | `declaration-track:10f488c0b84f2866b67d0e62cbc3c8d5c3b1d9788abf2bea232bf3e58c7796e5` |
| 102 | `abbrev` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering.md) | 718 | `declaration-track:13c7dd0f098bce230f7cd6fe48ab9e2ee99d05771294b0be22fa2c51dd4242a4` |
| 103 | `macro_rules` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/macro-rules.md) | 728 | `declaration-track:05c47df844a101f7b321867a026821509153de4e2890bfa413088886ab3ce272` |
| 104 | `def` | [trunc](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/trunc.md) | 739 | `declaration-track:062c469ce40e444d0523b969c7dcdd3c87eb791c478df4c47719d00b4beac52d` |
| 105 | `def` | [truncation](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncation-source-edition-2.md) | 747 | `declaration-track:fab206c83d64436f3379f6d0956e807e0f474238b66fccf1c8da3b1bdb6deae1` |
| 106 | `def` | [truncationCompTrunc](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/truncationcomptrunc.md) | 751 | `declaration-track:1277c7ebe93defb283ca7f3dc90e5ae41bf35ab4e5f96e658806f16916209569` |
| 107 | `abbrev` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/const-source-edition-3.md) | 760 | `declaration-track:e5e7d50dfa587da5ffff8783a43cc0fc4a97938b49d370e272375ab6d58a779b` |
| 108 | `def` | [Augmented](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augmented-source-edition-2.md) | 764 | `declaration-track:e17ac7467eb0134281e27eb202547d5f7fc121242ba85c52baf13263d4a5c578` |
| 109 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/instance-source-edition-6.md) | 768 | `declaration-track:55385b924fe5be515599573dce906ec328da20b254936aae5167fca2312af18b` |
| 110 | `lemma` | [hom_ext](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/hom-ext.md) | 776 | `result-track:0054532deb1b8d418cbc2d30da134763a0ce94d66206e01c8f48ee013919cf9f` |
| 111 | `def` | [drop](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/drop.md) | 782 | `declaration-track:df749948a7417ee706711d492f2b25f1a08b094a0b0c1a74dc3710cd215d9b06` |
| 112 | `def` | [point](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/point.md) | 787 | `declaration-track:64029d318080a10fc055f501be24e3d4fffd4a0fc99ee7b394e85a03f26f108a` |
| 113 | `lemma` | [w_app](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/w-app.md) | 794 | `result-track:271c7181af990b6a043e5276d595b8aad4c52ecf8fde317ca9ea10064cdd0760` |
| 114 | `def` | [toArrow](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/toarrow.md) | 801 | `declaration-track:8045be46566e83d0781599bdd9290f113a43b472a36e6b2c529cf7b243c26b9f` |
| 115 | `def` | [whiskeringObj](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskeringobj-source-edition-2.md) | 817 | `declaration-track:bf97906a9c4acf891803262d23c9bacf5b3ddc0b9775648dfb7bca8fcf87563d` |
| 116 | `def` | [whiskering](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/whiskering-source-edition-3.md) | 835 | `declaration-track:6096c5edc28af950cf5d94a5cee3faec9b07c2a991f89d2e3fccb018f896ac17` |
| 117 | `def` | [const](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/const-source-edition-4.md) | 851 | `declaration-track:ed37ecf63c4717035177024bb79dccff070e1e389efd08df045815a46ed6d4a5` |
| 118 | `def` | [augment](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augment-source-edition-2.md) | 867 | `declaration-track:fded2a8d00bb32a2df8c695445d9887f4ad164bafe0b92fadcd458ed280ae6bc` |
| 119 | `theorem` | [augment_hom_zero](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augment-hom-zero.md) | 881 | `result-track:5e557f92ebd4df064cc9b9a9dbab5ae40eab1be8ecece089f3a89c76b0e47a8f` |
| 120 | `def` | [augmentOfIsInitial](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/augmentofisinitial.md) | 888 | `declaration-track:6ef5d2dabaf050e0caf86a196c8ec733dfc210c78a9f4fc1df69daa11cc25792` |
| 121 | `def` | [simplicialCosimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialcosimplicialequiv.md) | 898 | `declaration-track:f8e5896f41e630ca948d017c561357a7965b2dc927ca41cb64efcd2ec9130c0f` |
| 122 | `def` | [cosimplicialSimplicialEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosimplicialsimplicialequiv.md) | 903 | `declaration-track:1c27827d9e204dfe34945ad6e28074d4ae172103d883e9d79b20bd4c717ba6b4` |
| 123 | `def` | [SimplicialObject.Augmented.rightOp](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialobject-augmented-rightop.md) | 911 | `declaration-track:55ffc8337a3909aa4791ffaa970045faf1521671f6faa4fcdfac5d195182df77` |
| 124 | `def` | [CosimplicialObject.Augmented.leftOp](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosimplicialobject-augmented-leftop.md) | 920 | `declaration-track:1f89c1ae737821d2441f681722d37a69a5b8d49e3ef7a84e60d4d3d812956814` |
| 125 | `def` | [SimplicialObject.Augmented.rightOpLeftOpIso](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialobject-augmented-rightopleftopiso.md) | 931 | `declaration-track:1f312fe1001b683e2b677e70b450fc97f931a1606d0c215d124e0b3e77533dac` |
| 126 | `def` | [CosimplicialObject.Augmented.leftOpRightOpIso](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosimplicialobject-augmented-leftoprightopiso.md) | 940 | `declaration-track:3daf11e331f59bd8cd58c22a699e96f4c44f0d1dc985df7e918138b55332cdc2` |
| 127 | `def` | [simplicialToCosimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialtocosimplicialaugmented.md) | 949 | `declaration-track:c61a64fb7de32c6fe74b8da429e262f9eab3fabb889f68022ab2fd84eeb7265d` |
| 128 | `def` | [cosimplicialToSimplicialAugmented](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/cosimplicialtosimplicialaugmented.md) | 963 | `declaration-track:d87e787f6c67e515ea4636df87b71445e56a1ef5abaf93a63ab8184a2be22a8d` |
| 129 | `def` | [simplicialCosimplicialAugmentedEquiv](../../../../AlgebraicTopology/SimplicialObjectBasicPublic.lean/declarations/simplicialcosimplicialaugmentedequiv.md) | 982 | `declaration-track:0baa531549c6c4c1689f560a488d318eeeb4d3d150770b3676224c2d0c144e53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac1add71ac74d10a1bbefd9ce4c4d50ad0374bb2265f092620f0cf69d20419da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfcf8af751937881250cdde26b33129a32d5b60c4eb4ee72de29945b89709e355.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
