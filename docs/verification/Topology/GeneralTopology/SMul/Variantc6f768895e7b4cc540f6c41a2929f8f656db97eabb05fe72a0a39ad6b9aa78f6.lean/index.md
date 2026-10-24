# Verification target: GRWTSK.Topology.GeneralTopology.SMul.Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a55efbe4435df567d197eeee7adc2b3f3742da6",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a55efbe4435df567d197eeee7adc2b3f3742da6`.

Source path: `GRWTSK/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.SMul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.SMulWithZero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [single_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/single-smul--c08558dfc7200e4f7e3830d6.md) | 35 | `result-track:c08558dfc7200e4f7e3830d6565b1a511d43ce3bd5b86824fec5e4bf02eb354a` |
| 2 | `def` | [comapSMul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapsmul--0927a30faf7c66e80d728212.md) | 48 | `declaration-track:0927a30faf7c66e80d728212c4a87782f9a56e720d577ce85adc480d510bc1d3` |
| 3 | `theorem` | [comapSMul_def](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapsmul-def--0e7303f605eaf9d0aa2e87da.md) | 52 | `result-track:0e7303f605eaf9d0aa2e87da7856882d4472107883bc37f63fd276cdb5037b34` |
| 4 | `theorem` | [comapSMul_single](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapsmul-single--541b9019cce2fd722a58d4bf.md) | 56 | `result-track:541b9019cce2fd722a58d4bf54941c2abd57448be12259164ff7ae61e43f5f7a` |
| 5 | `def` | [comapMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapmulaction--a636777b4dd99e31117ca77b.md) | 60 | `declaration-track:a636777b4dd99e31117ca77b8f3323281c2b072e48ac57ed160ad6ea110204c0` |
| 6 | `def` | [comapDistribMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapdistribmulaction--becb6c6327a687bf36d791d2.md) | 68 | `declaration-track:becb6c6327a687bf36d791d290da09abc036e72fbce1e99176b5eff779023960` |
| 7 | `theorem` | [comapSMul_apply](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapsmul-apply--532b76809740cff04a1d0296.md) | 89 | `result-track:532b76809740cff04a1d0296d2f60e6b015a22ad0cfc8895dd32c6a897314a29` |
| 8 | `theorem` | [_root_.IsSMulRegular.finsupp](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/root-issmulregular-finsupp--b8614f801c0f9753b7b5edf0.md) | 102 | `result-track:b8614f801c0f9753b7b5edf00ff4746ce096e834b0920f569d9e0e5b59ad3ade` |
| 9 | `instance` | [faithfulSMul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/faithfulsmul--e5e1507334442928ad3b3065.md) | 106 | `declaration-track:e5e1507334442928ad3b3065ab8095205901d9c9255c6dc30607d9a335833ffd` |
| 10 | `instance` | [distribMulAction](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/distribmulaction--8ef682ad49041ece25c0cad3.md) | 114 | `declaration-track:8ef682ad49041ece25c0cad38f72d994a8ac746bc31ccbaa90f287e366715251` |
| 11 | `instance` | [module](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/module--12fcb53e998860f6938a8f42.md) | 120 | `declaration-track:12fcb53e998860f6938a8f42f9e3a54036c12fbe2b0b0d31f67f42a05422cfbc` |
| 12 | `theorem` | [support_smul_eq](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/support-smul-eq--e389e47e2d2c2964c22afa86.md) | 128 | `result-track:e389e47e2d2c2964c22afa86290d6e1606baee80f89643c89f64075b1e166dc5` |
| 13 | `theorem` | [filter_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/filter-smul--184f66a71725b3020096448e.md) | 137 | `result-track:184f66a71725b3020096448e3e1c6483051b7781117b787b3fa3f0271659efbb` |
| 14 | `theorem` | [mapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/mapdomain-smul--53761ed25735358f915288f3.md) | 145 | `result-track:53761ed25735358f915288f3747617c7b27ee10d829a795d7a37e764d4615505` |
| 15 | `theorem` | [smul_single'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/smul-single--a65120fe61154f52811b7ae0.md) | 149 | `result-track:a65120fe61154f52811b7ae0e9a40d86afd52a3dd1f4b7fc2b49be26ea10d1a4` |
| 16 | `theorem` | [smul_single_one](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/smul-single-one--0304708073bd7495a9bff213.md) | 152 | `result-track:0304708073bd7495a9bff213a93b59dc503843c262ff25417a787acf6e486203` |
| 17 | `theorem` | [comapDomain_smul](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapdomain-smul--7347fd7fb863fa7eb4beac3e.md) | 156 | `result-track:7347fd7fb863fa7eb4beac3e7bf2e871dbb2a35281b55ab943f77e9fb39a646d` |
| 18 | `theorem` | [comapDomain_smul_of_injective](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/comapdomain-smul-of-injective--ebcf548b73d8f99fc0fdb639.md) | 165 | `result-track:ebcf548b73d8f99fc0fdb639147243e34f5abe2b0fb4a6faf67c95ee36fe2c59` |
| 19 | `theorem` | [sum_smul_index](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/sum-smul-index--09c307f372b08aa528c28aed.md) | 172 | `result-track:09c307f372b08aa528c28aed4804d68160ea65f53d244ff8b50ef21ae9511e73` |
| 20 | `theorem` | [sum_smul_index'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/sum-smul-index--38fcc3cdbd13d66a4e49d76a.md) | 176 | `result-track:38fcc3cdbd13d66a4e49d76af4c6bff0cae61f907d6a2786a1edfc52b466e710` |
| 21 | `theorem` | [sum_smul_index_addMonoidHom](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/sum-smul-index-addmonoidhom--7814d3692adf9df63ce9e7a2.md) | 181 | `result-track:7814d3692adf9df63ce9e7a2e36e13d4a4eb1307887c29c297dd37e2081a107b` |
| 22 | `instance` | [noZeroSMulDivisors](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/nozerosmuldivisors--83b2549403ada0d44b351b31.md) | 186 | `declaration-track:83b2549403ada0d44b351b3166f7b3be0972470dda7d2bf6f93f5c023843eabe` |
| 23 | `def` | [DistribMulActionHom.single](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/distribmulactionhom-single--2536102063376d07c9bb7cbb.md) | 197 | `declaration-track:2536102063376d07c9bb7cbb6eac438b579a62880e1ac386bca48f1a7fe61a80` |
| 24 | `theorem` | [distribMulActionHom_ext](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/distribmulactionhom-ext--4e3e9bc4fc6e168df66e88d9.md) | 201 | `result-track:4e3e9bc4fc6e168df66e88d9bbb952112a88f7dee0df4fe7c3f460d511787295` |
| 25 | `theorem` | [distribMulActionHom_ext'](../../../../../mathematics/Topology/GeneralTopology/SMul/Variantc6f768895e7b4cc540f6c41a2929f8f656db97eabb05fe72a0a39ad6b9aa78f6.lean/declarations/distribmulactionhom-ext--ff8af092fb5eaa84eabd3e48.md) | 207 | `result-track:ff8af092fb5eaa84eabd3e48b8be9dd2fa2ef79c0298ab6fafcba3a3518ce684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
