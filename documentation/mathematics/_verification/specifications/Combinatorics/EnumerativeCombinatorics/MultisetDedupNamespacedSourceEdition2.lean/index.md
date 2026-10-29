# Verification target: Multiset Dedup Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c29053ce156a7c1b7df23d14f0100292f9f6c77",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant19882734dff222023464062777f334cdd71f5df6b581fded48fce89d81286846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c29053ce156a7c1b7df23d14f0100292f9f6c77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant19882734dff222023464062777f334cdd71f5df6b581fded48fce89d81286846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant19882734dff222023464062777f334cdd71f5df6b581fded48fce89d81286846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Dedup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.UnionInter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup.md) | 33 | `declaration-track:d82048cdaba527a5feffdeb27c35b9f8edbed87521b29e22a6e5e47c67a57a06` |
| 2 | `theorem` | [coe_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/coe-dedup.md) | 37 | `result-track:6cafc597dce310d38a8dc2e4855fa8550c4ac16ce9d2c3362ee5ee7fc602f98b` |
| 3 | `theorem` | [dedup_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-zero.md) | 41 | `result-track:2b26132130cd57e9c3c8714735b2e5998e2d0a5b63e82d335589fa5da94e7897` |
| 4 | `theorem` | [mem_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/mem-dedup.md) | 45 | `result-track:4e1f4f854aa82373cf0fc0debdd83b6594e082064c577d66ad0d7dd97f554163` |
| 5 | `theorem` | [dedup_cons_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-cons-of-mem.md) | 49 | `result-track:0e57082dd8d63fafa52e88862b2b5bd4c9200719cb6ee4f172bab7762eafc276` |
| 6 | `theorem` | [dedup_cons_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-cons-of-notmem.md) | 53 | `result-track:0dff28949710d0b6c7277538c3930364c22ce83e28e848ab82dfab5d89857fa1` |
| 7 | `theorem` | [dedup_le](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-le.md) | 58 | `result-track:8a97103f68332a0bc54b2bae3172bf3b50db92d77d2fefbf67b842f73fdb0ff0` |
| 8 | `theorem` | [dedup_subset](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-subset-source-edition-2.md) | 61 | `result-track:4a47a4269e1a90349b88e80c07a4b4a664c6cca132cddffa642240142707099c` |
| 9 | `theorem` | [subset_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/subset-dedup-source-edition-2.md) | 64 | `result-track:7dba26e46f2480583823bddf44426a96df9802e3ab40b63638cfa21d7b857d23` |
| 10 | `theorem` | [dedup_subset'](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-subset.md) | 67 | `result-track:2774fd8c34a79d853eecf0a1ec2c32aafd2e753fa644d0290a2fc114077bc463` |
| 11 | `theorem` | [subset_dedup'](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/subset-dedup.md) | 71 | `result-track:37e36cf6bc6d0a70451df05eede6aaa2651246e71732a95a909f6355c231aa88` |
| 12 | `theorem` | [nodup_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/nodup-dedup.md) | 75 | `result-track:f669cd06ce0ba858d52cdb744a0ac81909201b690a1fbda5e298153ff5ca258e` |
| 13 | `theorem` | [dedup_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-eq-self.md) | 78 | `result-track:423254042a106c55d8fb89fa12618bcfdc4004108e430018c13a91b00c7d796b` |
| 14 | `theorem` | [count_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/count-dedup.md) | 83 | `result-track:c8f09af93b88df8dd489a4dcfa50cd1d8a4cbeffcd6c01bc048d9d616a2a962b` |
| 15 | `theorem` | [dedup_idem](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-idem.md) | 89 | `result-track:91a7c78049a05908d756dcee712186443b458f915fcf69a2619647beb51ad7bb` |
| 16 | `theorem` | [dedup_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-eq-zero.md) | 92 | `result-track:85dd3ea49274145e5b2e510fead890fae48debf669b6c7f3db3bb1aa1f7ab2a1` |
| 17 | `theorem` | [dedup_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-singleton.md) | 96 | `result-track:23f5d725e42360890ab4c051fb8fe4ac42fc767a4705ffd9d46e01a7692c189d` |
| 18 | `theorem` | [le_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/le-dedup.md) | 99 | `result-track:ca00a60bed409eb3751e5da08c1d73501df80b706b8d72e43be5665078202716` |
| 19 | `theorem` | [le_dedup_self](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/le-dedup-self.md) | 103 | `result-track:452d3787548735350a7ee08b5d764a81734f134a5dd87a0249cf790301aaa506` |
| 20 | `theorem` | [dedup_ext](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-ext.md) | 106 | `result-track:79d8fadeaafd158589a1b16fd258b167631b427d6d110ef52b1de70f821faeee` |
| 21 | `theorem` | [dedup_map_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-map-of-injective.md) | 109 | `result-track:54a0087dea44a97de186dfac8814b29c7464a3ec1dcfe7485df9d0ae5f7feba8` |
| 22 | `theorem` | [dedup_map_dedup_eq](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/dedup-map-dedup-eq.md) | 114 | `result-track:2438443defebf7c44218676ef24b91d3e9e2cd2d00407d3db124d385269f4e30` |
| 23 | `theorem` | [Nodup.le_dedup_iff_le](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/nodup-le-dedup-iff-le.md) | 118 | `result-track:71cef97b58a8e5309411ffa7b5c89cb9bb7861dec184ca428de294c21850c4b2` |
| 24 | `theorem` | [Subset.dedup_add_right](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/subset-dedup-add-right.md) | 121 | `result-track:eaeb18a3d642230e8b77c417c5884b5113dcb4215f0e548256c9ce82f07f10da` |
| 25 | `theorem` | [Subset.dedup_add_left](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/subset-dedup-add-left.md) | 126 | `result-track:b15374818eae5207b790f992fd61102a3a5c496ecf1ea8139205151e5666c5fe` |
| 26 | `theorem` | [Disjoint.dedup_add](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/disjoint-dedup-add.md) | 130 | `result-track:092b479dbb937ef6461dcad12ea75cc9f35b0c15a20a46c5f68e762da4a71cb6` |
| 27 | `theorem` | [Multiset Dedup Namespaced Source Edition2](../../../../../Combinatorics/EnumerativeCombinatorics/MultisetDedupNamespacedSourceEdition2.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-de.md) | 136 | `result-track:f680ce285a7b1bd246f35c5d0ecebe90f1569ed0a3c501b78921293de7589e9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75e6f9577125f5e57305ecc81d8a12331ce2c2062bbe55516bb938d7fb885988 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant19882734dff222023464062777f334cdd71f5df6b581fded48fce89d81286846.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant19882734dff222023464062777f334cdd71f5df6b581fded48fce89d81286846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
