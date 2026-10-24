# Verification target: GRWTSK.Topology.MetricTopology.UpperLower.Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d8befb203d9b458e9dd5bac7aa7f864ecc2d021",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d8befb203d9b458e9dd5bac7aa7f864ecc2d021`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isupperset-thickening--32f042daecf2c7dec777186f.md) | 44 | `result-track:32f042daecf2c7dec777186fcc0c1cd61d567341f14486b0afce9bf5d5639df2` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/islowerset-thickening--88b48ac4e099cd5f9d8b5151.md) | 50 | `result-track:88b48ac4e099cd5f9d8b5151916ae50a9b26fa8bec4ea2f9490c175475dd03d7` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isupperset-cthickening--73bfc018c83ab5ead14ebe90.md) | 56 | `result-track:73bfc018c83ab5ead14ebe90e33e60faf066adc6e51ad82de29246be5d24c7b2` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/islowerset-cthickening--80eb774a9480403f9ba1b042.md) | 62 | `result-track:80eb774a9480403f9ba1b042d8181b627af757535188728e6d46ceddf0d6c527` |
| 5 | `lemma` | [upperClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/upperclosure-interior-subset--153fb560dcbf908c0dc6d4a9.md) | 67 | `result-track:153fb560dcbf908c0dc6d4a9f2f3192bf0d66e85d0cf3406156c3091369b9a41` |
| 6 | `lemma` | [lowerClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/lowerclosure-interior-subset--cdef47b53dc15abdadc572bd.md) | 71 | `result-track:cdef47b53dc15abdadc572bdf64334076f04ea9397a24d715dfaf307e916d964` |
| 7 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isupperset-mem-interior-of-forall-lt--0bb997716c67bd2c24cad9eb.md) | 83 | `result-track:0bb997716c67bd2c24cad9eb14e3f7d8f4fd99a19662f9fd23724ad6ec81ea16` |
| 8 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/islowerset-mem-interior-of-forall-lt--5f37dea75378119cf44a9ed0.md) | 100 | `result-track:5f37dea75378119cf44a9ed0fc765394b4741515775b269e3ee11d608cf130eb` |
| 9 | `lemma` | [dist_inf_sup_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-inf-sup-pi--3c4fb53177badbf1c23f4435.md) | 124 | `result-track:3c4fb53177badbf1c23f4435a58b04bbdf72edb9d11371c2d26a762dae0d1eb8` |
| 10 | `lemma` | [dist_mono_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-mono-left-pi--c289fabd16332f72a4f4281c.md) | 129 | `result-track:c289fabd16332f72a4f4281c99dff12bd5208e0fbf6c326d35327a13c8601c42` |
| 11 | `lemma` | [dist_mono_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-mono-right-pi--6298cd492922fdd61c350375.md) | 135 | `result-track:6298cd492922fdd61c3503754e6717f5969df5b7bc460b32b16f8dee3b37adc3` |
| 12 | `lemma` | [dist_anti_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-anti-left-pi--89e75b5a18b3a4e4fcf09776.md) | 138 | `result-track:89e75b5a18b3a4e4fcf097769c1a47b9b9dde2c8ad7e493d4bdf0735da8911ce` |
| 13 | `lemma` | [dist_anti_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-anti-right-pi--fe89e50d505026b92c9b447b.md) | 144 | `result-track:fe89e50d505026b92c9b447b734313efbe614050376cb5d2033b86eb0091ae45` |
| 14 | `lemma` | [dist_le_dist_of_le_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/dist-le-dist-of-le-pi--a1279b8206597a4fac40c961.md) | 147 | `result-track:a1279b8206597a4fac40c96158fa08e41baa26f3c1846219a024b9276b804506` |
| 15 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isupperset-exists-subset-ball--407d1b3ace471ab50893a21d.md) | 152 | `result-track:407d1b3ace471ab50893a21d6d390725f89a28ea5182bd63e3233e870acd2dc2` |
| 16 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/islowerset-exists-subset-ball--e0e19c0f139483a1fae65275.md) | 169 | `result-track:e0e19c0f139483a1fae65275bce51d2a07c4e63393fc073ac3b5814a8f15b7c2` |
| 17 | `lemma` | [IsClosed.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isclosed-upperclosure-pi--dfccee485ace174f54812c72.md) | 199 | `result-track:dfccee485ace174f54812c72923eb12b121336dbf66e1893cb4b993b166fee90` |
| 18 | `lemma` | [IsClosed.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isclosed-lowerclosure-pi--5079e56aa81059042191da42.md) | 210 | `result-track:5079e56aa81059042191da42714e96096a7218f5571924fc28048cdd4f50d32f` |
| 19 | `lemma` | [IsClopen.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isclopen-upperclosure-pi--35a23adb535df51c34b1e150.md) | 222 | `result-track:35a23adb535df51c34b1e150ee81033bf6f1029d0f6c89af543ea5e629cd8df6` |
| 20 | `lemma` | [IsClopen.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/isclopen-lowerclosure-pi--4cc45a5e9f7d1ddf416e2750.md) | 225 | `result-track:4cc45a5e9f7d1ddf416e2750bdf7f1046565bed173835a27020565148abcca46` |
| 21 | `lemma` | [closure_upperClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/closure-upperclosure-comm-pi--dabda689d6f8eefa09bd3602.md) | 228 | `result-track:dabda689d6f8eefa09bd3602f1278ded6744627fc29a9f9ee30c64b1f4066596` |
| 22 | `lemma` | [closure_lowerClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variantffa2bd9b6f46dc690bf72e795d0961f8907371ecf66b2251400e562739a41be1.lean/declarations/closure-lowerclosure-comm-pi--d25c9675a2f4117674fbfd1e.md) | 234 | `result-track:d25c9675a2f4117674fbfd1ea250cf1fc83478abb8a71b8fd50c6eb244b23408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
