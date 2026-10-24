# Verification target: GRWTSK.Topology.GeneralTopology.UnitPartition.Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3af570881246cfb1f2e43a1449c16fc587faac05",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3af570881246cfb1f2e43a1449c16fc587faac05`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.ZLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Integrability` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Measure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Tagged` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BoxIntegral.hasIntegralVertices](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/boxintegral-hasintegralvertices--292e876d7926b8458d253f44.md) | 74 | `declaration-track:292e876d7926b8458d253f4401bbb07aa420a77126c34af686335c472c8e2fac` |
| 2 | `theorem` | [BoxIntegral.le_hasIntegralVertices_of_isBounded](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/boxintegral-le-hasintegralvertices-of-isbounded--2f5ef03a749881e513e4683b.md) | 78 | `result-track:2f5ef03a749881e513e4683b4082294cc90e5b6a23b729c2bf2495032fe87e66` |
| 3 | `def` | [box](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box--cea911f21978dc84317d3869.md) | 106 | `declaration-track:cea911f21978dc84317d38695972738eeb39d161955a8ef03652b6a2db3f3d92` |
| 4 | `theorem` | [box_lower](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box-lower--41f6b167ed606728f080f5c6.md) | 112 | `result-track:41f6b167ed606728f080f5c6b3f6ab7fd6e38d92defce55d045d3f5875f267ae` |
| 5 | `theorem` | [box_upper](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box-upper--f30344f20b82a9029c60ef89.md) | 116 | `result-track:f30344f20b82a9029c60ef896bf16119b89a7abbcca54cf8518716960de92a0f` |
| 6 | `theorem` | [mem_box_iff](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-box-iff--d09588cfc2a0a9c8f91e534a.md) | 121 | `result-track:d09588cfc2a0a9c8f91e534ab6fb2c6c768e420f97b9a26e1a7f17f803f0a1af` |
| 7 | `theorem` | [mem_box_iff'](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-box-iff--74899b037c9f53d023b3415c.md) | 126 | `result-track:74899b037c9f53d023b3415ce5a60fde4be283364361e4da8781ec626e2f620a` |
| 8 | `abbrev` | [tag](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag--fbad6c2788b41766f5e43e99.md) | 132 | `declaration-track:fbad6c2788b41766f5e43e99bd4fe8035815cbd8a78bec059cb2abaaddd9a609` |
| 9 | `theorem` | [tag_apply](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag-apply--db285cfef451dbdf62a04cd1.md) | 135 | `result-track:db285cfef451dbdf62a04cd17bf2f7caeb1269a40d2a52d41de897fa818aa474` |
| 10 | `theorem` | [tag_injective](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag-injective--ea60bcecd7e28c9f079af73e.md) | 139 | `result-track:ea60bcecd7e28c9f079af73e174cd9f02e0785a683e40e53a85ba7f64341631f` |
| 11 | `theorem` | [tag_mem](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag-mem--376e5d9ea817224bb4e19d16.md) | 146 | `result-track:376e5d9ea817224bb4e19d16ef45732ff356f6b8b38b0047e1e6a260f13a1af6` |
| 12 | `def` | [index](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/index--078ced98bdaa946739135ba2.md) | 155 | `declaration-track:078ced98bdaa946739135ba21142f928cfa5e84d09b2af68bc4142fc2ff95936` |
| 13 | `theorem` | [index_apply](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/index-apply--4a72e1dd1c001925b5fb4c73.md) | 158 | `result-track:4a72e1dd1c001925b5fb4c731816036a0ae2cb41508a8561bb3b82829b1d572a` |
| 14 | `theorem` | [mem_box_iff_index](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-box-iff-index--1f94d7d8390f63f9f7c1653e.md) | 162 | `result-track:1f94d7d8390f63f9f7c1653e3ce9fd0619ee38820ebcd2aa32d73605c0e2b786` |
| 15 | `theorem` | [index_tag](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/index-tag--7f0d58125a20d03d6f1cb989.md) | 168 | `result-track:7f0d58125a20d03d6f1cb9892babffb60fbe8386ffe0f81690482c6e0fbc43b2` |
| 16 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/disjoint--886ad02a1129173b1b11ab6f.md) | 172 | `result-track:886ad02a1129173b1b11ab6f1b6d3fe5cf0ebcb090108a77188ad7796a33e36d` |
| 17 | `theorem` | [box_injective](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box-injective--84f4ac1efb945ae9f38d8bf0.md) | 178 | `result-track:84f4ac1efb945ae9f38d8bf087690ac69175ba1429fd4c406607bcfba5425b31` |
| 18 | `lemma` | [box.upper_sub_lower](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box-upper-sub-lower--baca1d3fea73a10fd5faab78.md) | 183 | `result-track:baca1d3fea73a10fd5faab78250075d71e1a3d8703cd7b46ff2a75ea4d3f622a` |
| 19 | `theorem` | [diam_boxIcc](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/diam-boxicc--d38306e75dd1614e4f3dedaa.md) | 189 | `result-track:d38306e75dd1614e4f3dedaa31c783bcf0fa4554377db1460647b8a3d5e75fa9` |
| 20 | `theorem` | [volume_box](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/volume-box--32c0b9497b828b71df074c98.md) | 196 | `result-track:32c0b9497b828b71df074c98211d8aa830a6ed5414c6aa216e83dd6b279a3087` |
| 21 | `theorem` | [setFinite_index](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/setfinite-index--a75f93d160de04ec25d326db.md) | 203 | `result-track:a75f93d160de04ec25d326db33ce2571510ab2017779dc68ddb87691d5e64469` |
| 22 | `def` | [admissibleIndex](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/admissibleindex--58b725a5603b0e325309e60f.md) | 218 | `declaration-track:58b725a5603b0e325309e60fee9ce87f4dc4dbb0302ded635f22951848bcc40e` |
| 23 | `theorem` | [mem_admissibleIndex_iff](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-admissibleindex-iff--cfd2bca51a16f0fbc839050b.md) | 223 | `result-track:cfd2bca51a16f0fbc839050b2c9a952e1a89b0987eaffdbe71e5e7c979e69c9d` |
| 24 | `def` | [prepartition](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/prepartition--ec9f29a573249cd3a88a9b30.md) | 230 | `declaration-track:ec9f29a573249cd3a88a9b30b9f54a030ba410bb666dc275c3644d31da758ae7` |
| 25 | `theorem` | [mem_prepartition_iff](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-prepartition-iff--7e1019cf91e9573774b6d317.md) | 250 | `result-track:7e1019cf91e9573774b6d317d30c7eb06858496702d25c742b9c9b0d41f822a3` |
| 26 | `theorem` | [mem_prepartition_boxes_iff](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-prepartition-boxes-iff--1eb40473f3e9633edb9b9b39.md) | 256 | `result-track:1eb40473f3e9633edb9b9b395eed2ae731cc9e91a2148412ec3fd57452d66cce` |
| 27 | `theorem` | [prepartition_tag](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/prepartition-tag--000511806aa2ab5fd366ad79.md) | 260 | `result-track:000511806aa2ab5fd366ad790d99f89a70d8cb932ac15a09bfd4bfee57c29a13` |
| 28 | `theorem` | [box_index_tag_eq_self](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/box-index-tag-eq-self--cb495637a0e53b26a955ba49.md) | 267 | `result-track:cb495637a0e53b26a955ba499cca75cd4731ce8b070f0d457db5334ade5c2dd9` |
| 29 | `theorem` | [prepartition_isHenstock](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/prepartition-ishenstock--ab64099ed5187f758b97df1a.md) | 272 | `result-track:ab64099ed5187f758b97df1ac2e37183a53c92b88242c1f0b53f8e2efe773de1` |
| 30 | `theorem` | [prepartition_isSubordinate](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/prepartition-issubordinate--9619401dd6cc56534057d5ab.md) | 279 | `result-track:9619401dd6cc56534057d5ab0073eccb5ed342b138ec831ad99f18093a165a86` |
| 31 | `theorem` | [mem_admissibleIndex_of_mem_box_aux₁](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-admissibleindex-of-mem-box-aux--9cb3e1b04540fd8a416526ff.md) | 288 | `result-track:9cb3e1b04540fd8a416526fff4e8d07ee605c4db0ead461a91a094af60f079d0` |
| 32 | `theorem` | [mem_admissibleIndex_of_mem_box_aux₂](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-admissibleindex-of-mem-box-aux--a72fec146035c0493caa73c6.md) | 295 | `result-track:a72fec146035c0493caa73c6e7bf130f46fc61d7be72557b54b6065ee767db20` |
| 33 | `theorem` | [mem_admissibleIndex_of_mem_box](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-admissibleindex-of-mem-box--ba27ee49b0de3e52204d6485.md) | 304 | `result-track:ba27ee49b0de3e52204d64856a9ddf9ceb7231bfd6aca1e0ebdc6b26cc69033d` |
| 34 | `theorem` | [prepartition_isPartition](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/prepartition-ispartition--d88182134ca585d97b719899.md) | 316 | `result-track:d88182134ca585d97b719899ae6f142b653034ca3500b279fe51ed7168be342d` |
| 35 | `theorem` | [mem_smul_span_iff](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/mem-smul-span-iff--40f11fe51d50eb1927297f49.md) | 332 | `result-track:40f11fe51d50eb1927297f4998cb33f4b8a2ccdbb8901a1851c1fb933c5fb828` |
| 36 | `theorem` | [tag_mem_smul_span](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag-mem-smul-span--2719a069047284555e65c044.md) | 338 | `result-track:2719a069047284555e65c044e99eb5b0cc8ff1bf7ca78e89977226ecf4ce4965` |
| 37 | `theorem` | [tag_index_eq_self_of_mem_smul_span](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tag-index-eq-self-of-mem-smul-span--d9b75025bc3059a112a8354f.md) | 344 | `result-track:d9b75025bc3059a112a8354f07d4e69a88c12c620a90063515125f3ea2fcc0fe` |
| 38 | `theorem` | [eq_of_mem_smul_span_of_index_eq_index](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/eq-of-mem-smul-span-of-index-eq-index--7ee243d89b53e73bf78e532c.md) | 352 | `result-track:7ee243d89b53e73bf78e532c06533412742133014eeaacda8176a601797bb7e3` |
| 39 | `theorem` | [integralSum_eq_tsum_div](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/integralsum-eq-tsum-div--d3cf6c0d596ddb13049a3ab1.md) | 356 | `result-track:d3cf6c0d596ddb13049a3ab105a0fdee5472266267bedc533a3526bc8a4ffb73` |
| 40 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_tsum_div_pow_atTop_integral](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/root-grwtsk-topology-generaltopology-boxintegralhasintegralvertices-vari--974f5bdb45b4f380d625f323.md) | 393 | `result-track:974f5bdb45b4f380d625f323da37e2667e613e6defb7bf19d15a5b97f4f48036` |
| 41 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_card_div_pow_atTop_volume](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/root-grwtsk-topology-generaltopology-boxintegralhasintegralvertices-vari--e6e18fe9bf02c32608b33b73.md) | 429 | `result-track:e6e18fe9bf02c32608b33b73d143e6bd8fe5e2a171f4dfcd9a4fa190cbf8b4a6` |
| 42 | `def` | [tendsto_card_div_pow₁](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--39eb5afa33671e1d506a17b3.md) | 437 | `declaration-track:39eb5afa33671e1d506a17b3b49b5635878613556ff22c5ba3e6332a31c8a4f0` |
| 43 | `theorem` | [tendsto_card_div_pow₂](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--ff21bfc9d8ae4191a6b490d1.md) | 443 | `result-track:ff21bfc9d8ae4191a6b490d12b17f12973d494b2d487931645c0f7d6ab037684` |
| 44 | `theorem` | [tendsto_card_div_pow₃](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--f88ec7f4bc9f82e48a95a12f.md) | 452 | `result-track:f88ec7f4bc9f82e48a95a12f513303bb88b76e02cf79ed32a2173f4e9632a8af` |
| 45 | `theorem` | [tendsto_card_div_pow₄](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--4919ff0a5882311559e756dc.md) | 461 | `result-track:4919ff0a5882311559e756dcf9028ffd6cb1694da66a8eb715970d3a79346eaa` |
| 46 | `theorem` | [tendsto_card_div_pow₅](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--19fa590c7e3e7f2a1833d67c.md) | 469 | `result-track:19fa590c7e3e7f2a1833d67c93e9ea22e53b6980b0896b706a5253e4603733b1` |
| 47 | `theorem` | [tendsto_card_div_pow₆](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/tendsto-card-div-pow--c61b433075a8c7fe28efab1c.md) | 476 | `result-track:c61b433075a8c7fe28efab1cfd9a82b902dd571f4151ce5cfb402d381a4655b9` |
| 48 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.BoxIntegralHasIntegralVertices.Variant560f927af04c85fa8d63a108734212291bf768bacc0e1e31986359be3370f27c.tendsto_card_div_pow_atTop_volume'](../../../../../mathematics/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/declarations/root-grwtsk-topology-generaltopology-boxintegralhasintegralvertices-vari--e1e3fb68ebe367ea0ca9f374.md) | 484 | `result-track:e1e3fb68ebe367ea0ca9f374c92748cd734c4bfa15d4a9ad4401cedf42ff38bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
