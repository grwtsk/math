# Verification target: Partial Homeomorph Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd07fefc073617e1b552badfad718ee1d041de7f",
  "lexical_observation_count": 233,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd07fefc073617e1b552badfad718ee1d041de7f`.

Source path: `GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.PartialEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/partialhomeomorph.md) | 72 | `declaration-track:6a58de3adc55e3702d67735e40c86c2e8886570ef24a0a258499ffa96cb7c8c6` |
| 2 | `def` | [toFun'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/tofun.md) | 88 | `declaration-track:1a1db6b5060c8631fa3b53cf0c736b1a46c06a12112af141eaa16fbf20cf5ad7` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/instance.md) | 92 | `declaration-track:3dee6fe4e2143fbe78b140982301e20eaba2b609295350f745cfb38056e6666e` |
| 4 | `def` | [symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm.md) | 97 | `declaration-track:61f1b2acc0d29a57d44d7ed68e15be7d0165e3f948a59347cc13b35ca889d468` |
| 5 | `def` | [Simps.apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/simps-apply.md) | 106 | `declaration-track:7d0ea1c9478f9c94ddd9af74ba4836f7e6ea06054c01ba1727d4aad0be8f359d` |
| 6 | `def` | [Simps.symm_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/simps-symm-apply.md) | 109 | `declaration-track:0f9d348518ceec1597774f05a8a0cb00ec195fe01e253c9bb884d48df21a3655` |
| 7 | `theorem` | [continuousOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouson.md) | 113 | `result-track:ce7e5ff3a746b18ff7b4f15a1325d195b3a3830f68c008b293c6dc7ec7c0639f` |
| 8 | `theorem` | [continuousOn_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouson-symm.md) | 116 | `result-track:1bb90430b24320c25eca9fddbcb6f91bf73d8b5f4cecd4794a08bc3ce45ad33f` |
| 9 | `theorem` | [mk_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/mk-coe.md) | 120 | `result-track:518593547fedf06f51af661fc9a6fa257d91e1bd00160089dfb4fa3de4c29a88` |
| 10 | `theorem` | [mk_coe_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/mk-coe-symm.md) | 124 | `result-track:c1ef8ababcb001656b0157a827d42f41478e7cf37c6a521fee492879d1555af8` |
| 11 | `theorem` | [toPartialEquiv_injective](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialequiv-injective.md) | 128 | `result-track:6dfce4bdb940ada8acfafc0f83023b785959aab029732eac8ca9011f9b8b8282` |
| 12 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/tofun-eq-coe.md) | 135 | `result-track:fc2ef71f4ba276f16823861e4e1b9ebb9137193e88300061272e93990cf6583c` |
| 13 | `theorem` | [invFun_eq_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/invfun-eq-coe.md) | 139 | `result-track:88380dbd1b6e962396a2286af1d8e5576f647c8e303c89705f2154253e90204d` |
| 14 | `theorem` | [coe_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/coe-coe.md) | 143 | `result-track:a8de79b5910cf599bf143dd38e4302210c22243ba8d3201b1a87c90fecef88ca` |
| 15 | `theorem` | [coe_coe_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/coe-coe-symm.md) | 147 | `result-track:b63f44d989e437bc0fe3e0cba5e49aac0d199e980bba8a16056e161637b3bbc3` |
| 16 | `theorem` | [map_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-source.md) | 151 | `result-track:63e219e7ae1ffcd91bbee2fa74b243de2060f5aa1d4353e8fce7f312d5298541` |
| 17 | `lemma` | [map_source''](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-source-source-edition-2.md) | 155 | `result-track:cffd56dd05162d5814d535c93d14cf168dacf514bff111973ce95b9dfa1f7167` |
| 18 | `theorem` | [map_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-target.md) | 159 | `result-track:e7f32c5a2b719b93ff1c2e9ed6e97e94976c039bfc47c6644e43e597a82c7059` |
| 19 | `theorem` | [left_inv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/left-inv.md) | 163 | `result-track:fec9491c5f376cad8dec2413405f412991dceeea86351bf4882e3f512ceb2dc5` |
| 20 | `theorem` | [right_inv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/right-inv.md) | 167 | `result-track:de03459612df44318f4c612b76f701630a7f5aef450a389c41c2a0805790dde6` |
| 21 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eq-symm-apply.md) | 170 | `result-track:3b309c3c2b0e7c9b057ea82547c268dca0cabf64cd66fa2e319da1f8b5efc0e4` |
| 22 | `theorem` | [mapsTo](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/mapsto-source-edition-2.md) | 174 | `result-track:e5ce68bcea41063035bf56ba8161ca12787d9d6c3661eccd6a722dfc905cd935` |
| 23 | `theorem` | [symm_mapsTo](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-mapsto.md) | 176 | `result-track:a41cdf364577cd087b095409c432e03b8e29218b357f25fd06a65dd702058087` |
| 24 | `theorem` | [leftInvOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/leftinvon.md) | 179 | `result-track:b9593eb991786e4745ccaf22110b943bf260863a48023b8488a6db4ad88abc6b` |
| 25 | `theorem` | [rightInvOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/rightinvon.md) | 181 | `result-track:d360a968734f223cb51237f47e1bcd9ee1cb3bebdc13bf7dca2e669e463a9bae` |
| 26 | `theorem` | [invOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/invon.md) | 183 | `result-track:5a3e4bb9eb894e690d6678efad12917e98430558568a5e609dbd6aa327fd2ada` |
| 27 | `theorem` | [injOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/injon.md) | 186 | `result-track:55d6103a59bf3b0a7026ac60fb68ac54547a41ea38f429e85e540c5b820a3f69` |
| 28 | `theorem` | [bijOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/bijon.md) | 189 | `result-track:25d315c7a091d0c260413ce0b7eb5fdbc598abd5ed16e1a53f10483f91fc1467` |
| 29 | `theorem` | [surjOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/surjon.md) | 192 | `result-track:14ba2c746be25bae0de68cf751cd9b4a239a3e1b40c218f94d1efa28ec7934e6` |
| 30 | `def` | [Partial Homeomorph Namespaced](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialhomeomorphofimageeq.md) | 201 | `declaration-track:6fe18e26b72f02e73dde002f56fc8372b44da315b2a9e2acf810e59464b2d265` |
| 31 | `def` | [Partial Homeomorph Namespaced](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialhomeomorph-source-line-211-occurrence-2.md) | 211 | `declaration-track:5018a81fb51ea5ec99404c9a8236f9cf7dac24b25754c27cae0f58e31285b3d7` |
| 32 | `def` | [replaceEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/replaceequiv.md) | 215 | `declaration-track:23d8c8049b2723b9df017f420ed2146e14c5cfdae0cd6bd5315417211bc4f9c6` |
| 33 | `theorem` | [replaceEquiv_eq_self](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/replaceequiv-eq-self.md) | 223 | `result-track:424ba132d41d536b3d8c53ac012e166430e4c95a07a68919de40370482669120` |
| 34 | `theorem` | [source_preimage_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/source-preimage-target.md) | 229 | `result-track:7c97bd577cd265763d9c17691f886988f910b3ebc92c2d0b0aa4e19fa08c80a3` |
| 35 | `theorem` | [eventually_left_inverse](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-left-inverse.md) | 232 | `result-track:081cb2789861325a2932e0b7ad62a19e06f5c0f894828a2197d63174c2094742` |
| 36 | `theorem` | [eventually_left_inverse'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-left-inverse-source-edition-2.md) | 236 | `result-track:b7155110884512679cef13b35e73a55f79a10b45659b3f9e2f65ed7daf74cddb` |
| 37 | `theorem` | [eventually_right_inverse](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-right-inverse.md) | 240 | `result-track:6f5d1909ccee713b0b84adb3f33f270fc1b9ea2e8a8e037b82391cac3cf0cd7b` |
| 38 | `theorem` | [eventually_right_inverse'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-right-inverse-source-edition-2.md) | 244 | `result-track:dc28d2e342560bac5ec45e5a433fe0550d44c18f50fdaf9217a28cb0c35941cd` |
| 39 | `theorem` | [eventually_ne_nhdsWithin](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-ne-nhdswithin.md) | 248 | `result-track:128232d12db70605b43c25c2d95a1e8ade808ed237e4f5be457cb704b37e0062` |
| 40 | `theorem` | [nhdsWithin_source_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/nhdswithin-source-inter.md) | 254 | `result-track:ff0aed69baaf38923093f69345ef7800624f4f6ec3049f281e7060dfe10983ce` |
| 41 | `theorem` | [nhdsWithin_target_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/nhdswithin-target-inter.md) | 257 | `result-track:2cf289a7f1fe325be30a6c8672c51661b24e75e6911feefd33b251f67bd15ac3` |
| 42 | `theorem` | [image_eq_target_inter_inv_preimage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-eq-target-inter-inv-preimage.md) | 260 | `result-track:3c98cecb18f3891a872fb5fac8b089b6846ff8d797df2cdc307f4aedc9004eb5` |
| 43 | `theorem` | [image_source_inter_eq'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-source-inter-eq.md) | 264 | `result-track:790ece163c0d765d70a8f8ed135dc2900104bd583d0097a6c357f4c79b4f7e66` |
| 44 | `theorem` | [image_source_inter_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-source-inter-eq-source-edition-2.md) | 267 | `result-track:927d12d93ed6425336dcd4e9901fafd9f2746c6c022e725cdbeb4c2ace17c2b7` |
| 45 | `theorem` | [symm_image_eq_source_inter_preimage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-image-eq-source-inter-preimage.md) | 271 | `result-track:94eec0b4b9f31a80f50580feead3a34c03582127da268df075285b1c91e6829b` |
| 46 | `theorem` | [symm_image_target_inter_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-image-target-inter-eq.md) | 275 | `result-track:f5cc3154454c518395ab52ee5f21f987f41c4f1142072182885e0438feb8ace2` |
| 47 | `theorem` | [source_inter_preimage_inv_preimage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/source-inter-preimage-inv-preimage.md) | 279 | `result-track:947c41676765bd2c7a08e46c2009b09e6a415b2812940bd8511a429e6ad489df` |
| 48 | `theorem` | [target_inter_inv_preimage_preimage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/target-inter-inv-preimage-preimage.md) | 283 | `result-track:90b40e3d9bb41b123f3769eaaea226db15a90aa6a64ba2b28c41608641cf6cb9` |
| 49 | `theorem` | [source_inter_preimage_target_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/source-inter-preimage-target-inter.md) | 287 | `result-track:1ba356185cff2596e5f477c795534a2cdb6e87480cf45a139075295fd4275863` |
| 50 | `theorem` | [image_source_eq_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-source-eq-target.md) | 291 | `result-track:a296e3196627a31d6a554a6b32364524b186cb1c44a122b76fce8a2dac69ba95` |
| 51 | `theorem` | [symm_image_target_eq_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-image-target-eq-source.md) | 294 | `result-track:00580588e90304c901b2c1b4dafccaeea99be5e4b97b2d945252b6b4216454d9` |
| 52 | `theorem` | [ext](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ext.md) | 302 | `result-track:4d3cb028bcf283758884f07cab2af560d097e8413c402a978324d9c1ab527d00` |
| 53 | `theorem` | [symm_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-topartialequiv.md) | 307 | `result-track:37d7e015f9048bb44a4c61640cdf234082317a088149455f080ae6d23759b281` |
| 54 | `theorem` | [symm_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-source.md) | 311 | `result-track:106246bf3a075467a2adab4c6b78580ece959dbe527b566031e50957cc23ba3e` |
| 55 | `theorem` | [symm_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-target.md) | 314 | `result-track:5c53cbab9e0524ca754f7d99bedfb70084546c13727d7550c48e10cb0933ba27` |
| 56 | `theorem` | [symm_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-symm.md) | 317 | `result-track:75cfd383d4384c6adf372a66f712239d7fa89a3764b257296d5a7e9afb61199e` |
| 57 | `theorem` | [symm_bijective](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-bijective.md) | 319 | `result-track:25d74ed27fa90b066574b5ee6360882456b2cba40caf441896b251247fb17531` |
| 58 | `theorem` | [continuousAt](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuousat.md) | 324 | `result-track:3714ec22ebf8cf97a4bc93a004d537951494eba7de4d077b31dbc6d308a2b9b8` |
| 59 | `theorem` | [continuousAt_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuousat-symm.md) | 328 | `result-track:5081dec3567761b2268127556ee8e9d831279fa5a44ff6f79e4dc1d36091b6e1` |
| 60 | `theorem` | [tendsto_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/tendsto-symm.md) | 331 | `result-track:0d41866fdd04c4c36a2db3de1b2ad513e584e7f4a7b111560307c39443759f61` |
| 61 | `theorem` | [map_nhds_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-nhds-eq.md) | 334 | `result-track:327f576505ec637cc407c695ce96a0fe62a0027520aeaf798716860e2cc6e4ea` |
| 62 | `theorem` | [symm_map_nhds_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-map-nhds-eq.md) | 338 | `result-track:f99afdb22cca69e78bb3b19148f38673b5e0479b528a704b9f829e7bb03a1539` |
| 63 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-mem-nhds.md) | 341 | `result-track:c89dd72e493fe10a96a84304cf9d51cf17b9aaf866227592bfff7696a5582959` |
| 64 | `theorem` | [map_nhdsWithin_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-nhdswithin-eq-source-edition-2.md) | 344 | `result-track:f18d0fb1bf0eb7423addbe07b77be2dd6e48b47c2284796709aab6de686cf0bb` |
| 65 | `theorem` | [map_nhdsWithin_preimage_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-nhdswithin-preimage-eq.md) | 354 | `result-track:49665592e0ad47c6845bedd52fcaef1322b4656820f238b22468163ce36f8d0b` |
| 66 | `theorem` | [eventually_nhds](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-nhds.md) | 359 | `result-track:437cfd730954499e54433e2198ad2c21f0493adbb0aa8f22adca16cc9ce87c7b` |
| 67 | `theorem` | [eventually_nhds'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-nhds-source-edition-2.md) | 363 | `result-track:48bb6e8c5d8099956d7279e1d8579ac76aacdd5c78e6fbcb2460f585c6810359` |
| 68 | `theorem` | [eventually_nhdsWithin](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-nhdswithin.md) | 369 | `result-track:58f4e8b93d70c7938cc11cc3c76a712b96e8c0083d86b66a4e7258275527d6a5` |
| 69 | `theorem` | [eventually_nhdsWithin'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eventually-nhdswithin-source-edition-2.md) | 374 | `result-track:5d4e1310babf032de09d346fea84be05d6738a8f20f3695567f2f9cadfaf3a56` |
| 70 | `theorem` | [preimage_eventuallyEq_target_inter_preimage_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/preimage-eventuallyeq-target-inter-preimage-inter.md) | 384 | `result-track:2c9adc59fa25060e96788956ae20dfa5688a00a2b779d32343936113a0872f4c` |
| 71 | `theorem` | [isOpen_inter_preimage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-inter-preimage.md) | 395 | `result-track:f88654cc7ccd5f1d487ea6756ef50d110fe4d15ee0560ff53235722bba1c8eaa` |
| 72 | `theorem` | [isOpen_inter_preimage_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-inter-preimage-symm.md) | 398 | `result-track:f24c7983a201be93774bdddf446174d9ad27038f8a36dfde008e5b59949a20df` |
| 73 | `lemma` | [isOpen_image_of_subset_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-image-of-subset-source.md) | 403 | `result-track:ffa7343eefa13fee48b65e1156bba17abb5817c520abd7716ec1f984344ec7a9` |
| 74 | `theorem` | [isOpen_image_source_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-image-source-inter.md) | 409 | `result-track:ccef24bd3ad18d1e8d784e20559aa04f86deb050b0b2c104ac68da79487ceed4` |
| 75 | `lemma` | [isOpen_image_symm_of_subset_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-image-symm-of-subset-target.md) | 414 | `result-track:f62be0df9cd810261ea6165dc2c4df39b84822090b93c2b3a0a525e5b7067af4` |
| 76 | `lemma` | [isOpen_symm_image_iff_of_subset_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-symm-image-iff-of-subset-target.md) | 418 | `result-track:899edae8c162a76914fb95ba0c3a0381f2f94c88242f7f525d7dc49955f2f7f4` |
| 77 | `theorem` | [isOpen_image_iff_of_subset_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-image-iff-of-subset-source.md) | 427 | `result-track:8dc2b52a77152d0bf37f4d34c39484c84da59be55fe7ba39225d1c45ca84b5b6` |
| 78 | `def` | [IsImage](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isimage.md) | 455 | `declaration-track:e31f950b3ed745e86b23ba8f860f06891da3d5549a08020de3dfe1dc2c2423a8` |
| 79 | `theorem` | [toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialequiv.md) | 462 | `result-track:9a07d8a0156092ad34e1a27d9218d8ea11caa387945495b2f4d01196bbb385c1` |
| 80 | `theorem` | [apply_mem_iff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/apply-mem-iff.md) | 465 | `result-track:40eecfc4a61f4ba8e4304a6e139b02585710b8c78395c380bdde52c45a9da030` |
| 81 | `theorem` | [symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-source-edition-2.md) | 468 | `result-track:ea283349ef9850c82e694661ab563072588fbbeb17f5c595af612362e9894553` |
| 82 | `theorem` | [symm_apply_mem_iff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-apply-mem-iff.md) | 471 | `result-track:5fc2d70ed2510a83e0f8e79bf903e02400356919f632f3950b1f6017867ef7cd` |
| 83 | `theorem` | [symm_iff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-iff.md) | 475 | `result-track:1753d378a86dd3460ef4fcd97e51677deb7d3d2bf731bc00a801785d5737f2a1` |
| 84 | `theorem` | [mapsTo](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/mapsto.md) | 478 | `result-track:007ed61a1dbeb3477d9ad4e62b9431d379da2fb9f7b10764fa64a5fcd62f8992` |
| 85 | `theorem` | [symm_mapsTo](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-mapsto-source-edition-2.md) | 481 | `result-track:a9a8c982d0123ec67a05b67aa6882216cdc63a7ae2185df89e0dc60c73ec2559` |
| 86 | `theorem` | [image_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-eq.md) | 484 | `result-track:95555cb4ac8ba5ae781a67919c597a17c774e066d5826965dee6fe06d6910992` |
| 87 | `theorem` | [symm_image_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-image-eq.md) | 487 | `result-track:149f443e841e59601a3cfc71ca46f46444bcc19fe9252e3cb0b77b4255e59220` |
| 88 | `theorem` | [iff_preimage_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/iff-preimage-eq-source-edition-2.md) | 490 | `result-track:cc026c1417870e07126ea5535f1aa0f2045d4657c962c7e18fea7c54e2f5efe1` |
| 89 | `theorem` | [iff_symm_preimage_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/iff-symm-preimage-eq.md) | 495 | `result-track:1c0bf7eaf0df6a19e50668ef7827a66382691888e52ef55acead9721718e6bc5` |
| 90 | `theorem` | [iff_symm_preimage_eq'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/iff-symm-preimage-eq-source-edition-2.md) | 500 | `result-track:57ec505485723297f32667655395585803dc5c631875050cb16bf6f282965324` |
| 91 | `theorem` | [iff_preimage_eq'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/iff-preimage-eq.md) | 506 | `result-track:08e6aea6023684e5d96ab3559c3635dda361462219969b510d88b9dfd10160b8` |
| 92 | `theorem` | [of_image_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/of-image-eq.md) | 511 | `result-track:c6a7cfd4febb805a9c6f63c1dd06f34a636a5a15624a21ad227e0650576806f5` |
| 93 | `theorem` | [of_symm_image_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/of-symm-image-eq.md) | 514 | `result-track:12c4a0b90649e5a32779ae9bc9168a651220844f25627bb50bbb9e84e3ebac0f` |
| 94 | `theorem` | [compl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/compl.md) | 517 | `result-track:f33a7b8c277cf0f2670acb40ce51de7c39599d32fc9213f0a54c61c76fe1abf8` |
| 95 | `theorem` | [inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/inter.md) | 519 | `result-track:60da134779fa1157f331ad7fce0a0676fd4f4f023e6d07e114d2bf5dc3e3b57b` |
| 96 | `theorem` | [union](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/union.md) | 522 | `result-track:69f0f14eeb0223bf788dfb8e3193d69ff6e8d01559b642c4032c2ae689676ce2` |
| 97 | `theorem` | [diff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/diff.md) | 525 | `result-track:0866862787361e70787f57161aa5c3b2708614db6c004b43af2b2377d9a65951` |
| 98 | `theorem` | [leftInvOn_piecewise](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/leftinvon-piecewise.md) | 529 | `result-track:fcce494385c7da5049351621b397182345bbc8c4be022a1d7d53d513110def2e` |
| 99 | `theorem` | [inter_eq_of_inter_eq_of_eqOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/inter-eq-of-inter-eq-of-eqon.md) | 534 | `result-track:bdf00bd05e4518247c75920df2633de4d5d73bb90b400ffc26e435a1a27e2c0f` |
| 100 | `theorem` | [symm_eqOn_of_inter_eq_of_eqOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-eqon-of-inter-eq-of-eqon.md) | 539 | `result-track:b1522cdad6578c80d218236badd512627c1b56b66b2ca2be9d4bb7459c84eb8c` |
| 101 | `theorem` | [map_nhdsWithin_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-nhdswithin-eq.md) | 544 | `result-track:dd98d7f98969c11714b1dca499a8b7f99d2ebc6a0784d2b45b52dccbf4ca15b9` |
| 102 | `theorem` | [closure](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/closure.md) | 547 | `result-track:12c0d844066f625de1ce12118d4077ef160ed64d1bc81b086bc987dd03bbc07e` |
| 103 | `theorem` | [interior](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/interior.md) | 550 | `result-track:b043f7d7c4c9cc3675266708b55fdc0954d42aeb17987c2a8e289604193cda1c` |
| 104 | `theorem` | [frontier](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/frontier.md) | 553 | `result-track:6ad88f0a09284b4dfdd51e08ce751ae51328bc3de64d26c7814c392df26c63cc` |
| 105 | `theorem` | [isOpen_iff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopen-iff.md) | 556 | `result-track:9efc98ba2298c93dca320298aeddad8a43c471457e397fb66c34344f072bd7f0` |
| 106 | `def` | [restr](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr.md) | 562 | `declaration-track:64aea47e89db85b6707cac3f939f582cf42ef1f205af850892fa1bad178916d8` |
| 107 | `theorem` | [isImage_source_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isimage-source-target.md) | 571 | `result-track:e1223aa38689e0c53e3dc5c0c8c0c0754cef4d148e53e1754e9a0265c62eb8db` |
| 108 | `theorem` | [isImage_source_target_of_disjoint](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isimage-source-target-of-disjoint.md) | 574 | `result-track:5d19a12fdad7ddd23302f1f07a47ac1ce918514de149d8b13467cb2ddd65e833` |
| 109 | `theorem` | [preimage_interior](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/preimage-interior.md) | 581 | `result-track:cbaf9489d2a072efea4f03013f43105ac4c950979c2ab8da3f561df3446d3b6d` |
| 110 | `theorem` | [preimage_closure](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/preimage-closure.md) | 585 | `result-track:ddf86a7370beb5f2d63441b1b7a71782c8b44d8710e8061e605aa209185cc7ef` |
| 111 | `theorem` | [preimage_frontier](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/preimage-frontier.md) | 588 | `result-track:878988ffa10cb2913f63234abc6eb2f0ddc3ac3365736fe3d1559c79e6fda623` |
| 112 | `def` | [ofContinuousOpenRestrict](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofcontinuousopenrestrict.md) | 595 | `declaration-track:6ed97f10770ee2d50e607da067c11a4c9472ee1ac245bc5132a4ef44056eef9e` |
| 113 | `def` | [ofContinuousOpen](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofcontinuousopen.md) | 604 | `declaration-track:8b312c7cf3d882b11f700897339db4662118deb7923c69ca37898601fadf8611` |
| 114 | `def` | [restrOpen](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restropen.md) | 611 | `declaration-track:810ca03a833df51a5d5c12cba47d9f05eca85562d0c1fc9069b16677d4839248` |
| 115 | `theorem` | [restrOpen_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restropen-topartialequiv.md) | 616 | `result-track:fb7eb1d1fe1df67ddc0a0353b80cf0fd76a6139a9c0a645cb4b89fcf80f789e3` |
| 116 | `theorem` | [restrOpen_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restropen-source.md) | 621 | `result-track:e8330559b250deb5f460966197d604b7bea17232c79492deef7ee4379a9e0248` |
| 117 | `def` | [restr](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-source-edition-2.md) | 629 | `declaration-track:d36fa80f6e02b695b616e1b937f65bf64c3cca8739e5f5c892820c0cda545331` |
| 118 | `theorem` | [restr_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-topartialequiv-source-edition-2.md) | 633 | `result-track:b4e936d8a322f0de1fc74365572d6b3f00b527bd697a6027424e6e9e633baf41` |
| 119 | `theorem` | [restr_source'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-source.md) | 637 | `result-track:f94c6453f40dc10d6be8d81c30b67bd5c2a5f7fe8cf7834e64d2a1946b93647a` |
| 120 | `theorem` | [restr_toPartialEquiv'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-topartialequiv.md) | 640 | `result-track:3bcc0fec20b586a2699076251c196dc4f2d1a794400321c86c3b65002473f81f` |
| 121 | `theorem` | [restr_eq_of_source_subset](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-eq-of-source-subset.md) | 644 | `result-track:3927c2e049666d96a2140e9f078c1326b36954d27585a637e4c8c2de5e399bb8` |
| 122 | `theorem` | [restr_univ](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-univ.md) | 650 | `result-track:91a20fe607c3f40cd38fecf013f6de6d222cbdc5df92cdce129119749ac747cc` |
| 123 | `theorem` | [restr_source_inter](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-source-inter.md) | 653 | `result-track:2bbea3c5cb214641e48a57f00579b97859f51fe4f5755f97a2d5e1ff9fce6133` |
| 124 | `def` | [refl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl.md) | 659 | `declaration-track:fd1b198a9e62176629e5f13107e542e0d1e5c65dbc6cd582d6f2c9c47c83fb78` |
| 125 | `theorem` | [refl_partialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl-partialequiv.md) | 663 | `result-track:1d79da90ba4772af86e2248dc3e0cbfe6522ec895c98c2e1712fa86b1ad279e2` |
| 126 | `theorem` | [refl_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl-symm.md) | 667 | `result-track:987f75412dc9a80076c25b0b8d86604d6b65d3fe8bd4da199418cc63183bc799` |
| 127 | `def` | [const](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/const.md) | 679 | `declaration-track:d1a600f86a5b580d784c2ecf241cabb79c88dc9bc97b5ff101d7934860626323` |
| 128 | `lemma` | [const_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/const-apply.md) | 687 | `result-track:2840d70f8c1848272259bb98a5a393541595c59f0276975b71a97cf215d8b98f` |
| 129 | `lemma` | [const_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/const-source.md) | 690 | `result-track:64778254ea9a32fbd175fda842fbd737b1bd846adc43cbf968d1d3640207e58e` |
| 130 | `lemma` | [const_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/const-target.md) | 693 | `result-track:a57d5dc56f3fd4466597cf77ec1e97a34f9f93f9113be8b4d64c5447e88760ac` |
| 131 | `def` | [ofSet](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset.md) | 704 | `declaration-track:e82c4be9ee7e5d706fdb32051ce92dac78d807c0a54ab0b8b8e81709924f5fd3` |
| 132 | `theorem` | [ofSet_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-topartialequiv.md) | 712 | `result-track:ae6edb4404f03cab24d1997cc05608463191d21a4ea2bb12aa98149ba6323bfb` |
| 133 | `theorem` | [ofSet_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-symm.md) | 716 | `result-track:3911d726ed92829782fc1d1b7323f4c0babb74fb0ca8f986649f5e37459fa77c` |
| 134 | `theorem` | [ofSet_univ_eq_refl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-univ-eq-refl.md) | 720 | `result-track:20f5c6ac3a3638c9b336a3f26329b51934088f9ec9a7fb304a3abc7216492bc5` |
| 135 | `def` | [trans'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-source-edition-2.md) | 732 | `declaration-track:5bc52fa42ae14b18a6bff19d13a218f6417920da815b9ce915b62ae2878b5d2a` |
| 136 | `def` | [trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans.md) | 743 | `declaration-track:09480e1aa05f790548bde661043685cc8c8b0ec316a99ab32e7bfe16363061ad` |
| 137 | `theorem` | [trans_toPartialEquiv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-topartialequiv.md) | 748 | `result-track:1d038f014414ac8441a71f0090f7bca3733a3b5bf7344268738e5503da83a11f` |
| 138 | `theorem` | [coe_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/coe-trans.md) | 753 | `result-track:d052bc9b1097867282e24eb75a7c09997245f9eaa044b106a194e03f94655c89` |
| 139 | `theorem` | [coe_trans_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/coe-trans-symm.md) | 757 | `result-track:6f70a93eecebd5f386437a89f8998cb274f2ed77e2b9be2a56b29da2ab9a95c7` |
| 140 | `theorem` | [trans_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-apply.md) | 760 | `result-track:20b5bb3d0e9f22e3301a31198dcec4f494fdde19a6bff33da44e1e30f6baa4b9` |
| 141 | `theorem` | [trans_symm_eq_symm_trans_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-symm-eq-symm-trans-symm.md) | 763 | `result-track:f9d3279661ea807fef6d41850aa04f1bce75f308fde93ecf9f313da22e9e52c4` |
| 142 | `theorem` | [trans_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-source-source-edition-2.md) | 767 | `result-track:ba9aad4cd4c7638d353371d0d9ea5ec3dd0a4db894a2a21e13d7fb09783834d1` |
| 143 | `theorem` | [trans_source'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-source.md) | 770 | `result-track:3f458d64184a5c80e00d0289f6b9a5b05405f0a15ba96b1b39e5ce00f88dfb03` |
| 144 | `theorem` | [trans_source''](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-source-source-edition-3.md) | 773 | `result-track:ee4ff79d045165c447cf9602afeaec3dc7be0838f387c6a66eadbb785cbe6b88` |
| 145 | `theorem` | [image_trans_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/image-trans-source.md) | 776 | `result-track:72194c1fb490aa7915cc33311910441050dd91800248e57600bbb31a12b11a8d` |
| 146 | `theorem` | [trans_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-target-source-edition-3.md) | 779 | `result-track:efb61ef9e303d99448258768762b44f0fa6999a516681661f390e984d3f41275` |
| 147 | `theorem` | [trans_target'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-target.md) | 782 | `result-track:57cf76459fd8801b7a6c88a2a31a814d854b077ad59071c7df1eee5157bb79c1` |
| 148 | `theorem` | [trans_target''](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-target-source-edition-2.md) | 785 | `result-track:592b839ef8818d6c254980d4028637d1775bc1ec6c0fa2d01ff3bf38b8cf0deb` |
| 149 | `theorem` | [inv_image_trans_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/inv-image-trans-target.md) | 788 | `result-track:728dc9cf9645324bb4696f3489f45f07048391aa5ba4ba1d70f39c2115102559` |
| 150 | `theorem` | [trans_assoc](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-assoc.md) | 791 | `result-track:54b673296b9418619f24adba0d9f4c577716175b5dc9cf667e2b2a28cbf18a79` |
| 151 | `theorem` | [trans_refl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-refl.md) | 796 | `result-track:37a565cf4c7a50f95a774406ec8eba68fe68c78203b71ade5d15f5829739db53` |
| 152 | `theorem` | [refl_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl-trans.md) | 800 | `result-track:ae00cf1dfb3c1994468ee0535d2ce56d83b764b2b9d3eafd44d8f6d094239986` |
| 153 | `theorem` | [trans_ofSet](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-ofset.md) | 803 | `result-track:d39fd71a85044ef24f7d53cbd0a2e4682c6e4e5579133ba6bca0dee66c4c49fd` |
| 154 | `theorem` | [trans_of_set'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-of-set.md) | 807 | `result-track:11cdc0d714423fb64891708844ead2776606c7860ce44f7b2f31c9c0845b1412` |
| 155 | `theorem` | [ofSet_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-trans.md) | 810 | `result-track:3c0b34bce86aa4b79c31156b063765b0d6ab94a2d8c14201b48d2b4289c260c9` |
| 156 | `theorem` | [ofSet_trans'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-trans-source-edition-2.md) | 813 | `result-track:60ddde233330ea0bf7f8abdf6508bac73b95bcf271dc76dd25c9cf4c2629384c` |
| 157 | `theorem` | [ofSet_trans_ofSet](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/ofset-trans-ofset.md) | 818 | `result-track:fdf3b9f5f0237a580e5a8fde60b8bb150923c9821910caeb22891dfafc2f8b26` |
| 158 | `theorem` | [restr_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/restr-trans.md) | 823 | `result-track:88769a5b02165bfcac990577098ee493256b8e286ab661525119c3f567f84223` |
| 159 | `def` | [EqOnSource](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource.md) | 834 | `declaration-track:6c204cde1fdf18e114aa3628edb4a64980ecbf22784cc1bd87011b5fe4b9a126` |
| 160 | `theorem` | [eqOnSource_iff](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-iff.md) | 837 | `result-track:43d3eb6fe9eddb7b1cc8bf4302f84ba981bb1b30906b882cfd797f2d1731ec1a` |
| 161 | `instance` | [eqOnSourceSetoid](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsourcesetoid.md) | 842 | `declaration-track:50c4f9607b74f3fce51d6a7b1eb70ca357d9af67ded5d545ca696fe37c8e4e1c` |
| 162 | `theorem` | [eqOnSource_refl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-refl.md) | 845 | `result-track:98c6ec39c53b5c5a2800fe88659f30a0e9acc96cec0afcce605604531e38ded4` |
| 163 | `theorem` | [EqOnSource.symm'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-symm.md) | 848 | `result-track:5dc2a0cbfbef840db7a0f66b09d04d1e5e91cc2b87dd8dfaf729332a9c8b9193` |
| 164 | `theorem` | [EqOnSource.source_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-source-eq.md) | 852 | `result-track:14fec239bb5e6fc8d2e2d67327a8d2f37ef0a8d1a5be73f7e2c41a8af3640626` |
| 165 | `theorem` | [EqOnSource.target_eq](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-target-eq.md) | 856 | `result-track:467f93a3513f445c38408bcc3c64683bc55ea060bb8044e8da02a899aad7ce04` |
| 166 | `theorem` | [EqOnSource.eqOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-eqon.md) | 860 | `result-track:ef82e59be5b177765653104b98769226d61fddd3df98d52d79452e6a2a361abe` |
| 167 | `theorem` | [EqOnSource.symm_eqOn_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-symm-eqon-target.md) | 864 | `result-track:9998b3618d65fb2c3a7a856b4625c1d8d81c247250ab33daba472a7bc5b9eae7` |
| 168 | `theorem` | [EqOnSource.trans'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-trans.md) | 869 | `result-track:c9a75ae4ed14f7930e791e4ba39535bf552bae0bf196fbec0edd84536fc10006` |
| 169 | `theorem` | [EqOnSource.restr](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eqonsource-restr.md) | 874 | `result-track:6d659d0301e45ce404b559322ca8b59d9cf4fc5906d28339d500894ef78cc2db` |
| 170 | `theorem` | [Set.EqOn.restr_eqOn_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/set-eqon-restr-eqon-source.md) | 879 | `result-track:45f2f60beb6b3d8df24f933b1d095ff1e9b66352e3c190ac5fc1655cae131f2d` |
| 171 | `theorem` | [self_trans_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/self-trans-symm.md) | 890 | `result-track:866c2256a975954cd90052e804cafd95fd227bde03145c9bb57d985d24ec32b9` |
| 172 | `theorem` | [symm_trans_self](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-trans-self.md) | 893 | `result-track:90c3dba508b27c3d97973007302d2c38a7e2ef1402309c14317cb3674171b21f` |
| 173 | `theorem` | [eq_of_eqOnSource_univ](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/eq-of-eqonsource-univ.md) | 896 | `result-track:a71ae7c10ea04c57ac0f9c36cb45df79c457efb78f938617c710e50284d2096f` |
| 174 | `def` | [prod](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/prod.md) | 908 | `declaration-track:9961aac57b205d0d69e29091167e1b0adc9d290d1a1882a7ad57906a5f7a14f5` |
| 175 | `theorem` | [prod_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/prod-symm.md) | 917 | `result-track:226f00f63a5158b2e9b2745d60fd5dc06948f0ad0204094ebee1c04dab583e04` |
| 176 | `theorem` | [refl_prod_refl](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl-prod-refl.md) | 922 | `result-track:cb29452b3df76756f17bcc8fb23dce5362525e5cef5164394f17c250b4c5a577` |
| 177 | `theorem` | [prod_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/prod-trans.md) | 927 | `result-track:dc3e47b825c06cc20c3def14382bdfa8a3a817bb986b2e54f99b109d307846af` |
| 178 | `theorem` | [prod_eq_prod_of_nonempty](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/prod-eq-prod-of-nonempty-source-edition-2.md) | 932 | `result-track:c6d28a7c5febc6c2634c683cceb561b5e22d58c73de89144cef0c5dbcd83d39d` |
| 179 | `theorem` | [prod_eq_prod_of_nonempty'](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/prod-eq-prod-of-nonempty.md) | 943 | `result-track:069391316ad15644e1df7a3240aef01f472aceb1030287214338f1be44902d31` |
| 180 | `def` | [pi](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/pi.md) | 958 | `declaration-track:557669da21aeae17c3eb282f340681f60006e0b116a12b3cdee415479bb926cb` |
| 181 | `def` | [piecewise](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/piecewise.md) | 981 | `declaration-track:5f5234d93d6a8fe734e20e42086ff48c22dfea33106cab6f7be8b51358311735` |
| 182 | `theorem` | [symm_piecewise](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-piecewise.md) | 996 | `result-track:e542db28fe81ede7ad0d2d97cb0687001d80ef27676bb54bbd9ce56a46322e47` |
| 183 | `def` | [disjointUnion](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/disjointunion.md) | 1009 | `declaration-track:c7ba8fc48d64a1d3ef4cd4b9e321f9f988f935608e75e5a2fd46a5a9a51e988b` |
| 184 | `theorem` | [continuousWithinAt_iff_continuousWithinAt_comp_right](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouswithinat-iff-continuouswithinat-comp-right.md) | 1027 | `result-track:aea393b14fe8269de7879791ffb1d371f741d5f2b3a28ae3623a72705f3c5055` |
| 185 | `theorem` | [continuousAt_iff_continuousAt_comp_right](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuousat-iff-continuousat-comp-right.md) | 1035 | `result-track:02203698968372e9b806834231187efe1e70a4f90db84e95c1167e7c1e4dc135` |
| 186 | `theorem` | [continuousOn_iff_continuousOn_comp_right](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouson-iff-continuouson-comp-right.md) | 1042 | `result-track:716a632a54d5674798a2f52c74d3cfb28e0871775bfdeba54b3481dc2b19cafa` |
| 187 | `theorem` | [continuousWithinAt_iff_continuousWithinAt_comp_left](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouswithinat-iff-continuouswithinat-comp-left.md) | 1053 | `result-track:2fdd02bb1acb1d4cf673c7cf6fa5ab51cfa380a93365621f0b6e707fc1321812` |
| 188 | `theorem` | [continuousAt_iff_continuousAt_comp_left](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuousat-iff-continuousat-comp-left.md) | 1066 | `result-track:5f49da3d0a37bd9c1964136a8e2c18a75bca2ecd2b7a9294c56054c56457ea8e` |
| 189 | `theorem` | [continuousOn_iff_continuousOn_comp_left](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuouson-iff-continuouson-comp-left.md) | 1075 | `result-track:2da1e2eed2c697cdec7f5be69a4c49253aeb3313ed939e5491919cd7cecd4e34` |
| 190 | `theorem` | [continuous_iff_continuous_comp_left](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/continuous-iff-continuous-comp-left.md) | 1083 | `result-track:6e8e61f498420b98adc00dc4e682ed772e6bb6fa1f84ae9b3dd8f776e2e25412` |
| 191 | `def` | [homeomorphOfImageSubsetSource](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/homeomorphofimagesubsetsource.md) | 1092 | `declaration-track:ec33948413eb5bf12a4d76009809783e61e2170b730298b72b6224cea7fe3733` |
| 192 | `def` | [toHomeomorphSourceTarget](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/tohomeomorphsourcetarget.md) | 1107 | `declaration-track:58c7215e8b281e1056d3338041e8de2fc3fd95e30588b0609ea16cf96d4be5ed` |
| 193 | `theorem` | [secondCountableTopology_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/secondcountabletopology-source.md) | 1110 | `result-track:009809a57dd0183dcf65733bf33db9b66f534261b592293cbfd03c85c2b8999b` |
| 194 | `theorem` | [nhds_eq_comap_inf_principal](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/nhds-eq-comap-inf-principal.md) | 1114 | `result-track:8ae81b10d443a5e409775c162c92f65d4d5cb04989295d6dd3166031ee742cbb` |
| 195 | `def` | [toHomeomorphOfSourceEqUnivTargetEqUniv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/tohomeomorphofsourceequnivtargetequniv.md) | 1125 | `declaration-track:11848b5bba6c7d95de8e6cff817f2f9a7236c796df2fcfce82b0df26ab309d18` |
| 196 | `theorem` | [isOpenEmbedding_restrict](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/isopenembedding-restrict.md) | 1142 | `result-track:5393e7deb7dbf8cd247052a6c038d48a8d7d16952373a50324a69fd90052f09b` |
| 197 | `theorem` | [to_isOpenEmbedding](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/to-isopenembedding.md) | 1151 | `result-track:6ea8b9c8aec763b93225f0d43e4bc2e672e180dbc47a1827bc64b58d06cb8ded` |
| 198 | `theorem` | [refl_toPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/refl-topartialhomeomorph.md) | 1164 | `result-track:7e84f9cf2cfc322abbb8dd68471cf5b5620a7123ce0e6d0b8164d31102871bab` |
| 199 | `theorem` | [symm_toPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/symm-topartialhomeomorph.md) | 1169 | `result-track:dd7411fedf11c27ef8f441e5562528e92e0efdb9fe457161eeb88ee570950eb9` |
| 200 | `theorem` | [trans_toPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-topartialhomeomorph.md) | 1173 | `result-track:70d7a64ea20555b34a49e43b9e41e84d405e4b6394cb34d6ff67fbb13199c2b1` |
| 201 | `def` | [transPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transpartialhomeomorph.md) | 1180 | `declaration-track:bed8cdc6b8061090faa850b1e7e51fb0457f476c811223194bd30c631009b7e7` |
| 202 | `theorem` | [transPartialHomeomorph_eq_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transpartialhomeomorph-eq-trans.md) | 1187 | `result-track:ef7374fd31290d051135c2dc2542689cb266c5d758b9e0913c2c7e2bcdca2915` |
| 203 | `theorem` | [transPartialHomeomorph_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transpartialhomeomorph-trans.md) | 1192 | `result-track:90c7d67a0c655908201a493dcbffb631624246148d986ae3a7f55e645ea247a9` |
| 204 | `theorem` | [trans_transPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-transpartialhomeomorph.md) | 1198 | `result-track:7ba4e1bbb46c3be0b4599375bc1910ff2b371be2d7a9af15e615f4433207f9fa` |
| 205 | `def` | [toPartialHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialhomeomorph.md) | 1214 | `declaration-track:ef87d7366487ad04750a0de6e92220b61b1252e19ba6ef9aff5a5a13b4b9abd9` |
| 206 | `lemma` | [toPartialHomeomorph_left_inv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialhomeomorph-left-inv.md) | 1220 | `result-track:b978cf9270b660e1b2e121d916e9b9590b24d63c06f38d4c5317963eed3677b3` |
| 207 | `lemma` | [toPartialHomeomorph_right_inv](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/topartialhomeomorph-right-inv.md) | 1224 | `result-track:0265a3a09ad3a2fa3e5f41abcda26b7b66d9b55830883bdc5f4737e7022db7d4` |
| 208 | `def` | [partialHomeomorphSubtypeCoe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/partialhomeomorphsubtypecoe.md) | 1241 | `declaration-track:7eac13ae595e3faf008d918eb56246875712fefbaca9db1cfc5f62923490d96c` |
| 209 | `theorem` | [partialHomeomorphSubtypeCoe_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/partialhomeomorphsubtypecoe-coe.md) | 1245 | `result-track:768be3843ef90d8c4c05b5aff50ce8d3f10b47f26cd1070dd6253fbe32923bb4` |
| 210 | `theorem` | [partialHomeomorphSubtypeCoe_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/partialhomeomorphsubtypecoe-source.md) | 1249 | `result-track:b76073103984498c962351790e87ce107a6613c07160530443ea8db23e55cbc3` |
| 211 | `theorem` | [partialHomeomorphSubtypeCoe_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/partialhomeomorphsubtypecoe-target.md) | 1253 | `result-track:dc63e15dd17adb4e6d66aca6c47f4367dbf56d1d218cb1a24125486c54ee43e4` |
| 212 | `def` | [transHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transhomeomorph.md) | 1267 | `declaration-track:e1c144b24b433b22595b81454715f199577fb4113a1163634b98703952a97844` |
| 213 | `theorem` | [transHomeomorph_eq_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transhomeomorph-eq-trans.md) | 1274 | `result-track:cde1f9aaef32c277683c0058ed208d15db4594668af2d16d74dbeb1bead9885e` |
| 214 | `theorem` | [transHomeomorph_transHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/transhomeomorph-transhomeomorph.md) | 1279 | `result-track:1bfe0b81d5b0b3ff9ec51dfb470d34b183d4f1857ae40689e6ec1d3c451208d1` |
| 215 | `theorem` | [trans_transHomeomorph](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/trans-transhomeomorph.md) | 1284 | `result-track:50e78484b9d2c8473a7fe2fbc9c9efafe129ecc9e0cb81c297e61ae647136835` |
| 216 | `def` | [subtypeRestr](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr.md) | 1301 | `declaration-track:600e9392f3c5398e10c598f064f19d37013253ebe45c9cfa4f9e520ba00b2e3c` |
| 217 | `theorem` | [subtypeRestr_def](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-def.md) | 1304 | `result-track:e70efdc5bf9b11a926a9e593711ddb9153eb37928f62236f5064557ece874174` |
| 218 | `theorem` | [subtypeRestr_coe](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-coe.md) | 1308 | `result-track:23f8de2748aa9010bb30ba1182001ac37f22ae4f31bbf068b23aec6e47ebd976` |
| 219 | `theorem` | [subtypeRestr_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-source.md) | 1313 | `result-track:f9006ed1fcd1d9c8fe6efb936f280983fc108db18da43157e2e60d355f0ddac8` |
| 220 | `theorem` | [map_subtype_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/map-subtype-source.md) | 1316 | `result-track:7d902107a6704d12e7d8a7e91cf6d21159121c19f7bfb845f2d3c30355dc03da` |
| 221 | `theorem` | [subtypeRestr_symm_trans_subtypeRestr](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-symm-trans-subtyperestr.md) | 1324 | `result-track:4d9f41927406f8131f734d4359dcc9db149fc0246d53a1c1fd8cf93260fef49e` |
| 222 | `theorem` | [subtypeRestr_symm_eqOn](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-symm-eqon.md) | 1341 | `result-track:77f40169d054d09a79e49e6c8980a94bc4c3a98b42360b8667cd3b150fc059ff` |
| 223 | `theorem` | [subtypeRestr_symm_eqOn_of_le](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/subtyperestr-symm-eqon-of-le.md) | 1349 | `result-track:78b0a4968fba9e607880869f747bbfa4ff16af73e01ba33f20eec010033f2657` |
| 224 | `def` | [lift_openEmbedding](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding.md) | 1375 | `declaration-track:9e6f7947f1c247fc44676488a6fb42db5b93979ee1f71f1de6a45c9af3efe128` |
| 225 | `lemma` | [lift_openEmbedding_toFun](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-tofun.md) | 1412 | `result-track:2e89bbac90d0715973f3d5240aca741bfa0c3a404998fcf0426459bf93a87603` |
| 226 | `lemma` | [lift_openEmbedding_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-apply.md) | 1415 | `result-track:0a34e53d122ff6516ade295da69fad4973732fcd2df9453829c585ae82769d47` |
| 227 | `lemma` | [lift_openEmbedding_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-source.md) | 1421 | `result-track:c54329a9ea038e1b555342ba43b9ac443019684bd99b5ee2bb4fec277d0f134f` |
| 228 | `lemma` | [lift_openEmbedding_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-target.md) | 1425 | `result-track:d4338c8d9c9d39aeb51fc5329c1691c898de23f4c4a9179fd3be0abae866927e` |
| 229 | `lemma` | [lift_openEmbedding_symm](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-symm.md) | 1429 | `result-track:5a0702638c3b7d4ec9e8616e58c0a6098030f035f04f86991638f5b5956d2a7b` |
| 230 | `lemma` | [lift_openEmbedding_symm_source](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-symm-source.md) | 1433 | `result-track:15834a6e7fa36b1f57157e733b62426fff541b94272c215c6ef1c78edd43c78d` |
| 231 | `lemma` | [lift_openEmbedding_symm_target](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-symm-target.md) | 1437 | `result-track:dcacd46d4a4b7e3d5b3da43703b12667c21b36c709ce1f693fbdd3acdea8d643` |
| 232 | `lemma` | [lift_openEmbedding_trans_apply](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-trans-apply.md) | 1441 | `result-track:54d428d1da089db1594ff51cb1e650e15abfde89214c723f0b23258d36509869` |
| 233 | `lemma` | [lift_openEmbedding_trans](../../../../GeneralTopology/PartialHomeomorphNamespaced.lean/declarations/lift-openembedding-trans.md) | 1447 | `result-track:418e40a9a028096a1e0737955da45f160ed53f072748bbcc751744e089563117` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80450e6d7b4f1df9622a1aa04a969082408103c21495155eaab06900c8a792b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PartialHomeomorph/Variant2d9aea68ac608ba2c220e6db2dbec0ff6e9974bafdd6dff66c2fb9037d0e51a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
