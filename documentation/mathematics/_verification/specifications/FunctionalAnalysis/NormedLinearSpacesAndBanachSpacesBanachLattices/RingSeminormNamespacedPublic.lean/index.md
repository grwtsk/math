# Verification target: Ring Seminorm Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2525258a829c3d2fcede8a3b852a985131412f7e",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2525258a829c3d2fcede8a3b852a985131412f7e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean.json)

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
| 1 | `structure` | [RingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ringseminorm.md) | 58 | `declaration-track:01f942da4ad4408b3409ffb4f30cab5ffb8492990be505d7c8df5a0f079bf9b2` |
| 2 | `structure` | [RingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ringnorm.md) | 65 | `declaration-track:1060dd48e9ba32e3d96733ca6934c53cfc644c8f97047c970811e805b991ac57` |
| 3 | `structure` | [MulRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/mulringseminorm.md) | 70 | `declaration-track:b69e71f0fe1c7856326910d63e4c365dae631564f37fd0a020349ed417ec5108` |
| 4 | `structure` | [MulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/mulringnorm.md) | 78 | `declaration-track:2179ef737aef2c6b6406e4c3245831f510ba42e5014a55a6562e15df49147f07` |
| 5 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/funlike-source-edition-3.md) | 92 | `declaration-track:b677c02b934d3120777eda5b53a0a966d0fc7dc0a747e0f01ea9a3bbb864a7e9` |
| 6 | `instance` | [ringSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ringseminormclass.md) | 101 | `declaration-track:15eaddce3499ccdeed6c0444f3a4717641e86b1eba07282fee3d4879b3e3ad5b` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tofun-eq-coe-source-edition-3.md) | 108 | `result-track:b42a394b6d4ea737776e2a7d4fa68a864d163ba9b26d324a9e3aaf4e73405da1` |
| 8 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 112 | `result-track:278f24cf5e59368a7e2b365ab4d9ab964c39434af883140053b14df2c174049e` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 115 | `declaration-track:fc09d2f7a22ff8427b5bada90264945b5f3214f9b28c686803d171af89a20602` |
| 10 | `theorem` | [eq_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/eq-zero-iff.md) | 119 | `result-track:4a4d5bf294cb0e1edd3efe6fb27cbe822681fd9f9dd256d9ba3d3066681b877b` |
| 11 | `theorem` | [ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ne-zero-iff.md) | 122 | `result-track:f2e198b6255a3db1f70298f394ce12658f259292f64e4ed2338225bc033dd32d` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance.md) | 124 | `declaration-track:0a7672479b7ea8b2be90ec6c21b79cfab36be961c177e85a3db0aa4cc128efd3` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 129 | `declaration-track:ff929b01e0a7da99f12c564d733481bd8b1a0a87ca072a8e65337c53f1092493` |
| 14 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/apply-one.md) | 142 | `result-track:060f173d06bda3812442b12f93473f2221355aa08cd9dca86871c391d79267c6` |
| 15 | `theorem` | [seminorm_one_eq_one_iff_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/seminorm-one-eq-one-iff-ne-zero.md) | 151 | `result-track:6cdd36972773ea6df036dd5e4e48af4ce8a94344480f684360de2b7cce022dd7` |
| 16 | `abbrev` | [toSeminormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/toseminormedring.md) | 163 | `declaration-track:639d72bc9bbc0d8a220a66344e4ba166e13154613848ebba996f4c11270fa0a8` |
| 17 | `theorem` | [exists_index_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/exists-index-pow-le.md) | 174 | `result-track:761bc4ad835fd83eda0bd1fc4a63f1e28bd3b796d2a3a04759587a1e38b021ec` |
| 18 | `theorem` | [map_pow_le_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/map-pow-le-pow.md) | 185 | `result-track:6fb111c1968e1f8eff049e6a4ab382e595c32ee8a2914faaf6168883a0b20c32` |
| 19 | `theorem` | [map_pow_le_pow'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/map-pow-le-pow-source-edition-2.md) | 194 | `result-track:ec1c458b5c48402b4a16b767ca107eaefe5c6ac599f05154b986e7a2c957ca84` |
| 20 | `def` | [normRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normringseminorm.md) | 200 | `declaration-track:2dfbe0046a1e868efe5a35ca99f091deb685166cd600eec92b21c1a81ecccc00` |
| 21 | `theorem` | [isBoundedUnder](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/isboundedunder.md) | 213 | `result-track:1c7bb2440127e5bce4acd512668bf98f9d72dfc83373fcb688eed1f5930e11e2` |
| 22 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/funlike.md) | 237 | `declaration-track:8d752f7661baf4e4811e0c9d4efe1de3e107395bd821e7d349ac7c059a1f20ea` |
| 23 | `instance` | [ringNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ringnormclass.md) | 246 | `declaration-track:59e0898b5f3e4c4f396d286e12431dfe3bee510c0d90c37b4da38a54a3555240` |
| 24 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 253 | `result-track:ab1ac16939f6919329eff7d2300eea8a7811f759e6637d60fe4b6e7011b2096f` |
| 25 | `theorem` | [toRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/toringseminorm-apply.md) | 256 | `result-track:72bd97711fdc5d1ce8b68a42e8cdc5fd48a36be040ac12346eb629a5550684b7` |
| 26 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ext-source-edition-4.md) | 260 | `result-track:ec57cc6d15880df8f8498ab7538b7ca8ef6ee78c566cd041429a38cb7b8bc732` |
| 27 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 267 | `declaration-track:93cb0ffcf131b7053b2f9d4e893bd601e9d6d32c9458bed1b6a32a5593d33625` |
| 28 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/apply-one-source-edition-2.md) | 271 | `result-track:3a36050ab76e0ca9780f55c17ee8495496f95ac8ebf977fd634cfeb791736aa9` |
| 29 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 274 | `declaration-track:51ab9ab56d6c3b28a1208fdc38683d3cc67f8399c9c6f9b4475cc9289cb32b8b` |
| 30 | `abbrev` | [toNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tonormedring.md) | 281 | `declaration-track:e36b580482a4fed1520f50c61a4fd0eeee34aebf733e4840d37dd35a15c6129c` |
| 31 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/funlike-source-edition-4.md) | 293 | `declaration-track:f23c594b0e122a9c92aef7d570d020040d4e6a9be1a3580bd8b6bbaf24113624` |
| 32 | `instance` | [mulRingSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/mulringseminormclass.md) | 302 | `declaration-track:862ebc35b1c655c178064d4502d48b7218920a7d90acd40e4b23c48e59dcc8a4` |
| 33 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 310 | `result-track:31b3c9f6d61ddda92b01fd8318c37268f6e11603124dbad72b7dec5aeba0024d` |
| 34 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ext-source-edition-3.md) | 314 | `result-track:2d1592534c9de129c0ec395db728f377acc8b5dc0ad4e8eee60508c3bac74650` |
| 35 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 321 | `declaration-track:a1cd0802eb69e7ecaeb9e20fb62b5833f3be8cdebe57af03a299ba25ca493a95` |
| 36 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/apply-one-source-edition-3.md) | 332 | `result-track:66d18aee41a5330075a721311a2872bb3a6750dc9e3c917bfac938cf551754a8` |
| 37 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 335 | `declaration-track:9f36a8f88dc82f59e6aa04bc52bf7ead2599a8f7d9b54a0d723e9a35657fd0cc` |
| 38 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/funlike-source-edition-2.md) | 345 | `declaration-track:a7f6475c0a7d12665fee0a31d4dd9f20ff8d104a267b528c41a1be86463c8db9` |
| 39 | `instance` | [mulRingNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/mulringnormclass.md) | 354 | `declaration-track:da36ef6eb0cf22d76a34611b321a8f7dbcb3e8455ccbf56182512cfc52a5a2cb` |
| 40 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tofun-eq-coe-source-edition-4.md) | 362 | `result-track:bc1c7e8b753ab2a158ce7ce6787a539325c3edc1ddf89a6edfbd7723d988615c` |
| 41 | `theorem` | [toMulRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/tomulringseminorm-apply.md) | 365 | `result-track:4354f56030d1149cda0bfe8ca5be46b9ae1791db0752a59f8b9b794444cfd5a6` |
| 42 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ext.md) | 369 | `result-track:0aa24e4c92c9b5384fa7ff8b3f7f945ecb304b457564cdb30c5fe6bbc9d281dd` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 377 | `declaration-track:daf7ed2613ad301188436f5b733fab1f7f2541f44cc214230c8a4347c3f1b88e` |
| 44 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/apply-one-source-edition-4.md) | 381 | `result-track:f305fd4e959f52c88ca487ba9b8636b03462d78cb099a3d798ceb1954f20a050` |
| 45 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 384 | `declaration-track:35d19aa78b661d893d8786327d88c4174c395e4ba382ed5b6d5c3ee091d37a3a` |
| 46 | `def` | [toAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/toabsolutevalue.md) | 393 | `declaration-track:d29f63eee13ca399431b38f8ef6e0fe21715122726116198652c6724c3ffb0e7` |
| 47 | `def` | [ofAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ofabsolutevalue.md) | 402 | `declaration-track:e6b1c02c88a85c3c1ccf18b9ad91c61f19bb888b26d0c623bd62ad782e924c28` |
| 48 | `def` | [mulRingNormEquivAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/mulringnormequivabsolutevalue.md) | 413 | `declaration-track:f1e5c8391c52df1e3a71a85194d9e18051eeb6a0d09e2c16bd454ca606428590` |
| 49 | `def` | [RingSeminorm.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/ringseminorm-toringnorm.md) | 424 | `declaration-track:33f15c5690505e8766e6ace417cde398aa52f17fa959a5e69c60c2701f85474e` |
| 50 | `def` | [normRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normringnorm.md) | 442 | `declaration-track:cddda83f7c9d8c0df2c6385d0f3c5c7ec6062489fb84ecda3b47bf65e40ca957` |
| 51 | `def` | [SeminormedRing.toRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/seminormedring-toringseminorm.md) | 448 | `declaration-track:c1ee139a5f5854c17598c105a894895bfafebfefe5320f60f233c5c7f0092f20` |
| 52 | `theorem` | [SeminormedRing.toRingSeminorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/seminormedring-toringseminorm-apply.md) | 456 | `result-track:0e5ba8ed3ccf99313eb9fdabdae843848c2032fe89896ff4795b818c1245d037` |
| 53 | `def` | [NormedRing.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normedring-toringnorm.md) | 463 | `declaration-track:734ce07f64ced1abb2819e8bcbe8d7ab2053fbecc98d7023747bef7c0d4c4cb1` |
| 54 | `theorem` | [NormedRing.toRingNorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normedring-toringnorm-apply.md) | 472 | `result-track:519d0d12091f7613fc85035a7f1879215dccbc0c38c56894332c2b8240511f2f` |
| 55 | `def` | [NormedField.toMulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normedfield-tomulringnorm.md) | 479 | `declaration-track:0c8dba705a71135f88befa94279092d2611df69c16abfa81e6eaaaa9b7c4b8f9` |
| 56 | `def` | [NormedField.toAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminormNamespacedPublic.lean/declarations/normedfield-toabsolutevalue.md) | 491 | `declaration-track:393ba91575dd8fd0bf8cd76c519d5e9788c618dc18ddf8d0e200ecd45b12ade5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1906d1724a310bfe56d9636af0fd5992a7f9ea3e1bf6991a81592fe9eae627da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant5e64239fcd96a6c31d7af70a6b9b502b8ebd6785f20c60d524a8f4920f97deb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
