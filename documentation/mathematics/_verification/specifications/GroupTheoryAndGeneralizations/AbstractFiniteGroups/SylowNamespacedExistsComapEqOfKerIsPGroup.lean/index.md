# Verification target: Sylow Namespaced Exists Comap Eq Of Ker Is PGroup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695ced75729a1d8d7fff3dd361b791a4790a1126",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695ced75729a1d8d7fff3dd361b791a4790a1126`.

Source path: `GRWTSK/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommPiCoprod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/sylow.md) | 57 | `declaration-track:f6e39311abc79b67a8a190efe081bc4c762f8461b4671e54f9b2118446192b9a` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/instance.md) | 67 | `declaration-track:31c12bd7471a2053112c0fb83b55a946edbd859dc2b148905d397674d0c673a6` |
| 3 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ext.md) | 71 | `result-track:4798becc7ee62a645e109e388a2468ef0ffbf01d0e6643f9cf9049ed65275f86` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-5.md) | 73 | `declaration-track:ba573216e9cbbf67fe04470fd5029edae1bb39023dc67d73822ce4673feffe2f` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:5f7b29f1261d2ed0264a5b254b689595b5f372fc1947c96a35603b77113a9d22` |
| 6 | `def` | [Sylow Namespaced Exists Comap Eq Of Ker Is PGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/tosylow.md) | 83 | `declaration-track:0120e04a52758b6aa99ecb7af9a8d14d7b0290b55c8c3e59f639b13e36fe65c8` |
| 7 | `theorem` | [Sylow Namespaced Exists Comap Eq Of Ker Is PGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/tosylow-coe.md) | 96 | `result-track:3dfa3fee875c78bc7687ca77276eab27ea49453b03af951c78c925cf0f94e670` |
| 8 | `theorem` | [Sylow Namespaced Exists Comap Eq Of Ker Is PGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/mem-tosylow.md) | 100 | `result-track:5b34850f15dca3f075a232aa74a0ad0c6ef8c98bfead4f358ddbb186f4d7a9ba` |
| 9 | `def` | [ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ofcard.md) | 106 | `declaration-track:a07dafe405ffe2885e0001b26a3030f06311126dbbea848daa1ac4354051b481` |
| 10 | `theorem` | [coe_ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-ofcard.md) | 113 | `result-track:358e9ef5f2ccab110ee1bba45358e05e227aa4d0568e7710103eeeee95a0d280` |
| 11 | `def` | [comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/comapofkerispgroup.md) | 122 | `declaration-track:d2588ae7764f52e3780312c8038b02d7ba0ecb367ee22e2db08c7d51a3710d0e` |
| 12 | `theorem` | [coe_comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-comapofkerispgroup.md) | 131 | `result-track:81124e33ab2b349ffa6c9d5161144920363c2239dd08496daee874da32ebf059` |
| 13 | `def` | [comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/comapofinjective.md) | 136 | `declaration-track:aab7b79842af58cfd600858af2fed1443fb3a003cc01dbff5cadf4a3580990ad` |
| 14 | `theorem` | [coe_comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-comapofinjective.md) | 140 | `result-track:12d01d197ef1598ac87c0db176e1e61dfd1b2d9d4ae22c2670aab73933fa0366` |
| 15 | `def` | [subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/subtype.md) | 145 | `declaration-track:c455fb37ff6a1207fbca41d08d93fc9bfc146dcfdaebc4a57459346ca33281e2` |
| 16 | `theorem` | [coe_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-subtype.md) | 149 | `result-track:0a33892145e80bd6e199a0f9a1ee4558e712ea0827bdade7f22fb77c6932241f` |
| 17 | `theorem` | [subtype_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/subtype-injective.md) | 152 | `result-track:0f8d244e1c2072a7ff6c4138afbb7d28311fef3a7ed780bf4bfefdab5e620027` |
| 18 | `theorem` | [IsPGroup.exists_le_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-exists-le-sylow.md) | 161 | `result-track:d13baf5685d3da6a74c84c3dfc122117ca867c5a4ff370a4b36eae410d3c0639` |
| 19 | `instance` | [nonempty](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/nonempty.md) | 179 | `declaration-track:7c33915c88f03e269a9d51541096e21dc9b6f6d2dfdf9113e488fa5de3165ce5` |
| 20 | `instance` | [inhabited](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/inhabited.md) | 182 | `declaration-track:a18d39dc51808d4e54a90aadf71b832d4b6dd8c6642265430ddf68cf49d62b96` |
| 21 | `theorem` | [exists_comap_eq_of_ker_isPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-eq-of-ker-ispgroup.md) | 185 | `result-track:821963e3c3eadca4db0cefa0e71789f7da90fb238c5f1c6f74a42435e6f409ea` |
| 22 | `theorem` | [exists_comap_eq_of_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-eq-of-injective.md) | 190 | `result-track:cc6f4880824229409b386b41df0d704254f587b0183baac2dba1f64c2d39278a` |
| 23 | `theorem` | [exists_comap_subtype_eq](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-subtype-eq.md) | 194 | `result-track:ea44c7ef6aa10e0bc3c9110a1587d0964c79aa0432692810784159f116ea66a1` |
| 24 | `theorem` | [finite_of_ker_is_pGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/finite-of-ker-is-pgroup.md) | 200 | `result-track:aa0847a9842c973cd3b27df9fb88fc6d60e8971427af9a111ffba5fa6b027042` |
| 25 | `theorem` | [finite_of_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/finite-of-injective.md) | 208 | `result-track:9ec54654f175a0aee039cdbfdf3f8d047ed5e1db3e042a9be3773194ce5c4f9b` |
| 26 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-3.md) | 213 | `declaration-track:4ba6718f1458458eee59aa6f3fec6aa3e684febb7ef289d3f9ed54cd7f76d688` |
| 27 | `instance` | [pointwiseMulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/pointwisemulaction.md) | 219 | `declaration-track:85986a1794179671b7e30fde3e73318c4bc997b348c13b5e119d653e4c50c774` |
| 28 | `theorem` | [pointwise_smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/pointwise-smul-def.md) | 230 | `result-track:81f81a6fc165d07751e9adb67f203711418e084f5fc871bf17bd417eba8f62ec` |
| 29 | `instance` | [mulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/mulaction.md) | 234 | `declaration-track:5c7a87f429d95b3653f0e56a71de08a7ed903f2020aa6c79c55e74a8477e7f93` |
| 30 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/smul-def.md) | 237 | `result-track:122005ede79e27ea7d2732a33a04f032f66f22e9eea7442eafe207240ae263ba` |
| 31 | `theorem` | [coe_subgroup_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-subgroup-smul.md) | 240 | `result-track:448d008b8db4df5963bece61930287085ad53d226194c58091ab8bc56046a815` |
| 32 | `theorem` | [coe_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-smul.md) | 244 | `result-track:0f43573a1df52719620932dffe31c4c95c62aac5695e428e8e1b4effc33e6262` |
| 33 | `theorem` | [smul_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/smul-le.md) | 247 | `result-track:67c0cd99fe9c0ec7b86b25abd850ff3c09533f98f9369ef6c811ecfddc3197c6` |
| 34 | `theorem` | [smul_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/smul-subtype.md) | 250 | `result-track:3311a9f700bc8899199b662753fcfb5457ab0119359fdd53183f33cd81e92e94` |
| 35 | `theorem` | [smul_eq_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/smul-eq-iff-mem-normalizer.md) | 254 | `result-track:2bf17f54dfd174e9d1a240db39c985d06c01a9e4e55114190013878280a3138d` |
| 36 | `theorem` | [smul_eq_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/smul-eq-of-normal.md) | 264 | `result-track:a43aa6f5ef1e836e6a8c3e9f167a93ee548c4b367f0d0120e3181fcced9b39bb` |
| 37 | `theorem` | [Subgroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/subgroup-sylow-mem-fixedpoints-iff.md) | 269 | `result-track:09a449766dd8fefa2fa31ee0757163319cf51d48d3e83932f5e99744dbec698d` |
| 38 | `theorem` | [IsPGroup.inf_normalizer_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-inf-normalizer-sylow.md) | 273 | `result-track:cb0365d7cebfe3452e8ae235c45273011f619d86c4a671ee51dd2c8ecc2a6909` |
| 39 | `theorem` | [IsPGroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-sylow-mem-fixedpoints-iff.md) | 281 | `result-track:e0e6638c8d1a245dfb57647fed1668e9afe403613cd460e6ca1d1b4ff904dd60` |
| 40 | `instance` | [Sylow.isPretransitive_of_finite](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/sylow-ispretransitive-of-finite.md) | 287 | `declaration-track:eeb1f48ae8c39bafa1b7d59ab4b3e3a1bd6a6e8d066e6bb261edeabcfdbdf288` |
| 41 | `theorem` | [card_sylow_modEq_one](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-sylow-modeq-one.md) | 316 | `result-track:d4a7cb7511f666677e1f4d19bc6b31545b8d5c3c530fdc0d3d5bb520a85581ae` |
| 42 | `theorem` | [not_dvd_card_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-card-sylow.md) | 328 | `result-track:c8064518a79a258655607b76ed51ce5d65d5138da1adb98d56e68f12ab225083` |
| 43 | `def` | [equivSMul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/equivsmul.md) | 340 | `declaration-track:4be6d397b3ffd6a1f0b372f0f482b980ce57976734f1e25fc786ab029160bde8` |
| 44 | `def` | [equiv](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/equiv.md) | 344 | `declaration-track:afe3f56af2a0e512ec9cf31738c46a2cc778aa6b281cb7ce846f15db6035bb0a` |
| 45 | `theorem` | [orbit_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/orbit-eq-top.md) | 349 | `result-track:b3f3a7809cd0ab0dcb7cd3b6ef8853022830e99177fed79065ed267faeaeb67d` |
| 46 | `theorem` | [stabilizer_eq_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/stabilizer-eq-normalizer.md) | 352 | `result-track:e7bc57c39d82ff31270dccdc1449c72dbdcbe533d8e6c5b55783239ebf58ef53` |
| 47 | `theorem` | [conj_eq_normalizer_conj_of_mem_centralizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/conj-eq-normalizer-conj-of-mem-centralizer.md) | 356 | `result-track:0e01c4c652ab0a709c6a40b0aab160424eaf78e7b79df61a9f12c2b08898fcbb` |
| 48 | `theorem` | [conj_eq_normalizer_conj_of_mem](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/conj-eq-normalizer-conj-of-mem.md) | 373 | `result-track:ac80db070726b172c26533f08adb5a393b46d4bf68e5f5dc5792fb941f2bb2f4` |
| 49 | `def` | [equivQuotientNormalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/equivquotientnormalizer.md) | 380 | `declaration-track:085ccbebde7e40647abd551ebd0b529c9d42a5b505dcece24e01a4d1af395edb` |
| 50 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-2.md) | 388 | `declaration-track:4a801c930ac2728579e97a77911d27b8269f14bba186481359dae68fb6f51bfa` |
| 51 | `theorem` | [card_eq_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-card-quotient-normalizer.md) | 392 | `result-track:2d7f7ace15dcb2169aed9120637bb2557272a07d511c2016e8771ad411119ae5` |
| 52 | `theorem` | [card_eq_index_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-index-normalizer.md) | 399 | `result-track:5269c52fc6cd82810f40a6878118f2684a53a35a26d602d2a1e8970a76d306a5` |
| 53 | `theorem` | [card_dvd_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-dvd-index.md) | 406 | `result-track:59ec72b2af052ee1b1d5575e34cf07d6ebbbfff08d27202ef9241f837f4334e1` |
| 54 | `theorem` | [not_dvd_index_aux](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index-aux.md) | 415 | `result-track:4c521c09f1db93b800c21bae16239d7a47231197f1d3474ecfdbe4abd79ab156` |
| 55 | `theorem` | [not_dvd_index'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index-source-edition-2.md) | 433 | `result-track:4649d735b7d4e46c9902f1386fbb3fe48f8b4ed2e6cc07e3a6aa5759b6e0524d` |
| 56 | `theorem` | [not_dvd_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index.md) | 446 | `result-track:3648780d3346de5c77450ed8225eef25843a402c1d2096e0b7da93a3902bca5c` |
| 57 | `def` | [mapSurjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/mapsurjective.md) | 458 | `declaration-track:93773073e5e39786c37aa58f81047ccadad2c3eb841885cc9b1768b3b14ac429` |
| 58 | `theorem` | [coe_mapSurjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/coe-mapsurjective.md) | 464 | `result-track:2127dc70aa0234577dcc765274efc1259933319581336cab5652ace3aac1663e` |
| 59 | `theorem` | [mapSurjective_surjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/mapsurjective-surjective.md) | 467 | `result-track:d03ace68f640043c0f8001cdc2b4f767a45adb1aab9fcf21e7e449f858075dd2` |
| 60 | `theorem` | [normalizer_sup_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-sup-eq-top.md) | 486 | `result-track:08ef2a49f302ccc0c001bc6e858effcd15d2432ae537f40a8ed5cfaf1a1843ac` |
| 61 | `theorem` | [normalizer_sup_eq_top'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-sup-eq-top-source-edition-2.md) | 502 | `result-track:4d6648fa899a16bca2fe141e3e088fa4ad49bcc9163fa42a218ffddd927acdf6` |
| 62 | `theorem` | [QuotientGroup.card_preimage_mk](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/quotientgroup-card-preimage-mk.md) | 517 | `result-track:1d3d06b625102899062d4f2a5603eae45f0045a40a82b76657e120cacc030dad` |
| 63 | `theorem` | [mem_fixedPoints_mul_left_cosets_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/mem-fixedpoints-mul-left-cosets-iff-mem-normalizer.md) | 522 | `result-track:d019cf74bba86cef3f8c27decbefaa5feb244fdb57a1b65203e838f1fb491b89` |
| 64 | `def` | [fixedPointsMulLeftCosetsEquivQuotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/fixedpointsmulleftcosetsequivquotient.md) | 545 | `declaration-track:14bb7805c8d8a89cfd135fcc8cae8c8ac9724736f3d7783704f1f942c564aa95` |
| 65 | `theorem` | [card_quotient_normalizer_modEq_card_quotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-quotient-normalizer-modeq-card-quotient.md) | 559 | `result-track:548ee60ced37ee4ca4cc254e3e7afafbb2c13e56f2bda6b65eea708bb2c5138b` |
| 66 | `theorem` | [card_normalizer_modEq_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-normalizer-modeq-card.md) | 568 | `result-track:6816d30abc1bfefa68b5af066a8ce962b241b02f733cababe7768f3c78f0e44a` |
| 67 | `theorem` | [prime_dvd_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/prime-dvd-card-quotient-normalizer.md) | 578 | `result-track:7cb40d6808834468853c97081a9fdac6cc581227599036cb9172d9b2806abc22` |
| 68 | `theorem` | [prime_pow_dvd_card_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/prime-pow-dvd-card-normalizer.md) | 594 | `result-track:fbc416360b71b56ee1da0df30074ecd8ebb333599d79820315fa7d1081d83820` |
| 69 | `theorem` | [exists_subgroup_card_pow_succ](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-succ.md) | 602 | `result-track:012e21249d394c59ac3dae9d8257e692cade135b29c44970554caf1b5cacb020` |
| 70 | `theorem` | [exists_subgroup_card_pow_prime_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime-le.md) | 641 | `result-track:55dfb6b1489a790bdd22f59486f193ecf8453b930c35249ffcdb59abdca54ba7` |
| 71 | `theorem` | [exists_subgroup_card_pow_prime](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime.md) | 660 | `result-track:027a6f4b4ff9f4b1d19ae71da1545eb23aa29a45bac0b396d4de1495a3ca1198` |
| 72 | `lemma` | [exists_subgroup_card_pow_prime_of_le_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime-of-le-card.md) | 668 | `result-track:5f1c25a932752bca62d09e374b902a511a702a9dcb2ef51bc3b907aa6215201f` |
| 73 | `lemma` | [exists_subgroup_le_card_pow_prime_of_le_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-le-card-pow-prime-of-le-card.md) | 679 | `result-track:15809852476b92f0ffb669c225fd494b443fe53c5f0038aad9cb378b31731528` |
| 74 | `lemma` | [exists_subgroup_le_card_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-le-card-le.md) | 689 | `result-track:238f603f9c5cb09d6feceabbe18b60501d74e8d43c15a5ba2cfdf4a34c0c44a3` |
| 75 | `theorem` | [pow_dvd_card_of_pow_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/pow-dvd-card-of-pow-dvd-card.md) | 697 | `result-track:d7b93c14447753f8ce7c5e74a56d3243d0389c3a27aa615aa898245f9222fa60` |
| 76 | `theorem` | [dvd_card_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/dvd-card-of-dvd-card.md) | 702 | `result-track:588b047985d049ba49f8b51407b3ae2ccfa7125f32704ffcc966a5c4e757c709` |
| 77 | `theorem` | [card_coprime_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-coprime-index.md) | 709 | `result-track:b37d510b5a7e0812e06f910b0b5b33ef8e66e206ca5113c49c4488c4e81071be` |
| 78 | `theorem` | [ne_bot_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/ne-bot-of-dvd-card.md) | 714 | `result-track:1e4a0ed7569023ab581ebf07217ed897380b2b88564ab034dce4eb15b86cc46f` |
| 79 | `theorem` | [card_eq_multiplicity](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-multiplicity.md) | 722 | `result-track:ce44be6d1eac40444bfbfe20ecd4d3ac81bb4d0b76b3fd6810017f73fe02e1dc` |
| 80 | `def` | [unique_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/unique-of-normal.md) | 730 | `declaration-track:5a44101d162a7843f8bbac73a4610076ebef95021cb0311c89dbcdcbd14e7c01` |
| 81 | `theorem` | [characteristic_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/characteristic-of-normal.md) | 742 | `result-track:6bd551f44c21a5b5ab59c2e8dd02c54952c197ca256457677b3eda893b00eb40` |
| 82 | `theorem` | [normal_of_normalizer_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-normalizer-normal.md) | 753 | `result-track:675d1eefbebc95bd7f8775400fd4763cad5e549d725d97acf5bf4f602eecbe5e` |
| 83 | `theorem` | [normalizer_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-normalizer.md) | 758 | `result-track:f8272d072e831d86f740c2d877f4191aa4a83149622b7077b29c6e0374f4c0ae` |
| 84 | `theorem` | [normal_of_all_max_subgroups_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-all-max-subgroups-normal.md) | 765 | `result-track:3d1bbca95df811883e6e4686bbfff475ebdd96d5cc70dfdf8198d87779cbd033` |
| 85 | `theorem` | [normal_of_normalizerCondition](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-normalizercondition.md) | 777 | `result-track:62df0a312fedfd5062c6576568bfa30bcfa2c12802417da56b1100210f797773` |
| 86 | `def` | [directProductOfNormal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowNamespacedExistsComapEqOfKerIsPGroup.lean/declarations/directproductofnormal.md) | 785 | `declaration-track:dcc3f78229b68e009d58a90975ad2f8b6e36f4e25e4a12a1b7eebd7beb2c0fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87b44b77758ab4f9d554bf3e325aac29f219924662aeb0286e6b38c6fe203536 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Sylow/Variantf46ba724031c427de1cbbe5f909e16fdd412183627f7f03114095ba3f797d219.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
