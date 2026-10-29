# Verification target: Noetherian Space Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44974b9c146f4c833c82f6cc72737d762d723de4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/index.md) · [Full source](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44974b9c146f4c833c82f6cc72737d762d723de4`.

Source path: `GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompactlyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoetherianSpace](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace.md) | 58 | `declaration-track:05fcb2428c6ba89bbd38dc470d1872ac9983ccdc4964a8399b983a6899ef43a0` |
| 2 | `theorem` | [noetherianSpace_iff_opens](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-iff-opens.md) | 62 | `result-track:a1a9915fd8afa1d0fc0039b32955e35f06aa59fcb772700c21d0324af3fe695f` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/instance.md) | 68 | `declaration-track:031f881fe0787660fb1a3a5a922063533c5c3fd8405ea3bcc4e46298fb806409` |
| 4 | `theorem` | [NoetherianSpace.isCompact](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-iscompact.md) | 75 | `result-track:ab033de743f38a1d6d2236aa4ae11a66d1f3a171be710f088197642a69e9c756` |
| 5 | `theorem` | [Noetherian Space Namespaced Aligned](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-source-line-83-occurrence-2.md) | 83 | `result-track:39fa04f37f3c0902433237e349236261c0ec937ab8cae693c7f469fae7a9ba89` |
| 6 | `instance` | [NoetherianSpace.set](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-set.md) | 88 | `declaration-track:3192923f3552ab3c271b44d9a554a615d886ed87b9a0e8acdbdd5e3f1996ae98` |
| 7 | `theorem` | [noetherianSpace_TFAE](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-tfae.md) | 95 | `result-track:9712f3af11befbceb849454df1723881e6bb7097bcbdc2b3975a270b454afdcf` |
| 8 | `theorem` | [noetherianSpace_iff_isCompact](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-iff-iscompact.md) | 114 | `result-track:e59de0015571bb0d63757ab68ad69264389bff7f6a120f856cc38aca634f578f` |
| 9 | `theorem` | [NoetherianSpace.wellFounded_closeds](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-wellfounded-closeds.md) | 117 | `result-track:695fba97c24bc5a521d131f559f60c79b4e357da7c706d134fe18196faca433d` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 121 | `declaration-track:508a662efe8a437435d16cb609d8f27470df748de145dc1825f65462af773411` |
| 11 | `theorem` | [noetherianSpace_of_surjective](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-of-surjective.md) | 130 | `result-track:2c0c793a8b7dbdc4a687aea535f0f25339d77e1922ad730b4f60a843f455f720` |
| 12 | `theorem` | [noetherianSpace_iff_of_homeomorph](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-iff-of-homeomorph.md) | 136 | `result-track:2088d5c7ea49d0387a0a28b00297bbc4d245e9a12600a21f5706d1647d198891` |
| 13 | `theorem` | [NoetherianSpace.range](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-range.md) | 141 | `result-track:b859fba2649ede19b8798862cc83d27d9b355e18abf47eb2e1f4e40d80a36ce4` |
| 14 | `theorem` | [noetherianSpace_set_iff](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-set-iff.md) | 147 | `result-track:ca1725dc22dce9907c1cc3ba97a84b713a76829bf18620d46ba4c9c2dd0d71df` |
| 15 | `theorem` | [noetherian_univ_iff](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherian-univ-iff.md) | 154 | `result-track:e4ff3698fae52ac1164c3945932072b8c3c1a1c90db6603bf388380f91ecc6bf` |
| 16 | `theorem` | [NoetherianSpace.iUnion](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-iunion.md) | 158 | `result-track:ac5a0f85951d54a18913ea1149750ea247791965b7ff44ed364af5e2834c37fa` |
| 17 | `theorem` | [NoetherianSpace.discrete](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-discrete.md) | 167 | `result-track:58a8b16e9de3db8e5c07a67b3eaf7c6e75db587f9e1952e2c334a9301102b273` |
| 18 | `theorem` | [NoetherianSpace.finite](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-finite.md) | 174 | `result-track:1aab5d78caab8a33f455da56c6f3f0c6cf887d0ec219ce080413cb5c62f22328` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 178 | `declaration-track:ea71ea2b58fcec2bb2b259e98bf786f99eb963a39ca4bf474ff7b26aedd7ee15` |
| 20 | `theorem` | [NoetherianSpace.exists_finite_set_closeds_irreducible](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-exists-finite-set-closeds-irreducible.md) | 183 | `result-track:34cfae0f23f9ca36a53061e7aaabdff5f13157a6900ab77dd7ad65607071eab9` |
| 21 | `theorem` | [NoetherianSpace.exists_finite_set_isClosed_irreducible](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-exists-finite-set-isclosed-irreducible.md) | 202 | `result-track:2ced1490f305a29a16d90e726a8f6a2f4ec7c4d05fa53fc39a55e12545add67f` |
| 22 | `theorem` | [NoetherianSpace.exists_finset_irreducible](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-exists-finset-irreducible.md) | 212 | `result-track:a2349334a2efc7e55862c634f0f30e9050268a8cd7c6538b699ce6c216acca3a` |
| 23 | `theorem` | [NoetherianSpace.finite_irreducibleComponents](../../../../GeneralTopology/NoetherianSpaceNamespacedAligned.lean/declarations/noetherianspace-finite-irreduciblecomponents.md) | 218 | `result-track:c4c90d326740ae4a1b602d482382101158f2f03b17e700881daf184d17c870c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28c1e91ef1f88703d7864e835376af0bb0003a092ec242d5f40b33f6257b8cce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NoetherianSpace/Variant8c34a46367ce810454b08e005802118a7ae76d9cdf06676765f8318edcc7194b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
