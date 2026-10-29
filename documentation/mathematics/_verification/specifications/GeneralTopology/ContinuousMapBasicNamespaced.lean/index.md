# Verification target: Continuous Map Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5f0b8c15ebf93f4a10d3be880370f6aeedcb95a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.UnionLift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_continuousAt](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/map-continuousat.md) | 36 | `result-track:8bdb3b68d9105d5e72c5a45dde1547ed371d1b55142006883e3318d51511f6c9` |
| 2 | `theorem` | [map_continuousWithinAt](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/map-continuouswithinat.md) | 39 | `result-track:3616da10e09768c9a44be9dfeff532bbf19cb43c863b7fa2fcb8da107a6a7566` |
| 3 | `theorem` | [continuousAt](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/continuousat.md) | 55 | `result-track:fd7ced8ea96fccbf886d470f7a36366053502d155268b059ce203cfe0742a284` |
| 4 | `theorem` | [map_specializes](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/map-specializes.md) | 58 | `result-track:5578ef9e161510e54200a1c65772ba92bb099abae4df882a05bc25418dd45cd3` |
| 5 | `def` | [equivFnOfDiscrete](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/equivfnofdiscrete.md) | 68 | `declaration-track:6b1293468d460a6458171f7bc1d0bca79933ad3a58e97383ffddcf334f7ec03a` |
| 6 | `lemma` | [coe_equivFnOfDiscrete](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-equivfnofdiscrete.md) | 74 | `result-track:0461a0a44bfa69fa9deff9ac70f6720fc3b7253c18efbd1dd70b321fd2a15540` |
| 7 | `lemma` | [equivFnOfDiscrete_symm_apply](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/equivfnofdiscrete-symm-apply.md) | 76 | `result-track:b44bc14d0138e5c3368b66977edec94fd143185aad8e2eb58e7a79b5f485834b` |
| 8 | `def` | [id](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/id.md) | 83 | `declaration-track:e38ebe3fec39d6400b322802038eb5d1dab9c535e98caa5d940227821ece1e94` |
| 9 | `theorem` | [coe_id](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-id.md) | 87 | `result-track:a534cb2a54ff373ee291f1f1e1eb721aae575c6f9f1843d7c7b43772231f6bb5` |
| 10 | `def` | [const](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/const.md) | 91 | `declaration-track:882be2b4e834ecbebfa9d4df2fc4a83b26d4903592dc0bbce277be3f78a29a0f` |
| 11 | `theorem` | [coe_const](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-const.md) | 95 | `result-track:ac533d973595b94402a695dde6c03aec2009ae5bdb63c2844126c657d9e6cff1` |
| 12 | `def` | [constPi](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/constpi.md) | 100 | `declaration-track:8369e09cab3b41bd1ce3db35291ca73b624b2ddcc70d27043051d479c14f2cff` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/instance.md) | 103 | `declaration-track:51ad332ac2bb5de4e9102a39859ce5fdafc4f2867f538c9f437bca4f731904df` |
| 14 | `theorem` | [id_apply](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/id-apply.md) | 109 | `result-track:d3c1ddc045a520999c7ba02cd6bb1f4b20b00f13c8f847b7b71249411315e390` |
| 15 | `theorem` | [const_apply](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/const-apply.md) | 113 | `result-track:625b8ae99324450ad174a16a2ba677940d0d73004137215a9977cee8aa8b725b` |
| 16 | `def` | [comp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/comp.md) | 117 | `declaration-track:df7e53765ccd1fec7f6abafff78c5798f78aa5f09d739d9ca810b6d1bbb0173e` |
| 17 | `theorem` | [coe_comp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-comp.md) | 121 | `result-track:6b816d53956ff7d8272c18eeb5592e3aa9f1b2bf8313ff7b026bb4a6af28eab7` |
| 18 | `theorem` | [comp_apply](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/comp-apply.md) | 125 | `result-track:3384a4c56f35b0cf6679426ea8155af57b5f248801c6944202dfc53849b6f028` |
| 19 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/comp-assoc.md) | 129 | `result-track:2f3c4977b4269ecdfa704ac58dacf3d62b72431c0f5a89c2da918e5955db15e6` |
| 20 | `theorem` | [id_comp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/id-comp.md) | 134 | `result-track:3701fb7de60fb8ec70a90d9b6e0f62c8ec930e78ef9b254d074600da9ec6cbf7` |
| 21 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/comp-id.md) | 138 | `result-track:a3d7fdc36fbdf3b636541360ad817e3a3a469d12de6586cd9f62c60f0362314e` |
| 22 | `theorem` | [const_comp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/const-comp.md) | 142 | `result-track:35674cd45a3423b180813af4926268e0f9caabb6b1c8daa980a39d2ce7f386e9` |
| 23 | `theorem` | [comp_const](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/comp-const.md) | 146 | `result-track:39636071071529defeafcdb11625197e3b4733657001925e5b8ecde6f5e0a30e` |
| 24 | `theorem` | [cancel_right](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/cancel-right.md) | 150 | `result-track:c6b7c33506fc03ca6c60b6a4b09e0f692f6757a290d8c1766390f66dd5211de5` |
| 25 | `theorem` | [cancel_left](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/cancel-left.md) | 155 | `result-track:64fb6f3f5070b1ac5b8141118df75c306a20821f58294a5230e6311ea4a40b45` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 159 | `declaration-track:987605ac46bda7fa629e37ce76374f1c493e987184bf6c778ddab1005d4623ed` |
| 27 | `def` | [fst](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/fst.md) | 170 | `declaration-track:a1a197938c2a5784a755a28b4265675a385cfec76189f3197916ed6640e56e66` |
| 28 | `def` | [snd](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/snd.md) | 175 | `declaration-track:a110503691bda61fb805722c63d05abdc670e9f8de20f58f85979ab0f1ce4a37` |
| 29 | `def` | [prodMk](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/prodmk.md) | 179 | `declaration-track:a6e773c4e6a9dcc5765d6f860a76aadd5e8fda6dda3d787654da5fb39773d9de` |
| 30 | `def` | [prodMap](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/prodmap.md) | 184 | `declaration-track:9bf6a37278ae7342df674ff5d141e920d4ee87f9b3e039d1d6dfe6c39c5ec174` |
| 31 | `theorem` | [prod_eval](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/prod-eval.md) | 188 | `result-track:48dc33dbc09065cc4b82efa79a65f6b38b3450f99eca3bc7bdc50bc1689506e8` |
| 32 | `def` | [prodSwap](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/prodswap.md) | 193 | `declaration-track:206ae997a25d5bdd09d34e4317be89c3246c814ffe364cfee88434be5495be1e` |
| 33 | `def` | [sigmaMk](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/sigmamk.md) | 203 | `declaration-track:9cbfff9224a06e9eb4e09b150a61a3d3c0fd1aef507eadee911a960d46628b72` |
| 34 | `def` | [sigma](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/sigma.md) | 211 | `declaration-track:55f072c1308e5d857733734503139786f777d559a9c9f8fbd04151a765ba288c` |
| 35 | `def` | [sigmaEquiv](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/sigmaequiv.md) | 220 | `declaration-track:2e27b88ff3d7b148e644dd66df38a199892cb715b6c177f642b925fee0068bee` |
| 36 | `def` | [pi](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/pi.md) | 234 | `declaration-track:65fbbfb975f72aa6ef986e9a5376b34e68cc470c5bce95b0da9fbd466937ea83` |
| 37 | `theorem` | [pi_eval](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/pi-eval.md) | 238 | `result-track:37ce6205ac48d514c92a1549889f286e2ef1543c59ba39c308b43bc5535f534d` |
| 38 | `def` | [eval](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/eval.md) | 243 | `declaration-track:564d1b69826cf03e321b5e720cb09ef6dfb32d23b90c93910006f3987604540b` |
| 39 | `def` | [piEquiv](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/piequiv.md) | 252 | `declaration-track:c940c958fe81c834316296bef875110620c72d46849a0bc88f473bf7530f3462` |
| 40 | `def` | [piMap](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/pimap.md) | 261 | `declaration-track:5ddbc25b3e8706cfa0df7aaad11118e124be1d55db30b77469a553e7d070ffa8` |
| 41 | `def` | [precomp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/precomp.md) | 265 | `declaration-track:4b16db5c6d189c674ba299cd2f68c2feb89d2f2fc7d0ad01fdb98b0aae112f19` |
| 42 | `def` | [restrict](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/restrict.md) | 275 | `declaration-track:8e7b810bf8bb87e2bd9e40422950e3f223ddb64b4b2579bc9ddc1c6ae671491b` |
| 43 | `theorem` | [coe_restrict](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-restrict.md) | 279 | `result-track:52eb8dca0fa19b2f142c5766b57c1fd00f4371b9d35cdc59d8c36da782b06045` |
| 44 | `theorem` | [restrict_apply](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/restrict-apply.md) | 283 | `result-track:9c6c8287829d6579cbfff071017c027c8bf702be2201b79db3990c0cd0f1aa34` |
| 45 | `theorem` | [restrict_apply_mk](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/restrict-apply-mk.md) | 287 | `result-track:ca8d70ac4a3195bc6ed3ec8cc2225cbd9fd5c34796bef6eca1ff9e2efb3b95ce` |
| 46 | `theorem` | [injective_restrict](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/injective-restrict.md) | 291 | `result-track:6dd2e84b76a211e0648db0f755c1a1e9ea6b52990f2f44dee2711835786deef2` |
| 47 | `def` | [restrictPreimage](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/restrictpreimage.md) | 298 | `declaration-track:0fbf718413e9f2e1b3556d7700e6536803bbc00d0ba3ad871b8afc2045146d21` |
| 48 | `def` | [liftCover](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover-source-edition-2.md) | 313 | `declaration-track:adc8da03d638575cdc19496951210892c3f97dfc448ce59e4e22ced0b1ea3588` |
| 49 | `theorem` | [liftCover_coe](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover-coe-source-edition-2.md) | 324 | `result-track:cd9c92d4623627e8c7c7d10e373a7aae054cc174fee04fda225636afeb395e5a` |
| 50 | `theorem` | [liftCover_restrict](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover-restrict-source-edition-2.md) | 328 | `result-track:aa22f0fa7395cdd0dbafca21ac32825edbe93ec504a77bc078d1ab7dd84fb75e` |
| 51 | `def` | [liftCover'](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover.md) | 340 | `declaration-track:35f4e36e14abb45cea8dda21a20e1d198d9fb4c21e6f412ecdea78d824752a8d` |
| 52 | `theorem` | [liftCover_coe'](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover-coe.md) | 351 | `result-track:7134ee37365fafa448cc2f6fab45f196036751b51be92fedb0d5846f34c1a52a` |
| 53 | `theorem` | [liftCover_restrict'](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftcover-restrict.md) | 356 | `result-track:6ce6545f7314f8f66e404b621a15ad53ce01b872b754b0ba219df6a705ab0b5d` |
| 54 | `def` | [inclusion](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/inclusion.md) | 362 | `declaration-track:0547301f3d0958439ba65db368c5936e3ff43b3a62c928f7cc6e41860c040480` |
| 55 | `def` | [Function.RightInverse.homeomorph](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/function-rightinverse-homeomorph.md) | 375 | `declaration-track:e930bbfa60058711c1d4bff571403d2453c2bf4b7cf24b383fff6c429c3d8918` |
| 56 | `def` | [homeomorph](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/homeomorph.md) | 388 | `declaration-track:d0b3dd4a7d09457ca48435805bf58e0db157507b79cfe4325ea5a239f25033bb` |
| 57 | `def` | [lift](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/lift.md) | 403 | `declaration-track:b12d24742236a8f878b7806a8f6187cc5ae459033cd9fffe0ec8f7a3250fdaf1` |
| 58 | `theorem` | [lift_comp](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/lift-comp.md) | 420 | `result-track:af426b88d5465d883bd0cd47be37f14df27e8de627251fda11f150bdaa599d8d` |
| 59 | `def` | [liftEquiv](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/liftequiv.md) | 426 | `declaration-track:53f70ec4f5c1216fe33bc3a61900f7f427a1751b5cb266320d7b5754fe897ac0` |
| 60 | `instance` | [instContinuousMapClass](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/instcontinuousmapclass.md) | 443 | `declaration-track:89f9981de6361562c9f63ee537332dea2527094529fd4355a0ba0dc9ded06820` |
| 61 | `theorem` | [coe_refl](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-refl.md) | 447 | `result-track:de729f8e98d9e79b8159bb7e40e67ffc451f69bb8bc0e95bc4fd1aae577bcc5c` |
| 62 | `theorem` | [coe_trans](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/coe-trans.md) | 451 | `result-track:1546f23af7307a35a84ea834113f218c8bbf8b763abe3e39126a40df0704f849` |
| 63 | `theorem` | [symm_comp_toContinuousMap](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/symm-comp-tocontinuousmap.md) | 456 | `result-track:dd8843e4d049c8d8f8b4f54abb93d1d507962de7823d633957795e693827e279` |
| 64 | `theorem` | [toContinuousMap_comp_symm](../../../../GeneralTopology/ContinuousMapBasicNamespaced.lean/declarations/tocontinuousmap-comp-symm.md) | 462 | `result-track:ee3ca74e2adb30a43dbd4b68785362385b3e9453d392a78d159f817a0f401c0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e79e9dfa639bc2a1d4e19cf52520c59c125a0643a6e2a46457e6d8ee7889e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant3bac00282ce064747b83f2cd85d2ce4d8c4e2563da8e4ca8012aeb752cdd296d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
