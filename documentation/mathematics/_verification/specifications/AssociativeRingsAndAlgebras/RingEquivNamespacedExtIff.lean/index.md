# Verification target: Ring Equiv Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e071050aeb1293b5c39da8b612a5bea17739e94",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e071050aeb1293b5c39da8b612a5bea17739e94`.

Source path: `GRWTSK/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonUnitalRingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/nonunitalringhom-inverse.md) | 55 | `declaration-track:0d729d90899a694adcbb6929dd90c5d6a1d066ca3120f080625d192ff6f47b9e` |
| 2 | `def` | [RingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ringhom-inverse.md) | 62 | `declaration-track:bd2796d6a98d306849b8a75ea99a7624b3ea9fc3216e756dc31387eb52b8aebf` |
| 3 | `structure` | [RingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ringequiv.md) | 71 | `declaration-track:7d81dfb24b0015ab27deda751bbab2459c33648734d953fb1a21e20a60ac3416` |
| 4 | `class` | [RingEquivClass](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ringequivclass.md) | 92 | `declaration-track:db2778c5573f3e12053ef693747f4c8caef4ee5da9c77f800e070bd2ba784d02` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:5dc47e8b873c3c31bccf01ef57728e2e0a14fb91908a20b009d8f8d4e41f0578` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-6.md) | 107 | `declaration-track:cd6fbba3f5f86af127e8b45cfd18675eaa401b428db4efded8e489acb09e7786` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-4.md) | 117 | `declaration-track:5fa6a90947db93bf098fd845b9bd24c8cccc9eed1aeccbd0df127f529d73fb0c` |
| 8 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringequiv-source-edition-2.md) | 128 | `declaration-track:42587d24ad2c18ac2fdb33d45742e1910d91875f01b30031c212dafcc794636c` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance.md) | 136 | `declaration-track:20c318216a74ee4e1ab9ef1b3060b567870e74734acbfc9b640c7cd60bcae8a7` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-7.md) | 145 | `declaration-track:f8ccd3f72bf25a5a0509331c3d27d7ac662bf4968a60aab4fecafc6151a139f9` |
| 11 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toequiv-eq-coe.md) | 159 | `result-track:1f0e0ed7d77d9173a06d77561cb22d0174ca1abfedf35320a411197c557e32e9` |
| 12 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-toequiv.md) | 167 | `result-track:b45ad890366541e2bcedfee82ea6d414b0ef860d115bcf32498d5d682e2dee8b` |
| 13 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-mul.md) | 172 | `result-track:6fe9fc8937d54d971bab23130cd834f1431a68d79bddfe94a6106d7887eccf74` |
| 14 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-add.md) | 177 | `result-track:7aba6e334f0be7556f4c0a66422b2db25c89fab3502f7c48f6f01d168b2c9c82` |
| 15 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ext.md) | 184 | `result-track:982642bcace8f96ccf6e0ae5f5b6f297deb573441a24d6c308bfee15e1d209e2` |
| 16 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-mk.md) | 189 | `result-track:59ba1a8048eb7da3a5066557d4220531b5464a88ea99891c06acb6a36c0e0ae6` |
| 17 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/mk-coe-source-edition-2.md) | 197 | `result-track:3c4529b31a54c7002e999bd3b3d8fd3366ed7cead344649e82aeb7fbc148dd7e` |
| 18 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/congr-arg.md) | 201 | `result-track:c7daafe3b7382e8e7dda56ee68fef5f36bfc1acdd92625dcd6ac4c095cd37c97` |
| 19 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/congr-fun.md) | 205 | `result-track:2aa69129ae99768585ffad7d4d4cc0de1705502af3e512598cac7f1539790029` |
| 20 | `theorem` | [ext_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ext-iff.md) | 209 | `result-track:02787b1ec6e25fdca31068a7117bae4958e78f724de74b76af2b07300165c0d0` |
| 21 | `theorem` | [toAddEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toaddequiv-eq-coe.md) | 214 | `result-track:1a82354af435a57a969f5c37776e556a5e7872ebd5763eac8e7c3273a4c43fc7` |
| 22 | `theorem` | [toMulEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tomulequiv-eq-coe.md) | 219 | `result-track:e19822b7abf5c1730f502e0454d916c06f7bbc18274c92f2b2982ba1164d398f` |
| 23 | `theorem` | [coe_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-tomulequiv.md) | 224 | `result-track:a28c86252af5d0ce1b637a5c61260a5846bfc35df895ee54e31f1e603b9b9e6f` |
| 24 | `theorem` | [coe_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-toaddequiv.md) | 229 | `result-track:23d53a80ddfc2baf9c79f710334cbc9f5249be9743fe28e0d1a5a7fb79f6658e` |
| 25 | `def` | [ringEquivOfUnique](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ringequivofunique.md) | 234 | `declaration-track:46f44ae8768e823f1a8b041c092a3375e7bff51bcc2df08dda983d7c21f05ac7` |
| 26 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-5.md) | 238 | `declaration-track:95f8b0ef793929412608b8862b57cabde47ef9959b4c31e1154760a6312f2bb7` |
| 27 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/refl.md) | 247 | `declaration-track:d09e5c3d262fb8f006bf1be42f3e099e56ff90b47c7d230485ad0ba28557c42a` |
| 28 | `theorem` | [refl_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/refl-apply.md) | 252 | `result-track:be6f848af73023cb28fce4d280d031b034ea0fa0cb87c666e350c17c6798ba27` |
| 29 | `theorem` | [coe_addEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-addequiv-refl.md) | 257 | `result-track:ce79bde3c96d0250962d75b27b26a0162be3c5e5fc935ffa65085b7b82f60738` |
| 30 | `theorem` | [coe_mulEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-mulequiv-refl.md) | 262 | `result-track:9d247a601f1403315d0ceaba70843408db4b5b961dd0b04b61dd0b53188f258f` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 266 | `declaration-track:5e0bea73cc74204af74022819a521329ce07258db2a38359999cd0f3b18235a3` |
| 32 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm.md) | 273 | `declaration-track:e53c7c07d3b647b57a8b3739dd3b2f589c2281a923a5936c2386c2e1bbf694e4` |
| 33 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/simps-symm-apply.md) | 278 | `declaration-track:baa6fd48f9ad61b8ef680ad3d3bf21f7748e614f9d62e527c062756b20f66635` |
| 34 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/invfun-eq-symm.md) | 285 | `result-track:1db4cc5656f0dbf0ecb37c401fd404fcbb375e94c51149cbf10036ff694414b9` |
| 35 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-symm.md) | 290 | `result-track:8e507bd333b766919afb24ea0f4c91c1a3b858019b3daedf5af0bbb4819ae48a` |
| 36 | `theorem` | [symm_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-refl.md) | 296 | `result-track:df21bf99656f64fd0659c59285ea48bc45a5850f13564ebe562c4d78d72f6b96` |
| 37 | `theorem` | [coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-toequiv-symm.md) | 300 | `result-track:514622e853f98c08f374c2f20d9d43da0b8b49dd34482a1ebd98b065ac5e9551` |
| 38 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-bijective.md) | 304 | `result-track:a47b8001d92ad1138342650f65dd32b6457feac7ae036f99ec0d3313324f6845` |
| 39 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/mk-coe.md) | 309 | `result-track:2d5e9459e50f02be50922a474784b640e3c4db91d98bd557e26d587c687daef0` |
| 40 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-mk.md) | 315 | `result-track:0e8e0c7536e2180c5a8cafddd87bb60758374f45037396f025b9d31d7dd14b1b` |
| 41 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/trans.md) | 325 | `declaration-track:8e49f81e453c3f40703ba0bcb96064ee413994441afb2287012436b15f2b29ab` |
| 42 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/trans-apply.md) | 329 | `result-track:b8f988db73127af73a24865933cdc3f64f802ea24114243362c0c0ded728ea39` |
| 43 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-trans.md) | 334 | `result-track:f900f59c6209c4ee25bee2f1a9a24367fec1b8789fdc7836dc6ce8cff4c57944` |
| 44 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-trans-apply.md) | 339 | `result-track:0b2e9d74e8fe2b8a5dfca891f28bae5648f6bf3e26139715bcad00dcb66c1a6e` |
| 45 | `theorem` | [symm_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-trans.md) | 344 | `result-track:d69b1b94ac4fd8c40187e4c649ebf402ae47b287206fdb892f2dadcb32f5eea6` |
| 46 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/bijective.md) | 348 | `result-track:5a01446811cc0f8960dfe3e68689f8df8ca5a5c328847f9d6d658eecd1f7b50a` |
| 47 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/injective.md) | 352 | `result-track:5aa5564dd19afe21ff8fa56378877f7d77bd1de79ebbc241a35e3bd360943460` |
| 48 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/surjective.md) | 356 | `result-track:7c7dcbc30e07c36df1d4d51594c703670d54701dfe8a17fc1028b5c52c96f7cb` |
| 49 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/apply-symm-apply.md) | 361 | `result-track:85b2fc4d6cded6c12271cdae287fc40786ed8cfbccaf6cc16ae7547521edceed` |
| 50 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-apply-apply.md) | 366 | `result-track:342b7362934209d31f2c392c9d7102dd84a84f160f2a74ef49160f35f55888c5` |
| 51 | `theorem` | [image_eq_preimage](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/image-eq-preimage.md) | 370 | `result-track:892ad5fceabaedb4956548d5933460dee7f335434dd72b2e75fa4e3930936d20` |
| 52 | `theorem` | [coe_mulEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-mulequiv-trans.md) | 375 | `result-track:4efb9945bc69dbb8b91f516ab2ed083ec6b8c8f4c8559ea3e26b1b83290cf5db` |
| 53 | `theorem` | [coe_addEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-addequiv-trans.md) | 381 | `result-track:599e60db87132a5b8e0f222020364d2e636a79abff1cb8546e3266d85162350a` |
| 54 | `def` | [op](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/op.md) | 394 | `declaration-track:e7a8585106348a386dc7f218bca91acea6de3ba4623f350d4eda4e2d7a698733` |
| 55 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/unop.md) | 410 | `declaration-track:1e974968c8d6695d49fe46be5135bf8047148896c209dd5ff051264819743d36` |
| 56 | `def` | [opOp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/opop.md) | 416 | `declaration-track:f2c89af76f1b88846714920da96dfb2e3e3babca2dd6e0e277a2d6d77ea7616e` |
| 57 | `def` | [toOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toopposite.md) | 425 | `declaration-track:aa1aabd49503da982c4ab86163de5ef5bee7a2b649ff1be48efb90e8796f12a6` |
| 58 | `theorem` | [toOpposite_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toopposite-apply.md) | 432 | `result-track:8ff7a543d6f63eedca2dd941abf3e4266b8d34e870f540e780d4260bca1c84e1` |
| 59 | `theorem` | [toOpposite_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toopposite-symm-apply.md) | 437 | `result-track:559dd7670d8b1ba2d8eddd1cfba57f4aa389fd8e91ce98f3c6418f2ed849049d` |
| 60 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-zero.md) | 450 | `result-track:6c7e9a8a94e4f48e808259af8e88e2acfe5f4888c069fe53e6c7830eeccda39c` |
| 61 | `theorem` | [map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-eq-zero-iff.md) | 456 | `result-track:e688d278cba0953bd13e2db9a75260865facaf7ef1dbb7dbc33126561423c5c3` |
| 62 | `theorem` | [map_ne_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-ne-zero-iff.md) | 460 | `result-track:751211ed9e23b7cc89b95feae81bcb7e6ad2c55227971cc59217407159595935` |
| 63 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ofbijective.md) | 465 | `declaration-track:13f6d88ded52ac86fe98dd0d9d485ba3bc652580f2f0bab1ef974572fb475535` |
| 64 | `theorem` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-ofbijective.md) | 473 | `result-track:8da10bcc895e31fa41445911177e8c6549f355551782747a7b3c41d46bbdaa08` |
| 65 | `theorem` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ofbijective-apply.md) | 478 | `result-track:e63e636cd7dcadd5781bfe3613ee1e26237a658497d60cf1e2730b098db50da2` |
| 66 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/picongrright.md) | 490 | `declaration-track:1a3e9fee2f9b4ddaeb07035d356cf3e57dcb842692bb878450c1908f7f97948e` |
| 67 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/picongrright-refl.md) | 500 | `result-track:549f1004a63953f92a2abfab68d1c2482ac11738ca87841692b318ecd24bdee0` |
| 68 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/picongrright-symm.md) | 506 | `result-track:0ab76a1dcc4295ea6bbe219862cfc98111f83b361ac9d57913973772202afe45` |
| 69 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/picongrright-trans.md) | 513 | `result-track:2ab034d0f017fe6396eccf96250b0fcb630d17f0bfad1729a8a9b8d2dd0700b0` |
| 70 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-one.md) | 527 | `result-track:93af166854fd45c939a521c824a44fa048b843374ce07630bd2dba571a3ce7ca` |
| 71 | `theorem` | [map_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-eq-one-iff.md) | 533 | `result-track:33fbcacf1aa57858f2d6773842092c7194c335dfc51ecf05f2fcd8c8af175f9e` |
| 72 | `theorem` | [map_ne_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-ne-one-iff.md) | 537 | `result-track:90e54edf6617d8c8902f1e8ea279c5d540014fccccdd44e07f963f91685c1a3b` |
| 73 | `theorem` | [coe_monoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-monoidhom-refl.md) | 541 | `result-track:255c9714a237e059f8826fd177d00b73b01818350e3e6257c92a40b8e5ce5518` |
| 74 | `theorem` | [coe_addMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-addmonoidhom-refl.md) | 546 | `result-track:63fabdb4c469defb5f74791769e7a5f123a88e05ba87efbb24559672f4be681d` |
| 75 | `theorem` | [coe_ringHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-ringhom-refl.md) | 555 | `result-track:c8282d90ab06f38e435b602c6abdf80f3bacda197190cb4225949ad7ba9376a7` |
| 76 | `theorem` | [coe_monoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-monoidhom-trans.md) | 560 | `result-track:8e2c6bdf68531863c9ef1945d270b0663d3d258a9274b20104cb542ef3a08ad6` |
| 77 | `theorem` | [coe_addMonoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-addmonoidhom-trans.md) | 566 | `result-track:a1f8fc6b0bc0cba6f0628b9eaf7df11598f534eb9178a4d41abd98036b3be297` |
| 78 | `theorem` | [coe_ringHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-ringhom-trans.md) | 575 | `result-track:bdfa5f85f68be681e221ed1a174931bbe55e1dbe72bc2ff61061a07251c70060` |
| 79 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/comp-symm.md) | 581 | `result-track:07bba55a89837e9ab156e3bb9a09fc7f8c1e4f1f5085cb1f58af11460d29b3f0` |
| 80 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-comp.md) | 586 | `result-track:13a0d96cfa8eea167da7122cf76be2852aa8f8f5e9095bef963db08f085047c6` |
| 81 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-neg.md) | 596 | `result-track:0d3185f5fb6ebb6b7d179487eb57b2fcdb89405a67ebc70e92df58b2b296a198` |
| 82 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-sub.md) | 600 | `result-track:adafa4934d1a462a9388fe2652287d740b0d646d4add01a43ed2c6d3ba9c89df` |
| 83 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-neg-one.md) | 611 | `result-track:9e77f5817a1a00dcf92544a247a1660d92de54128878183efb05ac273dfb987a` |
| 84 | `theorem` | [map_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-eq-neg-one-iff.md) | 615 | `result-track:c5ae793014afe153b52e63e888e3eacfbbf9fd57e06fa6097aee63510f5b312b` |
| 85 | `def` | [toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom.md) | 626 | `declaration-track:3d8be650cce74c8a7d776f771a5b95212d0f554310c4a51f14e6a60cb90f5bde` |
| 86 | `theorem` | [toNonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-injective.md) | 630 | `result-track:cf941b3c5007af5c6934da44618c32c3ad2f69aa6008b21c52de227a105226ed` |
| 87 | `theorem` | [toNonUnitalRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-eq-coe.md) | 635 | `result-track:850373c62504b0665292096b8c9e574d045a82f8cf2ef8745f0acacb91f0b61d` |
| 88 | `theorem` | [coe_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-tononunitalringhom.md) | 640 | `result-track:a29e27fc4f8cd7522555b096bffeddebd673d2e6e5d7131545d132bc356dc2ba` |
| 89 | `theorem` | [coe_nonUnitalRingHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-nonunitalringhom-inj-iff.md) | 644 | `result-track:4e1978c28c489451c3df6d7f2b90626a155e5558ea8a61b75f529b34c24f1d3a` |
| 90 | `theorem` | [toNonUnitalRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-refl.md) | 650 | `result-track:6cf9c0413e819ed2c9d595646cbe1d2c976187a6a20ec036f74f6ae92321c26a` |
| 91 | `theorem` | [toNonUnitalRingHom_apply_symm_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-apply-symm-tononunitalringhom-apply.md) | 656 | `result-track:b16cb08890d05f55c0e63836af97a88cfb950e86400791bc504c8f9e0975cafa` |
| 92 | `theorem` | [symm_toNonUnitalRingHom_apply_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-tononunitalringhom-apply-tononunitalringhom-apply.md) | 662 | `result-track:585834fa35f7016afbcd75f978b213b61e5b930a593a2d1b810a62c29cf77040` |
| 93 | `theorem` | [toNonUnitalRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-trans.md) | 668 | `result-track:ee28efa732e9688db311b2f5723e8920d9842b01afecbafb86a9f18e2b87519b` |
| 94 | `theorem` | [toNonUnitalRingHomm_comp_symm_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhomm-comp-symm-tononunitalringhom.md) | 674 | `result-track:fafb48edf4f07b9d88f53e0cdabada6829c84b409e2f0b5b20c57734fc1a8d76` |
| 95 | `theorem` | [symm_toNonUnitalRingHom_comp_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-tononunitalringhom-comp-tononunitalringhom.md) | 681 | `result-track:ea3c706837a2ae0d4fd23b487d6f067687f4e7d2a11f0660ca82d25163f76ae7` |
| 96 | `def` | [toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom.md) | 694 | `declaration-track:33eeeaac70cf7a56e84120a6c4bd57419bb18b76104da146d471734730f7936c` |
| 97 | `theorem` | [toRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-injective.md) | 698 | `result-track:ae9494f88f6039063333c64947fc2b3b758d9a1335973fcc0f70780eb2547331` |
| 98 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-eq-coe.md) | 702 | `result-track:d740fee40b41e3845b3aa459ddde3a49277b9960952f2b2b2c00a3d95a1f2854` |
| 99 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-toringhom.md) | 707 | `result-track:9700dc2ca74008a9f382cf3b69606c7e137fc50e82474ca16527cb5e0e025608` |
| 100 | `theorem` | [coe_ringHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/coe-ringhom-inj-iff.md) | 711 | `result-track:2a0fee3ed3d12e36a7c2d28f3ed606ae853d57fdbfefe4d0391c0e86b5621780` |
| 101 | `theorem` | [toNonUnitalRingHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tononunitalringhom-commutes.md) | 718 | `result-track:f182773c50008ff519c5c98d5d5f44bdb05e4c36048c77dd45b0619f22935ae5` |
| 102 | `abbrev` | [toMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tomonoidhom.md) | 724 | `declaration-track:99f6595efb5e2088c43e8ddc81342292e8fb1233eb9cc7ebe876bda62f13d834` |
| 103 | `abbrev` | [toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toaddmonoidhom.md) | 729 | `declaration-track:4d630cd339b3719098362bd0e10a82d11ea2517053e6662ccb2abd0841c49f95` |
| 104 | `theorem` | [toAddMonoidMom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toaddmonoidmom-commutes.md) | 734 | `result-track:8b7962a75facfe3fdfc89e0492c0d0f4e1cc37d2b69e0e2c03c6bef1038243ab` |
| 105 | `theorem` | [toMonoidHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tomonoidhom-commutes.md) | 740 | `result-track:9660430818f373ee002843670939eae01abd46025069040e6e4339662b04e2f9` |
| 106 | `theorem` | [toEquiv_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toequiv-commutes.md) | 746 | `result-track:8ba1efc8fc93b53499d3cb978e76ed1fb0d3a117e66be3a1f7a46b0fda3660ef` |
| 107 | `theorem` | [toRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-refl.md) | 751 | `result-track:2748391e036b1dab3ed7e6bf4d98cb682314f21aa76e7d3b36ae32cc5d6f33f0` |
| 108 | `theorem` | [toMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/tomonoidhom-refl.md) | 756 | `result-track:005676e133defd56694fa4612e0f4b3492a335d15d0049456bb033fc9647d3cf` |
| 109 | `theorem` | [toAddMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toaddmonoidhom-refl.md) | 761 | `result-track:b705ce980c9e5ae1846de1dde5be44f74b9962efe1f4b2e58d00f964d05e30a0` |
| 110 | `theorem` | [toRingHom_apply_symm_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-apply-symm-toringhom-apply.md) | 766 | `result-track:af7def258e97d011797e5b373ed15b595e36a2bacedca66a163f074aaf959657` |
| 111 | `theorem` | [symm_toRingHom_apply_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-toringhom-apply-toringhom-apply.md) | 772 | `result-track:34f39e6907be2a121cc74433d9328dd7a26d25ce9262ea3e21288fdae5a8ea2e` |
| 112 | `theorem` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-trans.md) | 778 | `result-track:e794eb273c2703d1a8fc05ff062f182be0713b096a33ab20755e993fae0ad8f6` |
| 113 | `theorem` | [toRingHom_comp_symm_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringhom-comp-symm-toringhom.md) | 784 | `result-track:000024fbe2687ac732f12a35f5a4c681e38ded70491e15dd140247a2bd2adc8f` |
| 114 | `theorem` | [symm_toRingHom_comp_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-toringhom-comp-toringhom.md) | 791 | `result-track:8c4e5a0aa0f5585685bad4ed377e581cae2a2818e90422d29f9338b3f2a1543f` |
| 115 | `def` | [ofHomInv'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ofhominv-source-edition-2.md) | 800 | `declaration-track:5efaa70a2f174ce87d987aa0db50da01d071b58fb133ce060fd37a1888a6fe93` |
| 116 | `def` | [ofHomInv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/ofhominv.md) | 819 | `declaration-track:1bdce40d0209256262a20de4d8b63b923412b852beea4d5337b8d5e58d064da7` |
| 117 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/map-pow.md) | 840 | `result-track:33112a7d80856e209e97b13c87997236b2ba26a8244e2ed3dd8a0443846098ab` |
| 118 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringequiv.md) | 851 | `declaration-track:2ba3cd6c7507b515e68b4c97a47c4da6e307775920874c5a7a14dfdde8f76c32` |
| 119 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/toringequiv-source-edition-3.md) | 861 | `declaration-track:ea0dcc364426877b1f72c6709d79a638bdbe572988cf64d3f97322fb75946e98` |
| 120 | `theorem` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/self-trans-symm.md) | 873 | `result-track:290fbe3aeab9bac2ea3b972450ae567cef9937c239fa22f9b635c4ba7259dae4` |
| 121 | `theorem` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/symm-trans-self.md) | 878 | `result-track:e85671aec36486cc12c00298d99b9b542bca9f0d3dbeae3afa216d0481eb9f2d` |
| 122 | `theorem` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/nozerodivisors.md) | 888 | `result-track:69e8d886497509398d39eacfdffe22ccf50ef5f73736d9e0ec4c77b8dca51a7a` |
| 123 | `theorem` | [isDomain](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/isdomain.md) | 894 | `result-track:a19965a881524da45e078c7e98f0955a4fa49e1b0aab0ab4311d1bdce463ffe9` |
| 124 | `theorem` | [isField](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedExtIff.lean/declarations/isfield.md) | 901 | `result-track:31218f01dc7e6251ee94fdbefe46b9c31b42db62245995d735bc4c44ddbf577b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fd99a9313dac0ca1a675739cc09999092a622c4724e3f684350cc08a0c5ee70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Equiv/Variant461e73abf0a165dc7ad9730f435377ff53e891a733f93b698d7f0cb010abb7db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
