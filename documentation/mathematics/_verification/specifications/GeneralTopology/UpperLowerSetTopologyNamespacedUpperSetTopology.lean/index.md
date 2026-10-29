# Verification target: Upper Lower Set Topology Namespaced Upper Set Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d66285de15d86a95e5e7df2792f0a0472c4270c",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/index.md) · [Full source](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d66285de15d86a95e5e7df2792f0a0472c4270c`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LowerUpperTopology` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperSetTopology'](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/uppersettopology-source-edition-2.md) | 80 | `declaration-track:0f55dbc99cda6a394b2b4625c77b71c21685dd855158252fcf04e3a911e3f310` |
| 2 | `def` | [lowerSetTopology'](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/lowersettopology.md) | 90 | `declaration-track:4e0a0a8b34b9ceeb4c2e6e3530e0d53bc8a32897a12d483b36e41de248c1eec2` |
| 3 | `def` | [WithUpperSetTopology](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/withuppersettopology.md) | 101 | `declaration-track:f17330b0ece6a7e55625acbca1168833beed0b53599c3f3c4b0aef715ac50130` |
| 4 | `def` | [WithLowerSetTopology](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/withlowersettopology.md) | 104 | `declaration-track:dac55ae3399c140fe5e46f56c7b06f6defe1e6265975e96c2a233594181b3d94` |
| 5 | `def` | [toUpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/toupperset.md) | 112 | `declaration-track:457c11a3383f5d940d92463afb811ad1ec62d54585095831fe32bf8ec4414a3e` |
| 6 | `def` | [ofUpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/ofupperset.md) | 116 | `declaration-track:fa0eb839e4e6b0593f33f007e4d0e10e1bf84790406b6ebe9e481c7d5b53249e` |
| 7 | `theorem` | [to_withUpperSetTopology_symm_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/to-withuppersettopology-symm-eq.md) | 119 | `result-track:390a853e58d2a08beb537500c68b1ed5f72a201af5ece1547041a824fb138abc` |
| 8 | `theorem` | [of_withUpperSetTopology_symm_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/of-withuppersettopology-symm-eq.md) | 122 | `result-track:14f8e8bc0c64a791fdee507f947153c305ac9379b4f4ed98e6761b6ccb5a1fb8` |
| 9 | `theorem` | [toUpperSet_ofUpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/toupperset-ofupperset.md) | 125 | `result-track:ecd425a57182d6783784dd30415189c869968d8fbc6752cc246880275024c690` |
| 10 | `theorem` | [ofUpperSet_toUpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/ofupperset-toupperset.md) | 128 | `result-track:972ec91011a0d3e5031508d6755c5afe2c9ad1f7ed3c9d671958a85be41d89ff` |
| 11 | `theorem` | [toUpperSet_inj](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/toupperset-inj.md) | 130 | `result-track:1a4c43bf08cd725a94d1e2b2caecd27acfeebe0ff07d56e94276898d8a47eb08` |
| 12 | `theorem` | [ofUpperSet_inj](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/ofupperset-inj.md) | 132 | `result-track:85b26d21c452492b6eee1188d511bb4aa0b2193bac48e50f40fb13440ba5cc36` |
| 13 | `def` | [rec](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/rec.md) | 136 | `declaration-track:bb7af5c87ba4700251445b67d44fab402876ac6d37060c22cec9db860b223716` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-14.md) | 139 | `declaration-track:ed3726f9d3140c70b5da3495839307dcf4823166a0c2f3955d52d632904157a9` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-10.md) | 141 | `declaration-track:81cd08f51b48f25eb14b932a2acb1a7f3a078a7e97354390937421c13f36913e` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-4.md) | 145 | `declaration-track:49e1a23bfb310cbe9f7d7871213cf2bee94de4d06288413a9bcb64143589f74e` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance.md) | 147 | `declaration-track:0517628ce3152d6eaad1b43f64d77d2d1a3281701ec4bf436ef2ed11bc79eccc` |
| 18 | `theorem` | [ofUpperSet_le_iff](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/ofupperset-le-iff.md) | 149 | `result-track:3ab4fc461c55a2fb4602bb4829ac99ee9236782899285dc7cf14cf6e3be35264` |
| 19 | `theorem` | [toUpperSet_le_iff](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/toupperset-le-iff.md) | 152 | `result-track:51aae9c3d1136a9e83edbfc02df1612d4bb79907471d9a40ee7179e887f471e7` |
| 20 | `def` | [ofUpperSetOrderIso](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/ofuppersetorderiso.md) | 155 | `declaration-track:ea7bff62dc11d30f675b5f910f7bf4fc7764b0e2876df95ab4cb40798f212831` |
| 21 | `def` | [toUpperSetOrderIso](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/touppersetorderiso.md) | 160 | `declaration-track:7cd78d8404a66d4a620b36a49c3d558c2997f54e580246a8203cd0e28d45c282` |
| 22 | `def` | [toLowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/tolowerset.md) | 170 | `declaration-track:43472afa70a1ff286b8dc440b25fed6114ba806c172add5e75a1d317e012d29b` |
| 23 | `def` | [ofLowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/oflowerset.md) | 174 | `declaration-track:5ddc6707c3079a5e68d866509646d2be2dbc25ae54db2a61989d67d6b05aae69` |
| 24 | `theorem` | [to_withLowerSetTopology_symm_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/to-withlowersettopology-symm-eq.md) | 177 | `result-track:b520817c4b9c91541a9d66b4b2e089a1c46bf10778c181f4a8b28e115bd8ab44` |
| 25 | `theorem` | [of_withLowerSetTopology_symm_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/of-withlowersettopology-symm-eq.md) | 180 | `result-track:ec8c03f9de291601bed03570a8ebdfeb1d228d984ee3126e116ecea6774d4d93` |
| 26 | `theorem` | [toLowerSet_ofLowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/tolowerset-oflowerset.md) | 183 | `result-track:c95891f366d5c7081072253a8ea1293cc09b80af4c3e1204bf75c343d6f94347` |
| 27 | `theorem` | [ofLowerSet_toLowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/oflowerset-tolowerset.md) | 186 | `result-track:8d4185b763e7ea9e308dcf4834bb16b5c95f3f63d23854c46f3f936bc2aede04` |
| 28 | `theorem` | [toLowerSet_inj](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/tolowerset-inj.md) | 188 | `result-track:e9923bf8686c614d16c606d33fa2b39f6c243f51e5e448ac9c4e9ce3973f3e3a` |
| 29 | `theorem` | [ofLowerSet_inj](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/oflowerset-inj.md) | 190 | `result-track:fd40cac1e32a62ab978aa8c21a10607ea6339d9c8e124ae133579c8debff6ad7` |
| 30 | `def` | [rec](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/rec-source-edition-2.md) | 194 | `declaration-track:c4bce5156262293138e9c7da1ee27f113a81e9de5abd3ff13bd768c17303bc3d` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:140c02aaca3fdb4cb40aa82bca721661588cd7f891c78ae4cfc02e8b8cdf034c` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-6.md) | 199 | `declaration-track:644d36700e133412622192868909b59283e00093abbfbcc99aa352c2fd161309` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-11.md) | 203 | `declaration-track:9a1d5c57d6456eaf9828568bade814e018fa1856cc883743f04d27da0a08d378` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-7.md) | 205 | `declaration-track:75083e3f47968116ed56ec6897aca47bb7ff9881fb18b1140834d2727d74a600` |
| 35 | `theorem` | [ofLowerSet_le_iff](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/oflowerset-le-iff.md) | 207 | `result-track:60ff53821f7f2f4c04b3938edd7a0e9978fee9a09f4ec69c6004c84bff865614` |
| 36 | `theorem` | [toLowerSet_le_iff](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/tolowerset-le-iff.md) | 210 | `result-track:5f15a7807f15f5dde7a06da73c7793f28fb76112778aff34725c486d24c45fea` |
| 37 | `def` | [ofLowerSetOrderIso](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/oflowersetorderiso.md) | 213 | `declaration-track:40323c944f7ffcdc63e0c1037943cf574dac4ee203a2ab3b61ff1f589265c731` |
| 38 | `def` | [toLowerSetOrderIso](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/tolowersetorderiso.md) | 218 | `declaration-track:4d3df0a0dde5b71649e994df644ccdcd52010f75fbb416b4dea1bc6efe1fd0b4` |
| 39 | `def` | [UpperLowerSet_toOrderDualHomeomorph](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/upperlowerset-toorderdualhomeomorph.md) | 224 | `declaration-track:62bd0e2d31992770baad0e68fa25ff451cf0e67d933a80316cac3fbcac4d06fa` |
| 40 | `class` | [UpperSetTopology](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/uppersettopology.md) | 237 | `declaration-track:058b7830a7001e8d07212db08f5b4447bd7174b2e1a1df04f2ff7551af9b1094` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-5.md) | 240 | `declaration-track:5743783890d3f16e9d3dc28e989d0e1cbcd96767c45bb7a4fe939748eb683073` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-3.md) | 242 | `declaration-track:1b63495cba647386122295bb0b0302eab57f64ddf412cdfdab7f8022c3aa2d96` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-8.md) | 244 | `declaration-track:7c7a8753dca10a5f09440d7d3fd2d522a17efde40c7232cffff818a81ddf4874` |
| 44 | `class` | [LowerSetTopology](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/lowersettopology-source-edition-2.md) | 252 | `declaration-track:7560307354cdf757a9e92bdb425db3fed6a65b6530d4152b62204d6e66dde931` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-9.md) | 255 | `declaration-track:7e81c27c582c6c95b9886d7ff7532ee3dcd5b0d53c438f5e371c3f9751ddbc96` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-13.md) | 257 | `declaration-track:eb753a4e870de3bf6db21ff77594d7fc3c6d34e178a0bd705ce02b51d2f671ac` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instance-source-edition-12.md) | 259 | `declaration-track:d69d5ec845a83f774a6666876eed42ee61c2d770bfb60ce8f680afe3d0ad3edc` |
| 48 | `lemma` | [topology_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/topology-eq-source-edition-2.md) | 270 | `result-track:cd01ed6b9fb68ca13c5f9dd32510dc2469369218281a5cf00ae0348a859fd0f2` |
| 49 | `instance` | [instLowerSetTopologyDual](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instlowersettopologydual.md) | 274 | `declaration-track:bcdd2c90638ddf2aea5f314b4a710574d83a581e2ab890e944226ce911cc4515` |
| 50 | `def` | [withUpperSetTopologyHomeomorph](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/withuppersettopologyhomeomorph.md) | 283 | `declaration-track:4405f4632b5868c17cb9a808876fd50115ee4ce06d87ff2de871a3abd37e3281` |
| 51 | `lemma` | [IsOpen_iff_IsUpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-iff-isupperset.md) | 286 | `result-track:6b9073dda8cbef9d5f8438931d65ef40997fbd5d7f2c3105333bb9c082a60b9e` |
| 52 | `theorem` | [IsOpen_sInter](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-sinter.md) | 291 | `result-track:9a8bfa522057e77acda28a9a03b5e53da41d38e4a0b674bf16674fa87228f146` |
| 53 | `theorem` | [isOpen_iInter](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-iinter.md) | 298 | `result-track:7dc5c49aea6b0877290a1b6a9b20663ca47f8cd409964e22e2c8451456a34869` |
| 54 | `lemma` | [isClosed_iff_isLower](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isclosed-iff-islower.md) | 305 | `result-track:23d441815a3cc997466197b189a0bb4fad27f7f7c4424a939ae29ee1bb3e0af6` |
| 55 | `lemma` | [isClosed_isLower](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isclosed-islower.md) | 309 | `result-track:071e4e9b619ef387dc4d83451c3878e72fa922d8a69c8f9a300b2598799b4fe6` |
| 56 | `lemma` | [closure_eq_lowerClosure](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/closure-eq-lowerclosure.md) | 312 | `result-track:73d78aa0df15ce45ccabe007a1347be7e36ac820ff577b297f4b6b52e43d0ebd` |
| 57 | `lemma` | [closure_singleton](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/closure-singleton.md) | 324 | `result-track:5b0b6768c5467831800c5b7a8a00587259ea829eb221d8091b898377acfcc412` |
| 58 | `lemma` | [monotone_iff_continuous](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/monotone-iff-continuous.md) | 336 | `result-track:6b0998bfd1cf86337e506bdc6ccd294902cb68513cacbe3f312c2a731dcf461d` |
| 59 | `lemma` | [Monotone_to_UpperTopology_Continuous](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/monotone-to-uppertopology-continuous.md) | 350 | `result-track:f97a17e0934c038d5608abd04f9cb2379446f12c2059fd1bd14bee56bb8f7b36` |
| 60 | `lemma` | [UpperSetLEUpper](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/uppersetleupper.md) | 359 | `result-track:297e9f2dd3264a31a8af941153f918e855b978dfd4dc40e1a3eaba1d527e92f1` |
| 61 | `lemma` | [topology_eq](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/topology-eq.md) | 375 | `result-track:3db6d74aacb8758c3afcee0edcd5b9ba508490358607ff62ec9062b561f33a56` |
| 62 | `instance` | [instUpperSetTopologyDual](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/instuppersettopologydual.md) | 379 | `declaration-track:bdd3dce1679e4d49761b0cd5384c49c56fdfa6c55ade7853e6b834636f2fa208` |
| 63 | `def` | [withLowerSetTopologyHomeomorph](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/withlowersettopologyhomeomorph.md) | 388 | `declaration-track:ddb03003583dbf86b480abea32dbbe618a69c9cf596daa3e8c8cbc8114c1240b` |
| 64 | `lemma` | [IsOpen_iff_IsLowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-iff-islowerset.md) | 391 | `result-track:25bd7936aeca34b2c5be3924177bfcdac9261679b6c10f61f879431e9b3f25d9` |
| 65 | `theorem` | [IsOpen_sInter](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-sinter-source-edition-2.md) | 396 | `result-track:ecad231b78c08810d9881c7aec942519815bebfea49b7333c6fda7d4f81446f9` |
| 66 | `theorem` | [isOpen_iInter](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isopen-iinter-source-edition-2.md) | 400 | `result-track:e528b72a66f242db17b4571af0db037fa5ca16a8107a26b3e32f9cb3f35e16d0` |
| 67 | `lemma` | [isClosed_iff_isUpper](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isclosed-iff-isupper.md) | 403 | `result-track:f34a2d99ca397b9172bc9cac9b30cdf12f3931a89a99303a585766a91f9e8f21` |
| 68 | `lemma` | [isClosed_isUpper](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/isclosed-isupper.md) | 406 | `result-track:51d5bba99c63333852db04d5555112ca815cc36f04266a78bfea35c3bb944006` |
| 69 | `lemma` | [closure_eq_upperClosure](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/closure-eq-upperclosure.md) | 409 | `result-track:6818bb2c5ccc87e0aeea311b16c41ef1bc9987476bfc9ad53f77dfd39edb00a3` |
| 70 | `lemma` | [closure_singleton](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/closure-singleton-source-edition-2.md) | 416 | `result-track:abf5d179ee0d9f157bb9b641d0a8a573ac4c3228d2c6784b91841fc2dd3ee5b6` |
| 71 | `lemma` | [monotone_iff_continuous](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/monotone-iff-continuous-source-edition-2.md) | 429 | `result-track:cebfcc2170cc2bb57b32a9034d0447112c20286402ddd159de099ff855736327` |
| 72 | `lemma` | [Monotone_to_LowerTopology_Continuous](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/monotone-to-lowertopology-continuous.md) | 436 | `result-track:e691e1bc0210a27124a02215a9934cb49de7ab40bcc52cd0d2a09ccf37b086fe` |
| 73 | `lemma` | [LowerSetLELower](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/lowersetlelower.md) | 443 | `result-track:e864e1ddd5ff4d7505d2c25654607dd7c2a1e3450fe211a1726997370a256288` |
| 74 | `lemma` | [UpperSetDual_iff_LowerSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/uppersetdual-iff-lowerset.md) | 452 | `result-track:1b8c98232e3af986762407abb88701e93ba787ab3ec53e7573b090c54880e065` |
| 75 | `lemma` | [LowerSetDual_iff_UpperSet](../../../../GeneralTopology/UpperLowerSetTopologyNamespacedUpperSetTopology.lean/declarations/lowersetdual-iff-upperset.md) | 458 | `result-track:a4c7a003376c6064bf2ebe7004c9042f32f703e8fe644c96f0beb6c588178f71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19db15e7cecb33412afbea1ffe6ee1c6635793f55146de6b38896851c14f94b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UpperLowerSetTopology/Variant3c93e365188a982eafcad3ddabf50647bd53cd8a102394c69b9c5567b9ce7e84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
