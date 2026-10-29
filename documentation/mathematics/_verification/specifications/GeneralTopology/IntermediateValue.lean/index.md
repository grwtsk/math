# Verification target: Intermediate Value

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9815678598a7e8bdb10cb9f67f9778c32c651f10",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IntermediateValue.lean/index.md) · [Full source](../../../../GeneralTopology/IntermediateValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9815678598a7e8bdb10cb9f67f9778c32c651f10`.

Source path: `GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLatticeIntervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [intermediate_value_univ₂](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-univ-source-edition-2.md) | 67 | `result-track:43413ee9954f96f26bea5ae6d82bf5bd7a67ee28c7ad2b8be1a1a8cd76924612` |
| 2 | `theorem` | [intermediate_value_univ₂_eventually₁](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-univ-eventually.md) | 74 | `result-track:5abad0015d971defd631e85ab97e4195ff6622b8a4e0c1c1275a92a8c32c63bc` |
| 3 | `theorem` | [intermediate_value_univ₂_eventually₂](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-univ-eventually-source-edition-2.md) | 79 | `result-track:ccbb36a2c5ed000bf1e7fc6cc97d5144622783dfd79fb39a27eeec172d28e1f3` |
| 4 | `theorem` | [IsPreconnected.intermediate_value₂](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-source-edition-2.md) | 89 | `result-track:b7adc27658f2369393eeb88778330afde90d962c035efa220b5debce6e174156` |
| 5 | `theorem` | [IsPreconnected.intermediate_value₂_eventually₁](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-eventually.md) | 98 | `result-track:36822fa967dfa601ef68f8bbe0a5cade9bc99abb24e66be25634d53b0d79297e` |
| 6 | `theorem` | [IsPreconnected.intermediate_value₂_eventually₂](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-eventually-source-edition-2.md) | 107 | `result-track:db01f830535becae6c3aee91e35672ccb9e1ab7551a2977bde6e6361530b9192` |
| 7 | `theorem` | [IsPreconnected.intermediate_value](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value.md) | 119 | `result-track:a604bfddadb97178ff61b00774ce8f0c58a06272f72e63234dad714e4611eafb` |
| 8 | `theorem` | [IsPreconnected.intermediate_value_Ico](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-ico.md) | 123 | `result-track:00a4562f6bdaf703eeccf144afd4b64a8aa05a708986ad0b553b9ae6c7e8c4e9` |
| 9 | `theorem` | [IsPreconnected.intermediate_value_Ioc](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-ioc.md) | 128 | `result-track:4e7fc29bb57de8ccea279ec338084c07541ee25b215a4da327d5f3473b54b854` |
| 10 | `theorem` | [IsPreconnected.intermediate_value_Ioo](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-ioo.md) | 134 | `result-track:9f0a2168c5924e2cc974ee186f84217a862113329eea292d0ccfc34811f9ccb2` |
| 11 | `theorem` | [IsPreconnected.intermediate_value_Ici](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-ici.md) | 141 | `result-track:ed0dda4b670f8b6d528b6dee61e8fb094ae2c18dc8580af21e2fc22da4462b53` |
| 12 | `theorem` | [IsPreconnected.intermediate_value_Iic](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-iic.md) | 146 | `result-track:c06db06c78740a93cf72998fd3066c83eb1a9499bab361ee2d8cebb5e7cd7254` |
| 13 | `theorem` | [IsPreconnected.intermediate_value_Ioi](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-ioi.md) | 152 | `result-track:fa233191b2f92b57931f4ae846534a65d3407592bbd796889313c3f0c3ca28a6` |
| 14 | `theorem` | [IsPreconnected.intermediate_value_Iio](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-iio.md) | 158 | `result-track:0eddfbc3afcd1698e22adfa014ee037fc5334fa8caff56fdd43beaba755f9f11` |
| 15 | `theorem` | [IsPreconnected.intermediate_value_Iii](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-intermediate-value-iii.md) | 164 | `result-track:3ab20beb76f9110f83c9e8faa9d235202c7b061b20dac29f2f48afc36e808441` |
| 16 | `theorem` | [intermediate_value_univ](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-univ.md) | 171 | `result-track:0a34e33922d007413285e2e17abb960773d4201da3bae49eaedc146bbbfc8539` |
| 17 | `theorem` | [mem_range_of_exists_le_of_exists_ge](../../../../GeneralTopology/IntermediateValue.lean/declarations/mem-range-of-exists-le-of-exists-ge.md) | 175 | `result-track:532c1556b5ef837c12f97695e27b490ee27f42cd8802a46eddf8c13df67fcb4a` |
| 18 | `theorem` | [IsPreconnected.Icc_subset](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-icc-subset.md) | 196 | `result-track:eab9fc4db361219b6cd255dcb3d238f1f868eadd1def8e8bce26084ba4739a29` |
| 19 | `theorem` | [IsPreconnected.ordConnected](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ordconnected.md) | 200 | `result-track:5ffc2251edd2b26347f2a804090cb0e09fee5e65d6f5ae009858ed2191e27b5e` |
| 20 | `theorem` | [IsConnected.Icc_subset](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-icc-subset.md) | 204 | `result-track:4dceab5802706c8f67fe323864020296e6eaab5bdd1faabd9332ffaa22dab417` |
| 21 | `theorem` | [IsPreconnected.eq_univ_of_unbounded](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-eq-univ-of-unbounded.md) | 210 | `result-track:4d0c03aed4468c0fdb18db1a288db1f02392c6577a8879e9938d7a551645d22f` |
| 22 | `theorem` | [IsConnected.Ioo_csInf_csSup_subset](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ioo-csinf-cssup-subset.md) | 223 | `result-track:edd12e21425ae521d239b16060cfdc87bac47379db15d8c5adfe6e8c7f0fffbd` |
| 23 | `theorem` | [eq_Icc_csInf_csSup_of_connected_bdd_closed](../../../../GeneralTopology/IntermediateValue.lean/declarations/eq-icc-csinf-cssup-of-connected-bdd-closed.md) | 229 | `result-track:eb7fb77879b7556a79d0549fd233a790c90f05ce060dbdca5df83c45742ddd81` |
| 24 | `theorem` | [IsPreconnected.Ioi_csInf_subset](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ioi-csinf-subset.md) | 234 | `result-track:05c40f5317bf90d9c14656b2633de273a21b922930cfcfa04ea2864977d2ad3b` |
| 25 | `theorem` | [IsPreconnected.Iio_csSup_subset](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-iio-cssup-subset.md) | 241 | `result-track:9100217777c63611a6dd4e0e090e14062bb57ef194e4003caf6f0132dce760ab` |
| 26 | `theorem` | [IsPreconnected.mem_intervals](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-mem-intervals.md) | 249 | `result-track:64570ac0cffb8ec277464559ebe7eaccdfe6adab5462faa7667af883ecf156e2` |
| 27 | `theorem` | [setOf_isPreconnected_subset_of_ordered](../../../../GeneralTopology/IntermediateValue.lean/declarations/setof-ispreconnected-subset-of-ordered.md) | 278 | `result-track:fcbf4c88252fbbeca90e42d8625794b0125c479b3159970c3ff34537a370a4a2` |
| 28 | `theorem` | [IsClosed.mem_of_ge_of_forall_exists_gt](../../../../GeneralTopology/IntermediateValue.lean/declarations/isclosed-mem-of-ge-of-forall-exists-gt.md) | 299 | `result-track:519099fcf92b9440e5a2cee0676fa31fa4dbf3a57e34802d8e0c5c8107cf4eb1` |
| 29 | `theorem` | [IsClosed.Icc_subset_of_forall_exists_gt](../../../../GeneralTopology/IntermediateValue.lean/declarations/isclosed-icc-subset-of-forall-exists-gt.md) | 316 | `result-track:6f9857198480501d52983b5b93610f2060da62c61b99771b22dad8c53e239d7c` |
| 30 | `theorem` | [IsClosed.Icc_subset_of_forall_mem_nhdsWithin](../../../../GeneralTopology/IntermediateValue.lean/declarations/isclosed-icc-subset-of-forall-mem-nhdswithin.md) | 335 | `result-track:a15c1825a298bcc069c5a79d6fa0003776bd2eef3c0e5db4656625edf81afd00` |
| 31 | `theorem` | [isPreconnected_Icc_aux](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-icc-aux.md) | 343 | `result-track:257e8dd7966a4561b245b544c4b35738b00560b4cdc1691cac93b77df5df3e6d` |
| 32 | `theorem` | [isPreconnected_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-icc.md) | 361 | `result-track:b8f5cd2a566a3da4d090fa95130425552fb330a4cb91c10000e590386248a6ae` |
| 33 | `theorem` | [isPreconnected_uIcc](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-uicc.md) | 372 | `result-track:19f94c243000940b30505654767d3b70326820a1ac29a4292006719b3f3e99f9` |
| 34 | `theorem` | [Set.OrdConnected.isPreconnected](../../../../GeneralTopology/IntermediateValue.lean/declarations/set-ordconnected-ispreconnected.md) | 375 | `result-track:8767628ce9cf45854e6b813d6dbe69a2e8073622264ce1e720eab0af4f0847b3` |
| 35 | `theorem` | [isPreconnected_iff_ordConnected](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-iff-ordconnected.md) | 379 | `result-track:d3da228adfe72be51f992baab3932a26ac99c1cb0b7315b16a2a664a79c73da1` |
| 36 | `theorem` | [isPreconnected_Ici](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ici.md) | 382 | `result-track:15d664a9f6d3a1999cea930cc32bd07e9cef41ed3c32e1d97091350d9226dcf3` |
| 37 | `theorem` | [isPreconnected_Iic](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-iic.md) | 385 | `result-track:465ee382ce034754e2a7cf36dc2d06fd3d719dc09e868c7ce51b40d93eaea768` |
| 38 | `theorem` | [isPreconnected_Iio](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-iio.md) | 388 | `result-track:14dcb463c517e093712d315e6d6e3a7483aa53bd340d32a4508f5f136aacfff7` |
| 39 | `theorem` | [isPreconnected_Ioi](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ioi.md) | 391 | `result-track:0864301d816aaab16476da0f616746692f6201f9bd314eb932f290a6b416e02e` |
| 40 | `theorem` | [isPreconnected_Ioo](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ioo.md) | 394 | `result-track:59a4f0aa985147e567e28ec52bc66a12e56e1139aae2abf83d3ac08dfa965e58` |
| 41 | `theorem` | [isPreconnected_Ioc](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ioc.md) | 397 | `result-track:83500267f5c1e390c9258d28e37dfaefed6efd1623404bbeb3587f881e0c08cf` |
| 42 | `theorem` | [isPreconnected_Ico](../../../../GeneralTopology/IntermediateValue.lean/declarations/ispreconnected-ico.md) | 400 | `result-track:b877d221de5495988fcdf40151eb0b07baf492ac9e34325eaf4e394a901e8575` |
| 43 | `theorem` | [isConnected_Ici](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ici.md) | 403 | `result-track:ea936713c30b11cd7ea5160dcc542856b207744313fc6da7e3ed61c0776bb1d0` |
| 44 | `theorem` | [isConnected_Iic](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-iic.md) | 406 | `result-track:d834b691224cbe2a737618c800433223ead668c81a015c2cbde1d20162eefe35` |
| 45 | `theorem` | [isConnected_Ioi](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ioi.md) | 409 | `result-track:adfe1b7774400382a32cfdaae25043fa3841cc84768647118c130f1b8515b27f` |
| 46 | `theorem` | [isConnected_Iio](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-iio.md) | 412 | `result-track:1521ca57482e4fe147e9f27e805ffbbd382280a2a118d459a2153ef7e4ec881e` |
| 47 | `theorem` | [isConnected_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-icc.md) | 415 | `result-track:20befcb391799f66c7c4e91bc39576cf6bd1cc9a62955633480022158b242806` |
| 48 | `theorem` | [isConnected_Ioo](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ioo.md) | 418 | `result-track:dc234b2831f8f0a324f4da62a8c95cd5d872a432df4d37f6824477cb2327c057` |
| 49 | `theorem` | [isConnected_Ioc](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ioc.md) | 421 | `result-track:58881e46c08569196d7e74e530bf7f988cf52449fee5b01e40b0b3747a350145` |
| 50 | `theorem` | [isConnected_Ico](../../../../GeneralTopology/IntermediateValue.lean/declarations/isconnected-ico.md) | 424 | `result-track:e93bbb5a46ad5819197159f8270676bbb4ac6fbaf4df72bf72ffde15f267dcaa` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/IntermediateValue.lean/declarations/instance.md) | 427 | `declaration-track:26af8b6341dcc5b757c2970a80b250037a8c8a86a52c8b093d106f106400c74d` |
| 52 | `theorem` | [setOf_isPreconnected_eq_of_ordered](../../../../GeneralTopology/IntermediateValue.lean/declarations/setof-ispreconnected-eq-of-ordered.md) | 434 | `result-track:c7bf74ed443380aab505bc77b61c0c8bf8403816c1f8d1dab4c407c9cc50a17c` |
| 53 | `lemma` | [isTotallyDisconnected_iff_lt](../../../../GeneralTopology/IntermediateValue.lean/declarations/istotallydisconnected-iff-lt.md) | 450 | `result-track:35542d96e452b6273bdaf07127a483d9018cc6a7a4e3852cc763f5bc056e03d2` |
| 54 | `theorem` | [intermediate_value_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-icc.md) | 472 | `result-track:23b9ae324e843450a7592fee48e7b18967621ac76a771a4518d829dac0c44a6f` |
| 55 | `theorem` | [intermediate_value_Icc'](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-icc-source-edition-2.md) | 478 | `result-track:e42b92a9259d4301a6090c90b56f63b4a9c0c141f462e5142ad1763465e1feb7` |
| 56 | `theorem` | [intermediate_value_uIcc](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-uicc.md) | 483 | `result-track:fb5a9008f0e4c2c1464f736379a7feeca4d69f23a6890aacb47c68f3ccf29e10` |
| 57 | `theorem` | [exists_mem_uIcc_isFixedPt](../../../../GeneralTopology/IntermediateValue.lean/declarations/exists-mem-uicc-isfixedpt.md) | 489 | `result-track:408bb6d4fe8a4fcb479b19924ca376af353b0166ac9615da0a9025950b64b615` |
| 58 | `theorem` | [exists_mem_Icc_isFixedPt](../../../../GeneralTopology/IntermediateValue.lean/declarations/exists-mem-icc-isfixedpt.md) | 498 | `result-track:8d4b8383577a301da09ff6f3f683ab655df0b47bb3aad91cd1bb45b240edeec8` |
| 59 | `theorem` | [exists_mem_Icc_isFixedPt_of_mapsTo](../../../../GeneralTopology/IntermediateValue.lean/declarations/exists-mem-icc-isfixedpt-of-mapsto.md) | 505 | `result-track:173963a24c57593d0b725e686e0ae1840f583dc88944788b09660b2eb55bcc60` |
| 60 | `theorem` | [intermediate_value_Ico](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ico.md) | 509 | `result-track:27db4ed0963a5fd85c6ceb7c4f20e924fc089242a264121d3ab8d7a64f638b78` |
| 61 | `theorem` | [intermediate_value_Ico'](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ico-source-edition-2.md) | 516 | `result-track:4d4b613bfe708321fbe538282bcb8c773bc6b1e50bf075cb9934ec2b80e1b183` |
| 62 | `theorem` | [intermediate_value_Ioc](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ioc.md) | 523 | `result-track:9e38a54986b0efd187fb5af3a788cd6abd940429beac8dad326bcb9df7a3ed85` |
| 63 | `theorem` | [intermediate_value_Ioc'](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ioc-source-edition-2.md) | 530 | `result-track:c1657b1cb17c9cae8d1df3dfee3d981236a5fcd92e857dbc761378c14762b322` |
| 64 | `theorem` | [intermediate_value_Ioo](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ioo.md) | 537 | `result-track:19a861219de24757bef2bda3ad671de786605167c83f15db1f07de1eabb4c837` |
| 65 | `theorem` | [intermediate_value_Ioo'](../../../../GeneralTopology/IntermediateValue.lean/declarations/intermediate-value-ioo-source-edition-2.md) | 546 | `result-track:f03462b6c7a1dd3468360145acbfceb3d42f43bf452e8f4caa650c7d119ac4ea` |
| 66 | `theorem` | [ContinuousOn.surjOn_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-surjon-icc.md) | 557 | `result-track:6302e541ed255751287af06674bb89a9c9bdeab0df8ed7aa2a6c4ef806a16322` |
| 67 | `theorem` | [ContinuousOn.surjOn_uIcc](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-surjon-uicc.md) | 563 | `result-track:79aa4032b6e1487bd5a202e9c0bffa86cdeece7d83ef5fb4a28d35766547c175` |
| 68 | `theorem` | [Continuous.surjective](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-surjective-source-edition-2.md) | 570 | `result-track:98d5710e1ae99b283b2979155fd33f4fa58a05ff12b2cb0223d021bc2ac6ec7c` |
| 69 | `theorem` | [Continuous.surjective'](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-surjective.md) | 577 | `result-track:072087dc76f6aef66cc4b7865893c069a18f2f853cce38c217245a3e3aff4233` |
| 70 | `theorem` | [ContinuousOn.surjOn_of_tendsto](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-surjon-of-tendsto.md) | 585 | `result-track:00b0419d3bba01c9fd8ba41b1eedbf4fd24a3f3d2e711f7066d218864ae4454c` |
| 71 | `theorem` | [ContinuousOn.surjOn_of_tendsto'](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-surjon-of-tendsto-source-edition-2.md) | 595 | `result-track:78acdaf027f4c6d7c20c5be6a4c6b473a81a4263b81f03f7e6a861afc4ef747c` |
| 72 | `theorem` | [Continuous.strictMono_of_inj_boundedOrder](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-strictmono-of-inj-boundedorder.md) | 600 | `result-track:35e37d756aaaec5aae29bcadf5e32876af3497148967715e1165322d20bf2ce2` |
| 73 | `theorem` | [Continuous.strictAnti_of_inj_boundedOrder](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-strictanti-of-inj-boundedorder.md) | 619 | `result-track:35b0a0a0c7d6f9d4d893d2e5ba43edb6fb12295ab0444cf4503a1c213f3389a4` |
| 74 | `theorem` | [Continuous.strictMono_of_inj_boundedOrder'](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-strictmono-of-inj-boundedorder-source-edition-2.md) | 623 | `result-track:7ffa17b5d406b31a4462789e29fe8ba34952756beca0a7a97506f15a56838203` |
| 75 | `theorem` | [Continuous.strictMonoOn_of_inj_rigidity](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-strictmonoon-of-inj-rigidity.md) | 632 | `result-track:30ce24f218fe87793ed32363bc72861d82fe970d50f7c10fde26507a2c3fa467` |
| 76 | `theorem` | [ContinuousOn.strictMonoOn_of_injOn_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-strictmonoon-of-injon-icc-source-edition-2.md) | 660 | `result-track:8c8ba5e38189f8d4420b9aacb68e4fd05d82a898f5ff565f3792a88d315890f1` |
| 77 | `theorem` | [ContinuousOn.strictAntiOn_of_injOn_Icc](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-strictantion-of-injon-icc.md) | 672 | `result-track:92fdc87ea5214e219fc76237e32ac5f90a93e85d0d02c0333ca68fc40ba2b5a1` |
| 78 | `theorem` | [ContinuousOn.strictMonoOn_of_injOn_Icc'](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-strictmonoon-of-injon-icc.md) | 679 | `result-track:08548f832b33cc8ae78af8379f54b154db704a5183c857968be57657060e010f` |
| 79 | `theorem` | [Continuous.strictMono_of_inj](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuous-strictmono-of-inj.md) | 688 | `result-track:f205e36955b3db1bf8238f0065f690c27728237d5f583584ed996f5f5cd9f384` |
| 80 | `theorem` | [ContinuousOn.strictMonoOn_of_injOn_Ioo](../../../../GeneralTopology/IntermediateValue.lean/declarations/continuouson-strictmonoon-of-injon-ioo.md) | 710 | `result-track:17d5e6874a33879d4a28dc044cd698374f6ad6947f793c6786d4c1a4663f02b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05df9fd3e72a8196eb858fd600d3bf8aab77e3f44fb2a31fc1a18f9362b500fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
