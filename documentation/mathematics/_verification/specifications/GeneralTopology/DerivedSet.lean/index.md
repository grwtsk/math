# Verification target: Derived Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcf268743bee66851dca5a9dc0f6bce74ebe8620",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DerivedSet.lean/index.md) · [Full source](../../../../GeneralTopology/DerivedSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcf268743bee66851dca5a9dc0f6bce74ebe8620`.

Source path: `GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Perfect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Peel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.map](../../../../GeneralTopology/DerivedSet.lean/declarations/accpt-map.md) | 21 | `result-track:9f3d972de9acefc3eafa2608401fc98110fea6e6e2418a74ddb62468f865b0f6` |
| 2 | `def` | [derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/derivedset.md) | 33 | `declaration-track:18309acb19f08de8c698d4797b28c54519ccd4eea9ae284cc7f3691913a32d01` |
| 3 | `lemma` | [mem_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/mem-derivedset.md) | 36 | `result-track:740284eac4cdb8459e8d70ecbb4bd72ce823933c104abb5dcaf1f978137861a6` |
| 4 | `lemma` | [derivedSet_union](../../../../GeneralTopology/DerivedSet.lean/declarations/derivedset-union.md) | 38 | `result-track:137bc69cd52d0cecd3d247b699294322496e403157f55704248aebf9ee99a99b` |
| 5 | `lemma` | [derivedSet_mono](../../../../GeneralTopology/DerivedSet.lean/declarations/derivedset-mono.md) | 42 | `result-track:8de1129417f82ce23e704e62dd8eb0b99db6f2985cd59b7b30f94ca5db37025a` |
| 6 | `theorem` | [Continuous.image_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/continuous-image-derivedset.md) | 45 | `result-track:228e599a4742c98b7b1cd716d2c8bf1faab5453efd632cb867921269c8fedeeb` |
| 7 | `lemma` | [derivedSet_subset_closure](../../../../GeneralTopology/DerivedSet.lean/declarations/derivedset-subset-closure.md) | 54 | `result-track:ce6240813a59904af30459725ce1c83df26dca7e1aef27e70a757c5f055130c9` |
| 8 | `lemma` | [isClosed_iff_derivedSet_subset](../../../../GeneralTopology/DerivedSet.lean/declarations/isclosed-iff-derivedset-subset.md) | 57 | `result-track:41dcc80d25505e30888d7e07bd344a7079243f94938f69b426b981bb29a182f9` |
| 9 | `lemma` | [closure_eq_self_union_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/closure-eq-self-union-derivedset.md) | 67 | `result-track:7e9899882ec725ca6d4fdb272f7f063981fad6838857f4fb0275065d5614f2c9` |
| 10 | `lemma` | [derivedSet_closure](../../../../GeneralTopology/DerivedSet.lean/declarations/derivedset-closure.md) | 77 | `result-track:894f8c5f96da8dfa38ad3f9a39d97ac5d889fb8f14001da2f355163f75cac496` |
| 11 | `lemma` | [isClosed_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/isclosed-derivedset.md) | 86 | `result-track:5b0d4433c4590f6d2ba8965611d5240383b3c56836c527b77b47c759b4d589d2` |
| 12 | `lemma` | [preperfect_iff_subset_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/preperfect-iff-subset-derivedset.md) | 91 | `result-track:103488e2250d675dd7d5b44c241e275982e54da25b79aa85dc56f0fccae2ceb2` |
| 13 | `lemma` | [perfect_iff_eq_derivedSet](../../../../GeneralTopology/DerivedSet.lean/declarations/perfect-iff-eq-derivedset.md) | 94 | `result-track:e2874878d22d9c3127d27b2e80400d5b294b7843ec37a0bd646b060902753465` |
| 14 | `lemma` | [IsPreconnected.inter_derivedSet_nonempty](../../../../GeneralTopology/DerivedSet.lean/declarations/ispreconnected-inter-derivedset-nonempty.md) | 98 | `result-track:1cc44046f33874fd84774ee068df255ac69dd7a9ae804f9a6510b769bdf303dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2ebbc6375e412de7a0a444cd85231c8b20ba6eed13a9c849c6955cebef63822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
