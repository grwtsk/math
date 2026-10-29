# Verification target: Units Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9ff98ad190e66c5ce3e5bf94536a8f1c905a42",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9ff98ad190e66c5ce3e5bf94536a8f1c905a42`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/rat-ringofintegers-isunit-iff.md) | 54 | `result-track:cb22116dc1da57189f958420695311813374a1720e69d566681d180b27d599f5` |
| 2 | `theorem` | [NumberField.isUnit_iff_norm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/numberfield-isunit-iff-norm.md) | 67 | `result-track:add82734a1846a00d014ebade4e8d424224dc1e37c47c81bbfd82d475d2791c5` |
| 3 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 78 | `declaration-track:f6e9f8210bbadd5c42e93d3fca5c7e5e4ded2db537bc23679317060274015906` |
| 4 | `theorem` | [coe_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-injective.md) | 81 | `result-track:d5a332ce8f94df94b016a25a317b90e43c3e000a29f0a1d356ef9912a5727131` |
| 5 | `theorem` | [coe_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-coe.md) | 86 | `result-track:a438dbe9eb0f4bd2507048ed02d8c668de9759dfcffe9efbd11d56133eeb5e39` |
| 6 | `theorem` | [Units Basic Namespaced Public](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/root-grwtsk-numbertheory-algebraicnumbertheory-ratringofintegersisunitif.md) | 88 | `result-track:bde63be3d4a7018bfc799d36de47f6e068ae4406af0c9d4f4a4cb3af9fc4f555` |
| 7 | `theorem` | [coe_mul](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-mul.md) | 93 | `result-track:e2671807c1e118a80c66e098f29145c5e3a99332da0158bf5528fde4a9cf6db8` |
| 8 | `theorem` | [coe_pow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-pow.md) | 95 | `result-track:c1617d93e762bb9998705ebd7d6b3cbe5ddbbcadeac247b989a64f43183e5c05` |
| 9 | `theorem` | [coe_zpow](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-zpow.md) | 98 | `result-track:bc2477c8cd6aab1299a578697f8b448812483be68f00e4f639fd8f105aaaad14` |
| 10 | `theorem` | [coe_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-one.md) | 102 | `result-track:22ab7c5900b5b6e35e8b3ffbcea66b11fdc98f06f7513c099ab9a7865dc3bacf` |
| 11 | `theorem` | [coe_neg_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-neg-one.md) | 104 | `result-track:245a14ae15f0e90b4bd0287f9f60c883fdf1e5637be29948cf6880ab9fbdeb9b` |
| 12 | `theorem` | [coe_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/coe-ne-zero.md) | 106 | `result-track:53d9ebffcc5ae341122cc66caacbcd17685b4d124fbcef61280d2a71faad725e` |
| 13 | `def` | [complexEmbedding](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/complexembedding.md) | 116 | `declaration-track:7429c95bfa5b8f42f1d4afe9afcdcc894c1b8b5e170d9f750847df3fc7199504` |
| 14 | `theorem` | [complexEmbedding_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/complexembedding-apply.md) | 120 | `result-track:64e080d52de0a4e85f6c1d549aec8b37176e01fd105499a3c910310d3bcf695f` |
| 15 | `theorem` | [complexEmbedding_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/complexembedding-injective.md) | 123 | `result-track:d1733932ab413bebc7581c4955c272ccad67d9a35ffc61d150a2e849287dbb46` |
| 16 | `theorem` | [complexEmbedding_inj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/complexembedding-inj.md) | 128 | `result-track:abd7470121845548dd5584a5e8754e53f2cc152cf441be5d6bc50f871d28f5b1` |
| 17 | `theorem` | [norm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/norm.md) | 137 | `result-track:e01ca58689a9fc924de5e1731317c00c95f66c79fb7a2981f51e16df693b7c75` |
| 18 | `theorem` | [pos_at_place](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/pos-at-place.md) | 142 | `result-track:7256dd854bb6919094896488f3a3a620e2dd2f3d215d702ea68477161678bba2` |
| 19 | `theorem` | [sum_mult_mul_log](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/sum-mult-mul-log.md) | 146 | `result-track:1b3534a84f1c03d5b157a4a6d68e54b3fc1504160bcd9a16df7a0be9aa15b73a` |
| 20 | `def` | [torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsion.md) | 154 | `declaration-track:1338a96139f03dcadc51ea97b6a36e291bca964bb8885a65deeb7a68bfde1504` |
| 21 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 156 | `declaration-track:f4b865b9bfc67de7962cbf83bec3bf30c3678cc26dbc8bb74590a090dd334583` |
| 22 | `theorem` | [mem_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/mem-torsion.md) | 160 | `result-track:352d06d154f76bd58f6677fed2f93b68fc1cbb9b85d519456b9c898538a9ff47` |
| 23 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 170 | `declaration-track:95294b36b218dbeca7a26910ac1804a463467f147487ae6ce56b879c20e9db64` |
| 24 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/instance.md) | 180 | `declaration-track:501bb9ed6c4a949c6c646dff5b5ed2c88576f6f3aeb1133d564da3e827a8eb7c` |
| 25 | `def` | [torsionOrder](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsionorder.md) | 183 | `declaration-track:06098c5148a26326ee6635b3197530594f2846750a4fbbc9594e8ffba133d37c` |
| 26 | `theorem` | [torsionOrder_pos](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsionorder-pos.md) | 185 | `result-track:b22c32a31bf4b9395c06818aefd634972623b1921de2952f285b41678ceb997d` |
| 27 | `theorem` | [torsionOrder_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsionorder-ne-zero.md) | 188 | `result-track:dcb073c5fd87db6b9f48facc5bea327ac791e1ce589d13810726ca6b9ec3dabb` |
| 28 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 191 | `declaration-track:96797268c152d5824907947441d03d0e104df00849cd971b59aadca0eb5e08c9` |
| 29 | `theorem` | [pow_torsionOrder_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/pow-torsionorder-eq-one.md) | 195 | `result-track:432a27897a36eb67bc7431f67a84c4396076e3e693fe6adb74f2e8ab5ad465d7` |
| 30 | `theorem` | [rootsOfUnity_eq_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/rootsofunity-eq-one.md) | 202 | `result-track:ff8c855c84b0ef159dc5b90aff98b756a0eebb112314f4899121fd35dc53a610` |
| 31 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/rootsofunity-eq-torsion.md) | 216 | `result-track:6a7995588ea9c0d72bc745bae9131a041c307109e44ab9d471874885249feaac` |
| 32 | `theorem` | [map_complexEmbedding_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/map-complexembedding-torsion.md) | 228 | `result-track:9550bfc34d156e19b7da291f3486ea2be12861b0af2414846d9c9238b49565d0` |
| 33 | `theorem` | [even_torsionOrder](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/even-torsionorder.md) | 237 | `result-track:7d2fcbf127bb5fc50f0af3d19ba72294dba8b4fbaa9b5a6dcc87aec455d6d6b4` |
| 34 | `theorem` | [torsion_eq_one_or_neg_one_of_odd_finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsion-eq-one-or-neg-one-of-odd-finrank.md) | 250 | `result-track:7749a209140fcb55ef3b845f3e9f323d52a10c821099160f8e1ad3ae0bdff79c` |
| 35 | `theorem` | [torsionOrder_eq_two_of_odd_finrank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/UnitsBasicNamespacedPublic.lean/declarations/torsionorder-eq-two-of-odd-finrank.md) | 262 | `result-track:f2af44201e4dbcec947d012f0b8894bac6fac5459780db54512ae302cdc3cef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a109dae8b9aaea27baf7bbb029dcb2cf94209d6a886b482ed562cd9b6314e7e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
