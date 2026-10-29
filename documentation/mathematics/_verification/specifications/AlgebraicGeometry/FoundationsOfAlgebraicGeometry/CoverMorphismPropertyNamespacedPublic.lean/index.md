# Verification target: Cover Morphism Property Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8a648ff31ccc3a366b197560821e5e3023b5a18",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8a648ff31ccc3a366b197560821e5e3023b5a18`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean.json)

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
| 1 | `class` | [JointlySurjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/jointlysurjective.md) | 53 | `declaration-track:82faeae33e6a4b869a8778833751a6236c4fccee4c5e127c0292631c335af010` |
| 2 | `abbrev` | [Cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover.md) | 58 | `declaration-track:4e97cc9414bfeea7f7a3229bb8cbf5bca59ed024a4b77345966a6972b4c24cd0` |
| 3 | `lemma` | [Cover.exists_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-exists-eq.md) | 65 | `result-track:b6927955898660a9167ec84080ac9d7058fc11cbf1c84499494c4a9937705345` |
| 4 | `def` | [Cover.idx](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-idx.md) | 71 | `declaration-track:b046babe1aaff2161e01777abe88de70c267d652bf814b59b8a43b4f896a5df5` |
| 5 | `lemma` | [Cover.covers](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-covers.md) | 74 | `result-track:3ae5c6a062ce90df76cb6e70e8d6ba104cee3c26bdf94af6de4ac1a846f5dd74` |
| 6 | `theorem` | [Cover.iUnion_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-iunion-range.md) | 78 | `result-track:9b8714e8c3908ff4261c13d2d8ccf53980dd5e21fe9848bce19f52ea6b3c2850` |
| 7 | `instance` | [Cover.nonempty_of_nonempty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-nonempty-of-nonempty.md) | 85 | `declaration-track:fd2def1cc0e63aa36b28c3a944f95c6997aca6ef5985cca5751258d15168d1e6` |
| 8 | `lemma` | [presieve₀_mem_precoverage_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/presieve-mem-precoverage-iff.md) | 94 | `result-track:d94e9f9641c59017abd13e4f1184326a28338fb95c10a536e1d1fa68386542f1` |
| 9 | `lemma` | [Cover.map_prop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-map-prop.md) | 99 | `result-track:e0a3ba520d85922f02d5c7489f4db49fababe27b3c87a071bfbc354ff1c55bfe` |
| 10 | `def` | [Cover.mkOfCovers](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-mkofcovers.md) | 105 | `declaration-track:657552a9272d5eaeb0af523848a9b338e648304101d61587d8630537a690fb8d` |
| 11 | `def` | [coverOfIsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/coverofisiso.md) | 117 | `declaration-track:7cbc35b0ee61b4f1e36f702dd41837085fa859ac1aae48974b97bee320070d31` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/instance.md) | 124 | `declaration-track:216d5cdefce4dc961251e143310ca12c6e125e0ae4b104ce899f403775d92cbf` |
| 13 | `def` | [Cover.changeProp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-changeprop.md) | 132 | `declaration-track:e643d59885a04f1581ca45e66acfa15b41d1aa8d1c535d0b463659f94a9b3224` |
| 14 | `def` | [Cover.copy](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-copy.md) | 144 | `declaration-track:6f5817e2416caf3d7661f66af084e9c2f00a4931984b32c706fe129d894c1cd8` |
| 15 | `def` | [Cover.pushforwardIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-pushforwardiso.md) | 168 | `declaration-track:be7fb4ac5ae7a976a791bf2ff8d7e59e3e14fcd3e782373034861cb8f5dfd35d` |
| 16 | `def` | [Cover.add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-add.md) | 177 | `declaration-track:9971074a40a6bc826e04ed2cc0059831050f3cb1efe7b7fd9a326bf1b94bff1d` |
| 17 | `def` | [Cover.pullbackHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-pullbackhom.md) | 186 | `declaration-track:1c8988cda45121a1d06188728f456e1f889c9ff0a8ec226ecbc67e64d1dbb4b8` |
| 18 | `lemma` | [Cover.pullbackHom_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-pullbackhom-map.md) | 192 | `result-track:d8417ca54a1fef47aa0d5a1620e6c050fa56acca407edf233facdd36a6f50bb7` |
| 19 | `structure` | [AffineCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/affinecover.md) | 204 | `declaration-track:6a6818414d3beb05fecbdb888467734dc93cb1b2f68760a2c7977ade8c977cd2` |
| 20 | `def` | [AffineCover.cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/affinecover-cover.md) | 220 | `declaration-track:874e17e6a2489d72cf7499b5e247c5e3db6952577a429e17927fb32ae12b6b93` |
| 21 | `def` | [Cover.ulift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-ulift.md) | 233 | `declaration-track:729351430ef06e41a16519841bdb300ffc8938b422c0f83dd7035f820d40a0b8` |
| 22 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 242 | `declaration-track:d285b9b867b0224b2972ca7e0340673c5efe9618f4fd0111fbe616b48c10f345` |
| 23 | `abbrev` | [Cover.Hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespacedPublic.lean/declarations/cover-hom.md) | 253 | `declaration-track:6e5ec6ae53bb7c9cfd190518ed9b60bfdb671d902b1bc46b9b3816a55506a34a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99c886bb69aad0f4a0508781031d0782a8b8f5b53f0b8ae4a0f732ca4d3adb54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/MorphismProperty/Variantcec1850fa6789122c0b678e98b023b055867224cde3d86cbb4ff8e6b1272cb42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
