# Verification target: Algebra Group End Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4db1e6f22ce61412dc78a15f190b7c78c188a1a",
  "lexical_observation_count": 161,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variantc59536172e9dabb92c6397375eb97955e104a9305c847b07b763970149c11b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4db1e6f22ce61412dc78a15f190b7c78c188a1a`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variantc59536172e9dabb92c6397375eb97955e104a9305c847b07b763970149c11b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variantc59536172e9dabb92c6397375eb97955e104a9305c847b07b763970149c11b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.End](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/function-end.md) | 50 | `declaration-track:1537afaf3648f45ecbeb1940810494d674fefc681766af8fa4dcf49418ae2c96` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instance-source-edition-4.md) | 52 | `declaration-track:a7ad39be3a1e6500e0c0f4d0f607fe1598d2fd1c8418b6cb7be1a2b883e46f13` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:e3b758e5e3ca5b814107ee609dcfa1ef4c3bb92934f297f433103f5fbb0d9ad0` |
| 4 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instone.md) | 67 | `declaration-track:31e49e439f028337c8ae192e7a3cb71969c2e97b07315367bcf641af39c05cae` |
| 5 | `instance` | [instMul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instmul.md) | 68 | `declaration-track:12fa0a766f14e86f0f88219ffc0dfac3d2a4208ac46439215cf9a697e3608604` |
| 6 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instinv.md) | 69 | `declaration-track:49f9ce9a21994ce59153e5aa62b39953e0c8322e3dfd18760fa1757b247f1372` |
| 7 | `instance` | [instPowNat](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instpownat.md) | 70 | `declaration-track:0f756358be4316bdd504c2f94377f7c3151c482aaf54b4aba4aaf031f66fe749` |
| 8 | `instance` | [permGroup](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/permgroup.md) | 73 | `declaration-track:7aa7a54d40f6487b169ae76d170101e1012d8d214607ab986d76cb95cc63b313` |
| 9 | `theorem` | [default_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/default-eq.md) | 84 | `result-track:1435fb5009555d2c0a9d68bcf39634e10b49f7e64716b8060db22793ee995b3e` |
| 10 | `def` | [equivUnitsEnd](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/equivunitsend.md) | 90 | `declaration-track:04de99862ed8375914d62d49bf4882fb592b6f33d331b809dfc73fe8d9e1b014` |
| 11 | `def` | [Algebra Group End Namespaced](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/tohomperm.md) | 102 | `declaration-track:38e2ae26593491960ccbea96a30c2f3e5f0c0bb00c25813467388e69ce38d590` |
| 12 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-apply.md) | 105 | `result-track:7c94c61a334f3a794308dacff77c427b04c04dc2b57ea2de8708daf16e1381ba` |
| 13 | `theorem` | [one_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-apply-source-edition-3.md) | 108 | `result-track:f455482f2387a3f39c5e467e36eb815c5cb3de634f766656de6e82aa5ae9c38a` |
| 14 | `theorem` | [inv_apply_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-apply-self-source-edition-3.md) | 112 | `result-track:73a35c01c3ac446d3fbddbf82fdb1b1a95a5990ae7909fe2655d9c0efde6ee03` |
| 15 | `theorem` | [apply_inv_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/apply-inv-self.md) | 116 | `result-track:45f2fa94d23233d6e26fa40b87268686f3cfc611935b7699360cca4e2e467624` |
| 16 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-def-source-edition-3.md) | 119 | `result-track:3a7f378d5a71c63edae7d339ae97104ba96afc0fa44bc7b0466a09e79a0a7f52` |
| 17 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-def.md) | 122 | `result-track:0f59fedf6787d46ef7d8f7fb672cf23ba3c7d632ff00cfe045daa9dccfa9bfd6` |
| 18 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-def-source-edition-3.md) | 125 | `result-track:cc1a0b6a0965bf8e28fc4a892a439b8e6128ba1ac62d5792f6dea82cc84a5e02` |
| 19 | `lemma` | [coe_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-one.md) | 128 | `result-track:56f19f98f6d7760a5f5044a2dc81dd5590d3e16818ce238e570e579d26d3053c` |
| 20 | `lemma` | [coe_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-mul.md) | 130 | `result-track:170e5305a110f409f6ec4b6248731bb0c6a41990bce7a38189a3f3041dbf2659` |
| 21 | `lemma` | [coe_pow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-pow.md) | 132 | `result-track:8dfd2732e4ccbda57c4ac2aaf70e99a5ea4864af5fab73d26ed13f3fbf556402` |
| 22 | `lemma` | [iterate_eq_pow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/iterate-eq-pow.md) | 134 | `result-track:7ad95f9eca5c103b0b6255770165cc8e97a478387353e81e484e2c53a4868ea9` |
| 23 | `theorem` | [eq_inv_iff_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/eq-inv-iff-eq.md) | 136 | `result-track:f0093c6b82e53cef5109357ee807e89efa8f763cdd96a61f009c3e3069bac47d` |
| 24 | `theorem` | [inv_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-eq-iff-eq.md) | 139 | `result-track:c8c69440994dd26d27ecc6ba0e05fe4da8abfcf3c910c10a9bc517c7d8a6cd21` |
| 25 | `theorem` | [zpow_apply_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-apply-comm.md) | 142 | `result-track:bb52b5ace5687487f24e86f0a8c0e19b09e93577de75cdcff804c8da4d41a9ae` |
| 26 | `theorem` | [trans_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/trans-one.md) | 153 | `result-track:7f2905ec887523bc153ba36eedd8ebc433e428e12e9d90ee0dbbe015dfbdf149` |
| 27 | `theorem` | [mul_refl](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-refl.md) | 157 | `result-track:28411f7cf71ea3e9c19180e628ddaefcad33ba327837bda56ba2348fe9996161` |
| 28 | `theorem` | [one_symm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-symm.md) | 161 | `result-track:0b32d447ed25281e4be275d18e4419699fe8ed76d2a0f0101b1fa8e049af1ed0` |
| 29 | `theorem` | [refl_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/refl-inv.md) | 165 | `result-track:d5eebf55cec1eae1e0923493f55d202006ef1852ae8ee2943dc2101462115cbc` |
| 30 | `theorem` | [one_trans](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-trans.md) | 169 | `result-track:3563635217ae00586bc1961040d5058048d96d353fa7b93197211eea119a175f` |
| 31 | `theorem` | [refl_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/refl-mul.md) | 173 | `result-track:e092a39f53251ab70999020c55d11babf1a0ce670bb0e1f255ff513a8da51b1d` |
| 32 | `theorem` | [inv_trans_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-trans-self.md) | 177 | `result-track:3c07db3d17ca56d2b28b9e578ca55145c15b8a73b40290edc3af3a06140618a9` |
| 33 | `theorem` | [mul_symm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-symm.md) | 181 | `result-track:d0f2c82f312f9a9cbcd063918901b41c73f83d91ceade76ddb16d3c2c03c8723` |
| 34 | `theorem` | [self_trans_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/self-trans-inv.md) | 185 | `result-track:009d63620dd3f2a0d50c365dbdd6e646c3d1dae51ec71038448ccb1483761e78` |
| 35 | `theorem` | [symm_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/symm-mul.md) | 189 | `result-track:47ee8a3f25352dfcafa5a6b6008a9aa5085703e93f73bca6258b0dafdbe2e86a` |
| 36 | `theorem` | [sumCongr_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongr-mul.md) | 196 | `result-track:07cdf4c15efe8d7e3386546c1bd6dab6e25e7712e3d1a9f416ed6fa70e14989a` |
| 37 | `theorem` | [sumCongr_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongr-inv.md) | 201 | `result-track:abf2265119cc895dbb6b382d3accad7805250094aabea6c5405ac09131820476` |
| 38 | `theorem` | [sumCongr_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongr-one.md) | 206 | `result-track:ccb82dc981e07e42d7f9ffefe0b227e6946a16684e09660f3f3687894be70d9e` |
| 39 | `def` | [sumCongrHom](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongrhom.md) | 214 | `declaration-track:62f5538fea0571203da07e9291f720f27352540bd00bdcbf32bbf7eec6a5754c` |
| 40 | `theorem` | [sumCongrHom_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongrhom-injective.md) | 219 | `result-track:3e3cfe304f19d8b47670e7ae7d938cf769029c0f3415f0b986ecdbcd22766ce7` |
| 41 | `theorem` | [sumCongr_swap_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongr-swap-one.md) | 227 | `result-track:cf2feefbf7e4edf2d93ab4276d93edcc2db2be627a1d6ca3d2b6cf16ad48e725` |
| 42 | `theorem` | [sumCongr_one_swap](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sumcongr-one-swap.md) | 232 | `result-track:d7ae8a77b2e5106277b9d60afa5365d8e620c57cf0f9bf7426bbffef7530ce05` |
| 43 | `theorem` | [sigmaCongrRight_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sigmacongrright-mul.md) | 240 | `result-track:8c734a10eaa7fd43100f10260e5cef87fa3304cd02eb8cc724f9436580fd88fd` |
| 44 | `theorem` | [sigmaCongrRight_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sigmacongrright-inv.md) | 245 | `result-track:7378750074563986db2d13d2b3d8c1789804b6debd366a84291c8d017bf80563` |
| 45 | `theorem` | [sigmaCongrRight_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sigmacongrright-one.md) | 250 | `result-track:0ac1f79c52903b55d8bb64379fa6be6400e864018729361a73fdec0a748f5664` |
| 46 | `def` | [sigmaCongrRightHom](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sigmacongrrighthom.md) | 259 | `declaration-track:b843ea93f53fb24480f2cb2b58057ef4ad98741177e9700adab5f63fd0d907b0` |
| 47 | `theorem` | [sigmaCongrRightHom_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/sigmacongrrighthom-injective.md) | 264 | `result-track:78e28a535287d193a26dd731a1198260d6512e8758e6f10b2c065fd702bc25b8` |
| 48 | `def` | [subtypeCongrHom](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypecongrhom.md) | 272 | `declaration-track:953a9724391ce1d056ae3cdcbc4e7bd3bfe1e6b3bf22c6741dda2ae876bcc3e8` |
| 49 | `theorem` | [subtypeCongrHom_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypecongrhom-injective.md) | 278 | `result-track:e0baed365c59291f190f2fbf50e191c710399ff5139f69be3412cd531286ed4a` |
| 50 | `theorem` | [permCongr_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/permcongr-eq-mul.md) | 287 | `result-track:ef47a3d0477f0b8f8f09728f966460c6f1b7ac35dee304a627df904479b8a5a4` |
| 51 | `theorem` | [extendDomain_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-one.md) | 298 | `result-track:80e89c5b170ab0b276fe2f7eb2d0f459e3febd5e0c41d2b42f63d54e8246d46c` |
| 52 | `theorem` | [extendDomain_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-inv.md) | 302 | `result-track:4d140daaa4e18630d4350059299fc164fda27a44b9ff59e09662718a9e1bbf3c` |
| 53 | `theorem` | [extendDomain_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-mul.md) | 306 | `result-track:473bdcc6920c4dac8043b345fe38067bbb94716a8ebde524767d0a92bdc0722c` |
| 54 | `def` | [extendDomainHom](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomainhom.md) | 312 | `declaration-track:0280ffe480bdf54a43a78afcf7db239bc5f1bd4b72167212bab2573a61c4e5f4` |
| 55 | `theorem` | [extendDomainHom_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomainhom-injective.md) | 317 | `result-track:da9acbff7720aca7cf686a6b34d742cfb30b974ec670c3d92c2c716d705cc713` |
| 56 | `theorem` | [extendDomain_eq_one_iff](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-eq-one-iff.md) | 323 | `result-track:8d6812adf95e607f8c558e60513c44da71b0769a16f41837e30c1acfa55a7fc6` |
| 57 | `lemma` | [extendDomain_pow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-pow.md) | 327 | `result-track:e6ecb5c91139711f58c4616fa39f4cc2318f56051e3c8663eed685b39a3b8a30` |
| 58 | `lemma` | [extendDomain_zpow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/extenddomain-zpow.md) | 331 | `result-track:7f234bc89f57619be75e0ede33badf608f1e503fefd6ad7d8f2631860db08a2e` |
| 59 | `def` | [subtypePerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm.md) | 342 | `declaration-track:796d9ce27489d5e63a207ef71a3491ac1345af2e53e1d9d10c30db051e5de98e` |
| 60 | `theorem` | [subtypePerm_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-apply.md) | 349 | `result-track:9d97149fc968873e624329d9dda8c932c450bbc7b34b76ac303841ef35192eab` |
| 61 | `theorem` | [subtypePerm_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-one.md) | 354 | `result-track:5e98e2452b0c9be629b697ee35d813c53bfb3c81af7183c74725969469c1be25` |
| 62 | `theorem` | [subtypePerm_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-mul.md) | 358 | `result-track:d6be29fb76bd90875397fa76a18f123be119f826cebf1728b449abeec60a87e1` |
| 63 | `theorem` | [inv_aux](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-aux.md) | 363 | `result-track:e0fc094e26a027c65574b6d78a0478313ebfb63f2add7fbe6338e240d45aa57d` |
| 64 | `theorem` | [subtypePerm_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-inv.md) | 367 | `result-track:0204f5ee4e8197f03b0b915e2f062f415cb09fe6b3a0130a544aaab697352513` |
| 65 | `theorem` | [inv_subtypePerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-subtypeperm.md) | 373 | `result-track:4998d999d5ff2747abc38b36ed96bbbd12ea4067ee54de080d746d3cfea4ae99` |
| 66 | `theorem` | [pow_aux](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/pow-aux.md) | 377 | `result-track:4ae71c2225ac44b16e343b5e3d3162d8c5dde4be498cd982d218c0679f06f2db` |
| 67 | `theorem` | [subtypePerm_pow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-pow.md) | 382 | `result-track:1d7e3d7cf803ef921c79394e7d5b1dd8266f13e64a803a2db387542727994f07` |
| 68 | `theorem` | [zpow_aux](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-aux.md) | 388 | `result-track:7d494779d127381aa15d8ac60e4658d545e9c658d8b4d694582d3bd2a8fb5380` |
| 69 | `theorem` | [subtypePerm_zpow](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-zpow.md) | 395 | `result-track:f472a1fc5aa2a4e2b23e5c9ac18aa6b477e17d0625331d862fe5d1fc86001e11` |
| 70 | `def` | [ofSubtype](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype.md) | 405 | `declaration-track:96c3e3aaa604e9be44cd0abe0c8702bd60d8084aceb74b6092a796b4ad0ed2c4` |
| 71 | `theorem` | [ofSubtype_subtypePerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-subtypeperm.md) | 410 | `result-track:b170f9916569933f6b015b7b5f6f60db82e62c7a13fae3282d898ea69c293a12` |
| 72 | `theorem` | [ofSubtype_apply_of_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-apply-of-mem.md) | 419 | `result-track:bde5c3f2ed747d670d8c80e7728d58019aaa6abf171f45433a31eb221b1861cf` |
| 73 | `theorem` | [ofSubtype_apply_coe](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-apply-coe.md) | 423 | `result-track:316201e348a4c617adab05d92f0b8d94c8b7761d42ab3823e45fd4cdeba86c5f` |
| 74 | `theorem` | [ofSubtype_apply_of_not_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-apply-of-not-mem.md) | 426 | `result-track:2c7034a852e49cdf774b61c3ccee4bc984ce010bf04acba5025cc4e93074c547` |
| 75 | `theorem` | [ofSubtype_apply_mem_iff_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-apply-mem-iff-mem.md) | 429 | `result-track:b7c51d54231dd1d7a0449de46b01f74fc4b4a0ac4d012834d4277fd5fa8659ba` |
| 76 | `theorem` | [ofSubtype_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-injective.md) | 435 | `result-track:7994684ccb7730c94da88787f4db1dbf722259f3ce51760db1af2b2cde107c6a` |
| 77 | `theorem` | [subtypePerm_ofSubtype](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeperm-ofsubtype.md) | 443 | `result-track:e62a779108d341bd67aac0ebb5caab620ef56dc3f16a9e4023a4ee3e84a231a2` |
| 78 | `theorem` | [ofSubtype_subtypePerm_of_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-subtypeperm-of-mem.md) | 447 | `result-track:1208f5e38d79a8f0360797043117f372085cea12aca766b035b3b8df320b3fba` |
| 79 | `theorem` | [ofSubtype_subtypePerm_of_not_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/ofsubtype-subtypeperm-of-not-mem.md) | 452 | `result-track:b73f9a51cb563eabb9ed73e69825a0d51046fc44cdf0ec48ea301086069b88ef` |
| 80 | `def` | [subtypeEquivSubtypePerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeequivsubtypeperm.md) | 460 | `declaration-track:187be95dc347f6e10a80d510d67ec6cfe853dc1c40a0758d8709e5eb885ef679` |
| 81 | `theorem` | [subtypeEquivSubtypePerm_apply_of_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeequivsubtypeperm-apply-of-mem.md) | 471 | `result-track:da83906180ca4291426de9ffd3708d786146ef7e13e56bfa99c5fa812cc0f067` |
| 82 | `theorem` | [subtypeEquivSubtypePerm_apply_of_not_mem](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/subtypeequivsubtypeperm-apply-of-not-mem.md) | 475 | `result-track:4322834f97c2273299edc2a38715bc8c1c8d2a68b3a7d97d5ea9f097ea607bb4` |
| 83 | `theorem` | [swap_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-inv.md) | 488 | `result-track:319071ef2a9e6bbd83fdfad16d47d895673bc821afd71f4ef900bedda4c68270` |
| 84 | `theorem` | [swap_mul_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-self.md) | 492 | `result-track:dcf9d8bd70aa9d337be5d8244524bd461b4ffbec9c56d615b0135d2b145d2fe3` |
| 85 | `theorem` | [swap_mul_eq_mul_swap](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-eq-mul-swap.md) | 495 | `result-track:54ef882c0f7ca0279db9a189cc5b1f335747b5531e2add5d6359d44e58dad0b4` |
| 86 | `theorem` | [mul_swap_eq_swap_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-swap-eq-swap-mul.md) | 501 | `result-track:f67ec93e9ce99a20a7c4843e01d80ae00ad907f44b3e6da87d7e4465de824131` |
| 87 | `theorem` | [swap_apply_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-apply-apply.md) | 504 | `result-track:73e971dfd6a0cc1ae7448769eff68803dbceef1def772c09ce59d6330411d9b3` |
| 88 | `theorem` | [swap_mul_self_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-self-mul.md) | 512 | `result-track:511492f0c5d31c1f80415e2f11427aba4a2e750154346258041e1f0b4480f8a3` |
| 89 | `theorem` | [mul_swap_mul_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-swap-mul-self.md) | 520 | `result-track:94dbcca6de3c73fd0e2f52af437a9da7a51675e84414cafdc7b484a361a89d4c` |
| 90 | `theorem` | [swap_mul_involutive](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-involutive.md) | 525 | `result-track:02e1d7a13d1e2dde0ddedf74f89f0b861355406706e7504ad69405fe8d152783` |
| 91 | `theorem` | [mul_swap_involutive](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-swap-involutive.md) | 530 | `result-track:3c7a27951da476011f18e639330e699da5dc8159189c512c867ebdc980aa1632` |
| 92 | `theorem` | [swap_eq_one_iff](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-eq-one-iff.md) | 534 | `result-track:f606fc343908ec3d0317d3337bcf8c3d818b5a95c7519a27fbbdabbe152f2113` |
| 93 | `theorem` | [swap_mul_eq_iff](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-eq-iff.md) | 537 | `result-track:be045132ea5852c5b719591d359e4264abfd62b9d376282e1e1003fd6f500a26` |
| 94 | `theorem` | [mul_swap_eq_iff](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-swap-eq-iff.md) | 540 | `result-track:3c38fc300b2aa1d176b4eed0198fb3d60c60f921e1586f299ac12e624067388d` |
| 95 | `theorem` | [swap_mul_swap_mul_swap](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/swap-mul-swap-mul-swap.md) | 543 | `result-track:09db196ac967a1efa1f54db0a4e6228a9edd523e50b6d7212c09e1b20a35bc21` |
| 96 | `lemma` | [addLeft_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/addleft-zero.md) | 555 | `result-track:b42d164d7f22c7e719775176d1686eb9944c4838017a1902d82b1e8d0b81d686` |
| 97 | `lemma` | [addRight_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/addright-zero.md) | 557 | `result-track:d0abce74ab3f094f759b9f831a1d74198de342bfa8e2fc5d9c6b3fbc6ef13121` |
| 98 | `lemma` | [addLeft_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/addleft-add.md) | 559 | `result-track:7cc4ef3673f637ae1157fb9900e7cd34c0a960599e4a30fda3fdcac0fd643b94` |
| 99 | `lemma` | [addRight_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/addright-add.md) | 562 | `result-track:3f677c85886c4da8f0c5bba45237509d963045f95a61f69e085faca111a9562b` |
| 100 | `lemma` | [inv_addLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-addleft.md) | 565 | `result-track:8f38146573bfe52365130cc7bb252a3fdbc260e09f44dd76db337a7884cc6ae8` |
| 101 | `lemma` | [inv_addRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-addright.md) | 567 | `result-track:7c2897bac0ca571ab27bada1719de7c88b4f36df811e6c3a73a12f942f872755` |
| 102 | `lemma` | [pow_addLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/pow-addleft.md) | 569 | `result-track:f06cdf788def33ef0efa2d9c3cda1c39cb45c00cfee72ca83ab4d132acd0c4b8` |
| 103 | `lemma` | [pow_addRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/pow-addright.md) | 572 | `result-track:1332cdf03d85d5fa3f56f5121f0d6f966bf891cf25882da01515b618afefe103` |
| 104 | `lemma` | [zpow_addLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-addleft.md) | 575 | `result-track:adda8a7f0fea5553c5639814469f33cebdc2733739abaccb84ad756c241984a4` |
| 105 | `lemma` | [zpow_addRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-addright.md) | 579 | `result-track:9dfb4ed248aaf08fa98d9925f89e40fa414fa4d81e0b65c18fe2374949e48f93` |
| 106 | `lemma` | [mulLeft_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulleft-one.md) | 588 | `result-track:6f770ff327f6c300b70a841498ea3e6d1f348651e9bfb9847f433781fa09b0cc` |
| 107 | `lemma` | [mulRight_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulright-one.md) | 590 | `result-track:3d1d7bb948c2e4596be0f0d6835717b0bc638da9afbe631b46121af9cf22709e` |
| 108 | `lemma` | [mulLeft_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulleft-mul.md) | 592 | `result-track:1d9a05b410247f399cf64b823cbfeb0e80d41595b8fcb0c0dbf82b3a86cfed4e` |
| 109 | `lemma` | [mulRight_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulright-mul.md) | 595 | `result-track:7748c4d3fe80e47db221d3bb7b13a3f2f11adc754ad7d7252e6f9a07c0415a32` |
| 110 | `lemma` | [inv_mulLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-mulleft.md) | 598 | `result-track:9250c11bd4ac19ab41016bc467805abdc07ab511b9f89bf3a85af0c8aa1e38f1` |
| 111 | `lemma` | [inv_mulRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-mulright.md) | 600 | `result-track:077a408dc45f241d84b5dc5b2acc8ba9c58182dd4c04fdb5ce41ae648d575b5c` |
| 112 | `lemma` | [pow_mulLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/pow-mulleft.md) | 602 | `result-track:0271dbce3574ae4a3a98aeb91b82cc9dfab80046105ae72b37af2651b7a07597` |
| 113 | `lemma` | [pow_mulRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/pow-mulright.md) | 605 | `result-track:85a1afee425cf7598bb7d10537f6c2d982c497ae2833b74862740c9234ca75b9` |
| 114 | `lemma` | [zpow_mulLeft](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-mulleft.md) | 608 | `result-track:d087feee7cdbc7d709de1d5b168f9bd1635d37db4cb52ecca07290f72770f2a0` |
| 115 | `lemma` | [zpow_mulRight](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/zpow-mulright.md) | 612 | `result-track:3fedceebba6cf881bd6b5b6919b35317b0dacd9848f0793f3781c79cee85b1b9` |
| 116 | `def` | [MulAut](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulaut.md) | 621 | `declaration-track:9de7721bd4ee693de4c4da29e028a3ec9faacfeba09007a24e8c23f01558aa98` |
| 117 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instance-source-edition-3.md) | 635 | `declaration-track:7565af895ab90e4d06bc1d190aaa9659f2b0f4e2fce07dba7f52ba9c0f8f88ee` |
| 118 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instance-source-edition-2.md) | 644 | `declaration-track:5f9c5f7a2238f24982e401ffefff13ed7ff5a823d7396fb72109959de681d0d8` |
| 119 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-mul-source-edition-2.md) | 648 | `result-track:3b88ea552facd7e93cde6b2cbc754f1a35ce2d31065647237cae8bc83d4704db` |
| 120 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-one-source-edition-3.md) | 652 | `result-track:f66b7d45fdad5c84988c831fec5810ffe412212f356568384faddd685e86f330` |
| 121 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-inv.md) | 656 | `result-track:3cb8c8ec4a4a4c2ead977cdecb2a4eb8812d2578de8c04806b473444a63e62f6` |
| 122 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-def-source-edition-2.md) | 658 | `result-track:566bcd9d8817d92ed2757e934b51e335d7a7269643a66a90d103f19c4ad52fcb` |
| 123 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-def.md) | 661 | `result-track:294aaff5ecfa9bceeea3c2df7e0ca097775758db8aa9fdaeed96a17d6e49211f` |
| 124 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-def.md) | 664 | `result-track:773b00eab94d00595fc09641b95debc6ff0620ede4b313d699b4088e6f11b227` |
| 125 | `theorem` | [inv_symm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-symm-source-edition-2.md) | 668 | `result-track:fa0adde8d0d3117871e7ff05ede2387c937d0ee6593c213545694297c612d3a7` |
| 126 | `theorem` | [symm_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/symm-inv-source-edition-2.md) | 671 | `result-track:6cb22bb67fc7c1a21a6944f190c1db88735d334e456a292154373f88be7193f6` |
| 127 | `theorem` | [inv_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-apply.md) | 674 | `result-track:06a5ac09f649ea780af0e1a5c22ac445acf60939e26d9283d1a67f975b01d4b7` |
| 128 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-apply-source-edition-3.md) | 678 | `result-track:9a48a9e5aa92525b9d3cec743799ce3a90774dbab5cb6fd6d31e966a8e24fb66` |
| 129 | `theorem` | [one_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-apply.md) | 682 | `result-track:2048d0720af56266937ba4e82410b8b8faab3734a97ce01ce72510d05d8fc643` |
| 130 | `theorem` | [apply_inv_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/apply-inv-self-source-edition-2.md) | 685 | `result-track:59549112e556e3f6914f9f9d9594728c1237a57f33aaa207b3b62918406d4248` |
| 131 | `theorem` | [inv_apply_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-apply-self-source-edition-2.md) | 688 | `result-track:65a7b3df07c4065d72ed599f3125d96bfe0cd1db8a2fbedfa855adf176b2c54e` |
| 132 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/toperm.md) | 692 | `declaration-track:102dd8e1c5df5cb89be21e376a4cf705faf9f7fb010a0531ba4ad738e84508dd` |
| 133 | `def` | [conj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-source-edition-2.md) | 701 | `declaration-track:3d72d1f28642f22b1224a260f855a686d41442556a326f6d71b2aa73250d83b0` |
| 134 | `theorem` | [conj_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-apply.md) | 715 | `result-track:1c5115674f8fca06beb355173f7d4c7d6230ff504bf9146aca3566dead9eccc6` |
| 135 | `theorem` | [conj_symm_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-symm-apply.md) | 719 | `result-track:b49f329ddce14beec61a7d3ec433deff2a43f9cf500b243f1cedd29cf3fe3ad0` |
| 136 | `theorem` | [conj_inv_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-inv-apply-source-edition-2.md) | 722 | `result-track:f5b19f2e70719852b5c7a83f20c1f158462bab7f913c69682b7d650582617434` |
| 137 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/congr-source-edition-2.md) | 727 | `declaration-track:db7578ae2fdd3d28077d3d54c03bdd48a626ae284313a2e63209a9e62c37aea5` |
| 138 | `instance` | [group](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/group.md) | 744 | `declaration-track:9d78c8d3d3f54db0cdbf4db8838020dd4efafa67d373caea5bb14c48929ee2fb` |
| 139 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/instance.md) | 753 | `declaration-track:3c7ff51c51946893169eb6fcddba844f89ed146d8ddc9ed3a9ddc7fffac29f32` |
| 140 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-mul-source-edition-3.md) | 757 | `result-track:9de3f002443c3fdd6a2d068adb9954e276b736543c98b2d07e38ceef8fe9ad31` |
| 141 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-one-source-edition-2.md) | 761 | `result-track:b74e3258eea50ceadb4693687a42b1fe437d409cbdbe43770d1c29134c9c60d9` |
| 142 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/coe-inv-source-edition-2.md) | 765 | `result-track:faee20e8805a9bf2571e1b2d39213a14db4170b4b6192a094aa46fd6eb0c1908` |
| 143 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-def-source-edition-3.md) | 767 | `result-track:d69746904ba765e53e82c4c2037668f3f73109564ba9a5d89d9a15e053c0e55c` |
| 144 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-def-source-edition-2.md) | 770 | `result-track:2fa631f998a1e023154dd66d25a747832e2785fe351d5e2a5e6cbc688a0e8073` |
| 145 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-def-source-edition-2.md) | 773 | `result-track:a1a8af1b523949ec04d17800d590b03f588fc6a1cf57a0c79f2dcd367c857266` |
| 146 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mul-apply-source-edition-2.md) | 777 | `result-track:8209720124ae4cd9de00cbcc295d24b69828277fa138c37e7b0cee5442a071c5` |
| 147 | `theorem` | [one_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/one-apply-source-edition-2.md) | 781 | `result-track:b792ae2a7d332bb506643471c8cdf901bae55340c66eaf0abcd981ceb228fdd5` |
| 148 | `theorem` | [inv_symm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-symm.md) | 785 | `result-track:d99927aba1caa3ba5f1b20d375c50233c4981c4380abff53e8d629fde3547591` |
| 149 | `theorem` | [symm_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/symm-inv.md) | 788 | `result-track:259e78b5bad144fec13e07b9d8c31564645bb79cb9ced7cc78a9ba2506005a51` |
| 150 | `theorem` | [inv_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-apply-source-edition-2.md) | 791 | `result-track:221784bb3465f4730c643f55b486a71a18994a089252fb6d8eee5b4c5523ea16` |
| 151 | `theorem` | [apply_inv_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/apply-inv-self-source-edition-3.md) | 793 | `result-track:f0ebcfb70d6d20b0ed84798b1d2759800ca7accbce51cca6a4b83fff6de81cb6` |
| 152 | `theorem` | [inv_apply_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/inv-apply-self.md) | 796 | `result-track:46adc22d042e0dbde30aa45b6ffacd57d88a347630e9f5ac61db6723545ce7f5` |
| 153 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/toperm-source-edition-2.md) | 800 | `declaration-track:d6dcebfb51bdd3614be9efe62f877c0890db96afd025a7afc444dc3c38b3c026` |
| 154 | `def` | [conj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj.md) | 808 | `declaration-track:21e0ca560ab8d67877ab60aa596812c545d6c568807147bd0f2f2f2fa2e64aa6` |
| 155 | `theorem` | [conj_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-apply-source-edition-2.md) | 829 | `result-track:c5b77dfcf56571d7f66addfac446697d09b26eee32ffeecaea10e0198e51c607` |
| 156 | `theorem` | [conj_symm_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-symm-apply-source-edition-2.md) | 833 | `result-track:d04a54b5755f9b13a42b1453442cf20a76a3defe388a6ff2346f10ffe17559cc` |
| 157 | `theorem` | [conj_inv_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/conj-inv-apply.md) | 836 | `result-track:0bb8c96ab14f8c2a5b44b7a15c08ace6ad1d4bbbc235db4b0e6e5b1b59bf8158` |
| 158 | `theorem` | [neg_conj_apply](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/neg-conj-apply.md) | 839 | `result-track:721831e30c5883af97fc38973c96dea08cdbccbc83b2b841b6b684430552f31b` |
| 159 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/congr.md) | 844 | `declaration-track:99d86b0cc6876d0c5c33531aa868a08017e628701d392a6e3b60f002ea5648db` |
| 160 | `def` | [MulAutMultiplicative](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/mulautmultiplicative.md) | 858 | `declaration-track:eb5712440eb48d2ae586cff06fd0958ac71fcfe5bed65bb29d4e92a21817d54b` |
| 161 | `def` | [AddAutAdditive](../../../../GroupTheoryAndGeneralizations/AlgebraGroupEndNamespaced.lean/declarations/addautadditive.md) | 863 | `declaration-track:6be86de4b6a74d6f3593b100b9465c550e8a0069daa2280c8351a23d5f099700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55f0b642d449583f37d65dd9891192ebcf06b8f7a6545f1eaa2c8c93ce26e60f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/End/Variantc59536172e9dabb92c6397375eb97955e104a9305c847b07b763970149c11b41.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/End/Variantc59536172e9dabb92c6397375eb97955e104a9305c847b07b763970149c11b41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
