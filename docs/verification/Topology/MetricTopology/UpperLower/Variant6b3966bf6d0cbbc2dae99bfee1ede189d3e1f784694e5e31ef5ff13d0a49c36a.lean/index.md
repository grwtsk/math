# Verification target: GRWTSK.Topology.MetricTopology.UpperLower.Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40327c8af06406407534adbce71a2fe2d6af0b9e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40327c8af06406407534adbce71a2fe2d6af0b9e`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.UpperLower` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Sequences` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isupperset-thickening--02a13a888b5847925cfda02d.md) | 40 | `result-track:02a13a888b5847925cfda02d55e38536e32c8da2d04302ece7a9435d2d9bfd4a` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/islowerset-thickening--70ac7203aba90ccaf56099c4.md) | 46 | `result-track:70ac7203aba90ccaf56099c4d025e142692c0f9e57e7099cfe2da5581310b1d7` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isupperset-cthickening--e357f91c1590240a109ff889.md) | 52 | `result-track:e357f91c1590240a109ff88990763b93a341d3756d2de9ea19ad82857849f3db` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/islowerset-cthickening--5710f8c63fc339341a2f0ac8.md) | 58 | `result-track:5710f8c63fc339341a2f0ac8fd69d9f02dc1f25a8f8a895bea214fa4b933f36f` |
| 5 | `lemma` | [upperClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/upperclosure-interior-subset--bcd5415a83bc0d8325a7e36d.md) | 63 | `result-track:bcd5415a83bc0d8325a7e36d81dfeb60bd2e7d10efe97ae9b275ac6ebc5524a6` |
| 6 | `lemma` | [lowerClosure_interior_subset'](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/lowerclosure-interior-subset--c7b74a18786247cfeeadc4af.md) | 67 | `result-track:c7b74a18786247cfeeadc4af6ab036a06f3a31c6ebdd02fe954ce062c5e2d581` |
| 7 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isupperset-mem-interior-of-forall-lt--ef5cc3ae9fd24ea465a8570a.md) | 79 | `result-track:ef5cc3ae9fd24ea465a8570a9ef541a0afac3f1904f4aeb5e21e90551035f281` |
| 8 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/islowerset-mem-interior-of-forall-lt--ea0ef5a43428556331f4c2b6.md) | 96 | `result-track:ea0ef5a43428556331f4c2b60093e8052ba767970c9b8d9413cb6c3ac0afd504` |
| 9 | `lemma` | [dist_inf_sup_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-inf-sup-pi--8fcc95aa48c84db90338d45d.md) | 120 | `result-track:8fcc95aa48c84db90338d45df0c9437a73243bfe427fb663f10dc14c065a082c` |
| 10 | `lemma` | [dist_mono_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-mono-left-pi--23f647882d44f4c302476be7.md) | 125 | `result-track:23f647882d44f4c302476be708c084180028e52909ca9c9aa9c77459b2460c1f` |
| 11 | `lemma` | [dist_mono_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-mono-right-pi--d6cd1c8be8b2a371be468223.md) | 131 | `result-track:d6cd1c8be8b2a371be468223946134419c8c1009ca492548fc75048ed5a24e33` |
| 12 | `lemma` | [dist_anti_left_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-anti-left-pi--98b113f32c6f4bc3173a2549.md) | 134 | `result-track:98b113f32c6f4bc3173a2549564a4506ac8a75c4e304370383aaf41a48169aef` |
| 13 | `lemma` | [dist_anti_right_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-anti-right-pi--54d1e13754646480df70d560.md) | 140 | `result-track:54d1e13754646480df70d560cc14206d97acc1b04b096dd9a8b7048586493139` |
| 14 | `lemma` | [dist_le_dist_of_le_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/dist-le-dist-of-le-pi--65521517820e3399919b9ac4.md) | 143 | `result-track:65521517820e3399919b9ac4ee8af5e3c1bb2815a982ee60479fc014d9848a95` |
| 15 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isupperset-exists-subset-ball--b35fbf0ac18b25b14f18be9e.md) | 148 | `result-track:b35fbf0ac18b25b14f18be9eff87422572abb4d7270aa9f5cb7ece1c18e16b72` |
| 16 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/islowerset-exists-subset-ball--eb252551a7b99e86bf9e2e2e.md) | 166 | `result-track:eb252551a7b99e86bf9e2e2ecda4f2825ea0283fd4cb49b0969c9a6570bf4c3f` |
| 17 | `lemma` | [IsClosed.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isclosed-upperclosure-pi--858e74115f7226fc389f293c.md) | 197 | `result-track:858e74115f7226fc389f293c5ba37b07da0be685b71c7d613586769fa4708f9b` |
| 18 | `lemma` | [IsClosed.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isclosed-lowerclosure-pi--01e714e45dfca2f8c16be200.md) | 208 | `result-track:01e714e45dfca2f8c16be200fd1fb104e50371d00225ab41a56726edfca6ead7` |
| 19 | `lemma` | [IsClopen.upperClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isclopen-upperclosure-pi--b9ddb6cdaf8a45fe8c85a74e.md) | 220 | `result-track:b9ddb6cdaf8a45fe8c85a74e0dd1e479dd148100596dffda602e2544480076f1` |
| 20 | `lemma` | [IsClopen.lowerClosure_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/isclopen-lowerclosure-pi--845b3b632d53a5c2c1f24b06.md) | 223 | `result-track:845b3b632d53a5c2c1f24b06a856e16bd3c2bc67ecf1b426a5c9c1574a02f18f` |
| 21 | `lemma` | [closure_upperClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/closure-upperclosure-comm-pi--042debbe7b0c1d5bec768567.md) | 226 | `result-track:042debbe7b0c1d5bec76856761010900aa65ca7d045cde5db586387bf57b577c` |
| 22 | `lemma` | [closure_lowerClosure_comm_pi](../../../../../mathematics/Topology/MetricTopology/UpperLower/Variant6b3966bf6d0cbbc2dae99bfee1ede189d3e1f784694e5e31ef5ff13d0a49c36a.lean/declarations/closure-lowerclosure-comm-pi--5d72186a4d8b7ec7b28390b9.md) | 232 | `result-track:5d72186a4d8b7ec7b28390b928bfc673838d4d42b332bce0e7f19c54d90b178a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
