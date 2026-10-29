# Verification target: Topology Nhds Set Namespaced Nhds Set Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6485283d8e3a6c5cd9cf5c92568b01525da4dbb",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2fbb3472ea23ebabd2769d4392439ff42af79bcd0641a86957f1e2d21c2e3a5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6485283d8e3a6c5cd9cf5c92568b01525da4dbb`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2fbb3472ea23ebabd2769d4392439ff42af79bcd0641a86957f1e2d21c2e3a5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variant2fbb3472ea23ebabd2769d4392439ff42af79bcd0641a86957f1e2d21c2e3a5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Neighborhoods` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhdsSet_diagonal](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-diagonal.md) | 41 | `result-track:68603de866f5934dfc50672d37e7243e259bfdcb29018421443d3f70f4d2c21f` |
| 2 | `theorem` | [mem_nhdsSet_iff_forall](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/mem-nhdsset-iff-forall.md) | 46 | `result-track:1ea43c563299b68b468b470ebe64c1c636ff333d1116960696e59ebea29de87c` |
| 3 | `lemma` | [nhdsSet_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-le.md) | 49 | `result-track:ce5c2ba0b7051df3c431f974f8a82f5ecf2605ff659928cb50f9c2ea43ce8513` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/bunion-mem-nhdsset.md) | 51 | `result-track:40f37d916026d61bef354c48c20b53eeb44559d972630e2a8852b81e67383a8d` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/subset-interior-iff-mem-nhdsset.md) | 55 | `result-track:ffe13401ecb7944b756428d4932fda4b03784d716f0a31b6092868dabac2e3ab` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/disjoint-principal-nhdsset.md) | 58 | `result-track:d6f6828dc14e6cb1a899d7036de77b0c926e502624841e1a1d525aa83d625a5b` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/disjoint-nhdsset-principal.md) | 62 | `result-track:a8d867963c4ce9b6d8f8361edcb2daec72c30a829ace2f9bab84381baa8095c4` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/mem-nhdsset-iff-exists.md) | 65 | `result-track:dc60a510b2fdfea7ff8e3e1b22c2952b968a2249fcf4e62347e546321314712a` |
| 9 | `theorem` | [eventually_nhdsSet_iff_exists](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/eventually-nhdsset-iff-exists.md) | 69 | `result-track:3226d127f5779954b8ee6903338d642095493010fb8825bf700679b3b9d3fc35` |
| 10 | `theorem` | [eventually_nhdsSet_iff_forall](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/eventually-nhdsset-iff-forall.md) | 75 | `result-track:89daa0aa917494242270751dfc8dee582ea58fee74385c1067bc1ae7e25b7439` |
| 11 | `theorem` | [hasBasis_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/hasbasis-nhdsset.md) | 79 | `result-track:532ffb3d0e141fc108faa7c997c42a526bbb0b0379335045d9e74c159ee9b64a` |
| 12 | `lemma` | [lift'_nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/lift-nhdsset-interior.md) | 83 | `result-track:a9d5224d8ac2d6cf5327291cf330ed9f2c0673e7a171fa020dc62f4c32810504` |
| 13 | `lemma` | [Filter.HasBasis.nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-hasbasis-nhdsset-interior.md) | 86 | `result-track:5570e04edbddb01d12c77cee699ca7153168721e6adb9dcf745101dfef09849a` |
| 14 | `theorem` | [IsOpen.mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/isopen-mem-nhdsset.md) | 90 | `result-track:24dafa2783cd3b4b8c933586f8e9c03639a3a9e2eef5e9568da4dc9c5d0889ec` |
| 15 | `theorem` | [IsOpen.mem_nhdsSet_self](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/isopen-mem-nhdsset-self.md) | 94 | `result-track:c9fef8877328a7d08c2e830c91d31eb8301ff26552dd07ed06fd5bf728f4ba5b` |
| 16 | `theorem` | [principal_le_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/principal-le-nhdsset.md) | 96 | `result-track:a5e7f16ef639c784d1ca517ad6db8b81fa6e9f16f31121bcf911e904c2fb1203` |
| 17 | `theorem` | [subset_of_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/subset-of-mem-nhdsset.md) | 99 | `result-track:a6d2d1769221238c6c24059cfcf42af251225fff09e70dd1e9cedc6953944ea7` |
| 18 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-eventually-self-of-nhdsset.md) | 101 | `result-track:dac7fddfe706ef406619588437f3a1ecfbc9bd7070c0a60d5244379b9189c5f6` |
| 19 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-eventuallyeq-self-of-nhdsset.md) | 104 | `result-track:6c8262a9732e83c3387720b357c0ecf4777f4adb54f338b16981e632f1d3d21f` |
| 20 | `theorem` | [nhdsSet_eq_principal_iff](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-eq-principal-iff.md) | 109 | `result-track:407721d2847f6ccdfa9a75a0e55ba507aeb6e8142ef3585143da71e678a3172c` |
| 21 | `theorem` | [nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-interior.md) | 116 | `result-track:9ba96765c7dfab8cb0175f0f09b55146f3ed115c0920194e28fe8831aa08d02b` |
| 22 | `theorem` | [nhdsSet_singleton](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-singleton.md) | 120 | `result-track:2e5eb833641ba5f193927ec128b0cffc9c3b45742167c36f838f8c2f9ada2239` |
| 23 | `theorem` | [mem_nhdsSet_interior](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/mem-nhdsset-interior.md) | 122 | `result-track:e0042f4643321fc4ca5d73c2969d8b6269306e0864352bac1b94b900aef6a0f2` |
| 24 | `theorem` | [nhdsSet_empty](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-empty.md) | 126 | `result-track:33af54e85463a8c9d21122ac1d4d13db650346b19da8e55fc761a8690366746b` |
| 25 | `theorem` | [mem_nhdsSet_empty](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/mem-nhdsset-empty.md) | 128 | `result-track:4d3a1a976f09f542b2c45c53a5f27b64e32324d702b17256285b82a5b0c118a3` |
| 26 | `theorem` | [nhdsSet_univ](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-univ.md) | 131 | `result-track:3469960d55d5f60dd37f87733d3f4557e5da6b8a5487fa572cacee687cc98635` |
| 27 | `theorem` | [nhdsSet_mono](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-mono.md) | 134 | `result-track:94e50b02bbae0906821c6e4740808712886b5f62440835f2ed046a52dd3a44fe` |
| 28 | `theorem` | [monotone_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/monotone-nhdsset.md) | 137 | `result-track:feab8d3e3cd1820bac71b1fdba6cf30125bd1d1525747e0966f63e86c9f5cea2` |
| 29 | `theorem` | [nhds_le_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhds-le-nhdsset.md) | 139 | `result-track:4ae223f37df88a57bc3a4ad610c8439b685be7ba367b9e6b2733e5824352cf68` |
| 30 | `theorem` | [nhdsSet_union](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-union.md) | 143 | `result-track:319cd2201846f37ea4b95f005ad5c926a52db2c7334185d2c302126fa3abbf7e` |
| 31 | `theorem` | [union_mem_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/union-mem-nhdsset.md) | 146 | `result-track:1f6ca9c0adb157bb7de580047c9ef25c27b66077c11f0b9b2bf9ff310102bc79` |
| 32 | `theorem` | [nhdsSet_insert](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-insert.md) | 151 | `result-track:e7c7ce877d3f0a01b0e9b490d3140a227e6455ee3e0d38a255893fb456e06b51` |
| 33 | `theorem` | [nhdsSet_inter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-inter-le.md) | 157 | `result-track:3492a9b2b34219cb50d28d76f61c1a0db9fdefe2d387a3612159af09e25b941a` |
| 34 | `theorem` | [nhdsSet_iInter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-iinter-le.md) | 160 | `result-track:7e4b17562f27680ce0ca3ce9da3479a80365759d1f03c3ba1a22bb45d9663122` |
| 35 | `theorem` | [nhdsSet_sInter_le](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-sinter-le.md) | 163 | `result-track:0ffc52629798e28a3e8964962db89469c0b6ca33fb821bd2db41e92af4533717` |
| 36 | `theorem` | [IsClosed.nhdsSet_le_sup](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/isclosed-nhdsset-le-sup.md) | 167 | `result-track:0656fa91d3fb370fe89697a04178df860b39d1b505ff2b77859b418d2da94350` |
| 37 | `theorem` | [IsClosed.nhdsSet_le_sup'](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/isclosed-nhdsset-le-sup-source-edition-2.md) | 175 | `result-track:2a0257f2365e3d834faef78be5be6512cc5b6808a143954d933ac32e732db1ec` |
| 38 | `theorem` | [Filter.Eventually.eventually_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-eventually-eventually-nhdsset.md) | 178 | `result-track:38571a17dc0c090ac8665e88aa6d312f9303a89d10f0e68e9b65e6dbec1b7b47` |
| 39 | `theorem` | [Filter.Eventually.union_nhdsSet](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-eventually-union-nhdsset.md) | 183 | `result-track:a03d368cd9062e5922d8360167771ba136fe77ff5e45761ceb07546d40796c47` |
| 40 | `theorem` | [Filter.Eventually.union](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/filter-eventually-union.md) | 187 | `result-track:1fd8a2287c54148efbece77f078aab5e3665b5f09dbed6ec77f03bae5761f0a7` |
| 41 | `theorem` | [nhdsSet_iUnion](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/nhdsset-iunion.md) | 191 | `result-track:abdf736c1a91127a6d92d6b0ebcdac9343728c6b480cc24d19fe03028f5778a8` |
| 42 | `theorem` | [eventually_nhdsSet_iUnion₂](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/eventually-nhdsset-iunion.md) | 194 | `result-track:2a4048e317fba0ba0d0fcf7d51b5379a8ac2101f51f231d95a09b7aee2f89899` |
| 43 | `theorem` | [eventually_nhdsSet_iUnion](../../../../GeneralTopology/TopologyNhdsSetNamespacedNhdsSetLe.lean/declarations/eventually-nhdsset-iunion-source-edition-2.md) | 198 | `result-track:c7af0a057fb264c7116025336efb24a6776b5345b317f939d7485295889b6cbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0239f366a4f8e8bce4c6912773e92cef1fa1edbe097aaa3426fa44a008480af2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2fbb3472ea23ebabd2769d4392439ff42af79bcd0641a86957f1e2d21c2e3a5f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NhdsSet/Variant2fbb3472ea23ebabd2769d4392439ff42af79bcd0641a86957f1e2d21c2e3a5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
