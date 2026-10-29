# Verification target: Vector Field Pullback Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `615e126c4fe99c2dbf0bc2c6eafd189eeb7b2734`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 78 | `declaration-track:ee1414842d70274b36520f39d1937713fa999bfa69e839f09d0129c5f448f510` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:208c45b783d821483f7d58e21e5f1b8e953cad2e66955f0e712f4a84b5cb95e2` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 86 | `declaration-track:658a1af9227bf0d827e51a8f00485737359ee5d38b8fe1d6c9d7cddeb4308ddf` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/instance.md) | 90 | `declaration-track:1626715172f8bf46167267adf7c116e7722ef425476bbcc0efca43bbf64c14c9` |
| 5 | `def` | [mpullbackWithin](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin.md) | 108 | `declaration-track:64de64a15d0c78db484f45d805d9bfb87df0544bc45200f6b65ba88a76365a35` |
| 6 | `def` | [mpullback](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback.md) | 115 | `declaration-track:91e9d3162072bc8fd24b2faeb701e7ba173476e94d708b463b7b747dd9e02149` |
| 7 | `lemma` | [mpullbackWithin_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-apply.md) | 119 | `result-track:999187dea8e683cbac6108fb91327bf733cc40aff337da336322a63531aaac3c` |
| 8 | `lemma` | [mpullbackWithin_const_smul_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-const-smul-apply.md) | 122 | `result-track:1386e70763bd5efb7dcfaa2214fc5fe924d454919071156c485c48d25bfea316` |
| 9 | `lemma` | [mpullbackWithin_smul_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-smul-apply.md) | 126 | `result-track:0e2524d2d48401fb9721f2be39c24bc6ef83a6b93634b0cf31cc95dd65e35126` |
| 10 | `lemma` | [mpullbackWithin_const_smul](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-const-smul.md) | 130 | `result-track:528c66b666d19f01b02ea25ce720b4619e0a16c89a07a3702a6a2365105d8661` |
| 11 | `lemma` | [mpullbackWithin_smul](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-smul.md) | 135 | `result-track:a83a4bc454edd86e3c34f553af87137bebeef57331c62954a7d0b7e0ef7ae6ab` |
| 12 | `lemma` | [mpullbackWithin_add_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-add-apply.md) | 139 | `result-track:d9430a05c1ba06fff0428288762951e134ab9c158a2cc5475e93ab984b8edac9` |
| 13 | `lemma` | [mpullbackWithin_add](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-add.md) | 144 | `result-track:f7a560d19a87c9aed8169606eff7cf5678827504ce46e349272f361172c03b3b` |
| 14 | `lemma` | [mpullbackWithin_zero](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-zero.md) | 151 | `result-track:d4e40a4442a33e48cea345e983765910e87ffe93ed894867aabc662a17d4b670` |
| 15 | `lemma` | [mpullbackWithin_neg_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-neg-apply.md) | 155 | `result-track:e0338492f8eea5c6e27058a2e00ab1dd50675c6da694ae275d5527a3adeccfa2` |
| 16 | `lemma` | [mpullbackWithin_neg](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-neg.md) | 159 | `result-track:a4543aa235c19c2f69610ee1708b0e694b752f8a0e0e65898e20f3d51b054105` |
| 17 | `lemma` | [mpullbackWithin_id](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-id.md) | 164 | `result-track:d6ecb293757717eba031225c3deb49186cbc2179ffbb335795981196025521d1` |
| 18 | `lemma` | [mpullback_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-apply.md) | 168 | `result-track:e8a19b81dce6e155570d818ef5fee1820db2a5bf7394a3e63eae56902d81b136` |
| 19 | `lemma` | [mpullback_const_smul_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-const-smul-apply.md) | 171 | `result-track:81767c3e3769e9041ca48836c26fbf46d1908afadf46ba1c4858f17c9a652e71` |
| 20 | `lemma` | [mpullback_const_smul](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-const-smul.md) | 175 | `result-track:c2aa868d828715d553840723998841f1c02e208a352f204f548f9271ea26e482` |
| 21 | `lemma` | [mpullback_smul_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-smul-apply.md) | 180 | `result-track:98a46e8ac10b4397eb1a1daa407f748d44249d1bafd7acec4fc56b8bfc02f09a` |
| 22 | `lemma` | [mpullback_smul](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-smul.md) | 184 | `result-track:e36219353b45c688530c0bc46f58d0a11726fd6f3e09d3f2238323ceba9277b4` |
| 23 | `lemma` | [mpullback_add_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-add-apply.md) | 189 | `result-track:5d77e6a6fb3a77b5919666f7c70d4b0062c79219f6be9ea58d31ed3922b89aef` |
| 24 | `lemma` | [mpullback_add](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-add.md) | 193 | `result-track:9e98744fc299190824da6e0b37506507795767325529ec615ccc773016530bcc` |
| 25 | `lemma` | [mpullback_neg_apply](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-neg-apply.md) | 198 | `result-track:eed45a42ffc74c42d233840ec015d50b0bd133921c1607b442b99544ccb2c9bc` |
| 26 | `lemma` | [mpullback_neg](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-neg.md) | 202 | `result-track:b93d09c28376fadc41cb0bc1db69ebea9ddc44c335c0fa22c3084a460686be5c` |
| 27 | `lemma` | [mpullbackWithin_univ](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-univ.md) | 207 | `result-track:172d15e57148224f5f1704afe3a033da930b978e32b8cf44320b50a668c76b4a` |
| 28 | `lemma` | [mpullback_zero](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-zero.md) | 212 | `result-track:845244ada5e523d845aafefd429c39717115f880d15a931aa359e548ec946c35` |
| 29 | `lemma` | [mpullbackWithin_eq_pullbackWithin](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-eq-pullbackwithin.md) | 214 | `result-track:fe5d61ccb443528e41ee6a1e16393e4627bdab28f1e8e0c55a4509b38a3fb931` |
| 30 | `lemma` | [mpullback_eq_pullback](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-eq-pullback.md) | 221 | `result-track:8deffbb841a24a03b7d372366af1faf069a0c58a967572eda8c6a67b0eb2c77c` |
| 31 | `lemma` | [mpullback_id](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-id.md) | 225 | `result-track:7266a05cf4718937bd9586fc74a09f6c4c69e5056cf5bf12c7ae0707cb3e1d7c` |
| 32 | `lemma` | [mpullbackWithin_comp_of_left](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-comp-of-left.md) | 229 | `result-track:d6993fd0b22f91284b146a189e43322e674fe52df4658d656f83f7a4f94bda61` |
| 33 | `lemma` | [mpullbackWithin_comp_of_right](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-comp-of-right.md) | 241 | `result-track:8353618ab01042779fb2599bc84ba4e310ef3dcc9e608c3b541303648a15dcfc` |
| 34 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter-source-line-267-occurrence-2.md) | 267 | `result-track:36a3dcf3335af286c511c4aabeb065f8d9465087aa207acbb88187aaa311d5ce` |
| 35 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter-of-eq-source-line-330-occurrence-2.md) | 330 | `result-track:c9ea3d17c63d00905fe6de1c893c068f032f31e79bde905dc3a626ceae3b3d81` |
| 36 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter.md) | 340 | `result-track:0a0bdd361ba6e77def456af20e76f2758d93ca5fa6c0e6f962f0bbb62cfa99e8` |
| 37 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage.md) | 350 | `result-track:334df7777cf7de8b33f316672f37cba109cb8d1788e0ef0233b8228d21fd5f45` |
| 38 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-of-eq-source-line-359-occurrence-2.md) | 359 | `result-track:c2ec0672ea17e8109cad35277d459ab7df53027a0573ce0d99bd9ed887911a15` |
| 39 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-source-line-368-occurrence-2.md) | 368 | `result-track:dc970e1b93cb761fe89292121eaae3e1a5829487df5a4d5eea368d2380ea0a31` |
| 40 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-source-line-378-occurrence-2.md) | 378 | `result-track:edc4f29b8093e17e705b21b4f7d210625a0dfe4125bdc55623bcdf5c7dca6f17` |
| 41 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield.md) | 386 | `result-track:08a4e11769a0d8ab5e382d3a7a6158241f48fbbaaa2ba530563e9d1744b97410` |
| 42 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter-source-line-401-occurrence-2.md) | 401 | `result-track:8185720bead6778d9a2506bad6629cfa2ba4fdda4d1628bf96ea9dae850b555c` |
| 43 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter-of-eq.md) | 461 | `result-track:1639042b6cbcf756e5397b7f2c385371d792ecb4c28cf7e1cfe1fc36f60f7a34` |
| 44 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-of-mem.md) | 471 | `result-track:61b598682869158bb7f8a3378cbcdd805bcef3817ab539000b4a2fe3c3a8f02f` |
| 45 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-of-mem-of-eq.md) | 483 | `result-track:1bfc297f075b0ed2394751459b4f305afd52e7d7690b8b13149d2272deb065a5` |
| 46 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-source-line-494-occurrence-2.md) | 494 | `result-track:3ddc8253f58d1e767db4417503391bad5daacd1c8d117e55bc73104e871d5255` |
| 47 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-of-eq-source-line-505-occurrence-2.md) | 505 | `result-track:5dddde563cca79f973bfce4c6135cdfd514129b642de071d7ea47c10205cd00f` |
| 48 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield.md) | 515 | `result-track:0fd4b9e7f326e158246b23ef87f18a46da0ab920a9dc2e0750dddf3d6abc4a3e` |
| 49 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-of-eq.md) | 537 | `result-track:1a31849b6c706816ff68022930e9ca90e934271c8c64aed10f323b29721128ea` |
| 50 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullbackwithin-vectorfield-inter-source-line-548-occurrence-2.md) | 548 | `result-track:da09b23f993d1b982d1e85485fd68c68180e24c71add99299c47b176913c8bd8` |
| 51 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-source-line-559-occurrence-2.md) | 559 | `result-track:b438e7e4c73fb705b722b8e2fe1670fa4d694a49744429ef1c5bfb3ae8ac33a9` |
| 52 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-of-eq.md) | 569 | `result-track:3197e0d92210e8b181d6d904a3d4db8afde2465d577f0445bb39bb4d862a1e11` |
| 53 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-of-mem-nhdswithin.md) | 579 | `result-track:2e8dcedb502bd73ba7a6f652b2fba6d1419904c19fd98ceaa75afe2af95ab15e` |
| 54 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-of-mem-nhdswithin-of-eq.md) | 588 | `result-track:719759450f1afae6a93e27bbd36a0a12006c55637bbc7d8be44b476989ada4cd` |
| 55 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-source-line-599-occurrence-2.md) | 599 | `result-track:be83a56ae08236f2f0e0fb93f65fdec6020e34f5fd06ab91753548f02d7bee46` |
| 56 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-preimage-source-line-608-occurrence-2.md) | 608 | `result-track:9b5d807f3ef1e8216e0732d526a6597c5e8d1d431f3fef760e2b21d73e7d7280` |
| 57 | `lemma` | [Vector Field Pullback Namespaced Public](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/mpullback-vectorfield-source-line-617-occurrence-2.md) | 617 | `result-track:93a207ca250c8513ad29caf440149802cf76bf8bc9c9dc68602c4ca648f1bdda` |
| 58 | `lemma` | [contMDiffWithinAt_mpullbackWithin_extChartAt_symm](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/contmdiffwithinat-mpullbackwithin-extchartat-symm.md) | 623 | `result-track:475fb83067052605b843701952de79bba4d7db89f1b3380ef304ebcf15470394` |
| 59 | `lemma` | [eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/eventually-contmdiffwithinat-mpullbackwithin-extchartat-symm.md) | 635 | `result-track:9b5d0f2ff386ce1851e8a9f2ee62decae0b9d0b44cc2cbce12a34351bc8eed67` |
| 60 | `lemma` | [eventuallyEq_mpullback_mpullbackWithin_extChartAt](../../../../DifferentialGeometry/VectorFieldPullbackNamespacedPublic.lean/declarations/eventuallyeq-mpullback-mpullbackwithin-extchartat.md) | 652 | `result-track:171749af43090d947855f5fe979432c6b56a3fa5725ff5540d07d7fc913fccdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7a869a9755ae47d2fa73d03e61645b12853782d1d5d645f8acfa565f7357e6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Pullback/Variante84f17159a57817c2ff9137810c4fa2b966f0d7f5b55a534912d4b5351fd0aee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
