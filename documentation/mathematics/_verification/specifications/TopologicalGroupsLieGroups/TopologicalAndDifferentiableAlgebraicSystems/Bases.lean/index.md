# Verification target: Bases

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984977b3e2a612a34a43d9e0028851d2a2084ba3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984977b3e2a612a34a43d9e0028851d2a2084ba3`.

Source path: `GRWTSK/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Nonarchimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.FilterBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingSubgroupsBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/ringsubgroupsbasis.md) | 37 | `declaration-track:2dec46bb3cac738384936e34da68584408bd410d224c567ee4d76fb5ee8dc5ad` |
| 2 | `theorem` | [of_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/of-comm.md) | 55 | `result-track:00a1a4886bdd232276ade8c00f939f3b6642641a8361d0055e3fe4be2ee532ed` |
| 3 | `def` | [toRingFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/toringfilterbasis.md) | 70 | `declaration-track:9847b825543fc7dfc61bce782eab89fdda9cee32c0360d4af67c4b401e34374e` |
| 4 | `theorem` | [mem_addGroupFilterBasis_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/mem-addgroupfilterbasis-iff.md) | 131 | `result-track:94346198f94f00233cd9d89ae7beb5a034a724c203565f5842614a8f6826aa7c` |
| 5 | `theorem` | [mem_addGroupFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/mem-addgroupfilterbasis.md) | 136 | `result-track:a2dd1ad0297c9cda3175dd8000c23e698383118642fae8d1d9b5a14dd73cf4ed` |
| 6 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/topology-source-edition-2.md) | 142 | `declaration-track:3e9da6121d98c04951d6c0170626fc7df011ce531d2e338104de05b2e5c6f6c8` |
| 7 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/hasbasis-nhds-zero.md) | 146 | `result-track:d0cce62f6817139e107f0e8b6505ff58551c08ebce268d4cf3835e5718dd9cde` |
| 8 | `theorem` | [hasBasis_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/hasbasis-nhds.md) | 157 | `result-track:2dcf084488328ccd96ac93b164d3cb350fa47c4fb5c6e8fb06cb6a0d3c0f3188` |
| 9 | `def` | [openAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/openaddsubgroup.md) | 184 | `declaration-track:02c6f1308d22eb4fe21ce49ef618a3741903e2d7be12c3c9934580f196dc367a` |
| 10 | `theorem` | [nonarchimedean](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/nonarchimedean.md) | 198 | `result-track:9923b3f36f78a70e487abe588b87f780112d1afa03aca95d88f7d186bd74337d` |
| 11 | `structure` | [SubmodulesRingBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/submodulesringbasis.md) | 213 | `declaration-track:1120ae1957ab8dde71f1a9b06ead7d85a9ab2e8228957741c28d0250bd266cbc` |
| 12 | `theorem` | [toRing_subgroups_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/toring-subgroups-basis.md) | 228 | `result-track:09e4f2b15c12c12938c42caa90f28b4434cff3e293aa7bf7c4bfdb4d3317734a` |
| 13 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/topology-source-edition-3.md) | 239 | `declaration-track:ca04b31b2e7f354b596a27b29bf63b09e6239b4aebe9bc74e64ce7863f36fdeb` |
| 14 | `structure` | [SubmodulesBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/submodulesbasis.md) | 250 | `declaration-track:753cdfdfe8e5b2da5305ed9fd2013dbef2a9fb873a07e844c31e7c3d6074d32c` |
| 15 | `def` | [toModuleFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/tomodulefilterbasis.md) | 263 | `declaration-track:09de87f3754d42b78d5e7422bce03318e8d37a060a4e97f0a5bfa2b04467c2f1` |
| 16 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/topology.md) | 321 | `declaration-track:2c6ed9ac0ee70088beaa3bc111f01b1baca2e0b5c4eddb06b673e37fc58876c9` |
| 17 | `def` | [openAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/openaddsubgroup-source-edition-2.md) | 327 | `declaration-track:2ed3f3d0525b6b08b0b803dabd735551d9fff056919b7a7a878de957caba7125` |
| 18 | `theorem` | [nonarchimedean](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/nonarchimedean-source-edition-2.md) | 343 | `result-track:9d04ce1a8ab21a30ab1990bd2a8068d730f4a7c0f71a7a2a8f4b0e6e8c838558` |
| 19 | `theorem` | [SubmodulesRingBasis.toSubmodulesBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/submodulesringbasis-tosubmodulesbasis.md) | 372 | `result-track:f63798bcecae9a9f9981b26414f7105eaf17db19e0d118a293ae4a1548524f66` |
| 20 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/example.md) | 377 | `declaration-track:073c3ba75eefce524f8c4923a29f680db13371787c7176c35b287d4b4f9de990` |
| 21 | `structure` | [RingFilterBasis.SubmodulesBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/ringfilterbasis-submodulesbasis.md) | 385 | `declaration-track:477bebfcfed78ed3f532ac1a75fa72a83209d44fbb7d0205b92877333f868b6b` |
| 22 | `theorem` | [RingFilterBasis.submodulesBasisIsBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/ringfilterbasis-submodulesbasisisbasis.md) | 394 | `result-track:f3402e6ca44624b8358a7242702f986684b6238d3ebf826fdee1dd143a9bc0f0` |
| 23 | `def` | [RingFilterBasis.moduleFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Bases.lean/declarations/ringfilterbasis-modulefilterbasis.md) | 408 | `declaration-track:d0666b22274cbd884fe6d09ca69c595f971609198b7205a7eeea46d3cc5a387a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d3a59033107c011a9f696956a994e9a2c108f5d6c140f26418e14da3f511e71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean","GRWTSK/_verification/specifications/Topology/Bases/Variantde6eb1ee52d9dfbd35b0c673ebd9bc9b66164004efebde9e2779cffea794542b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
