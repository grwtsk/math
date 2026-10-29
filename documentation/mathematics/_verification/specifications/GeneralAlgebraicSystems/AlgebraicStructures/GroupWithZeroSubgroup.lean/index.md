# Verification target: Group With Zero Subgroup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c538142ade80ae95c700f897220aaa7046c417",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant4235ccad130b556e31cdeec5cc74b3aeb4e372ae1c3cedc325606236375a9384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c538142ade80ae95c700f897220aaa7046c417`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant4235ccad130b556e31cdeec5cc74b3aeb4e372ae1c3cedc325606236375a9384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant4235ccad130b556e31cdeec5cc74b3aeb4e372ae1c3cedc325606236375a9384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Submonoid.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-2.md) | 25 | `result-track:d3ab15ac241a5d12197a2fcfdd7640272059bef029b71f8c702f23c7d0728e60` |
| 2 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 29 | `result-track:2d9098305981a46e01be2fe6a6930bdc9c6348f118f75695141d3130dfca44aa` |
| 3 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-2.md) | 33 | `result-track:d6d9a6be2f08b051b7a09f34672ef9cd9db89cebfd7e637f24f603e3c68eb878` |
| 4 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-2.md) | 38 | `result-track:665e9944b66835edf1c91a0d6d50c5ddc80b2fe7927fbe460aaa805ba0c6a0db` |
| 5 | `lemma` | [pointwise_smul_le_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-iff-source-edition-2.md) | 41 | `result-track:565d09a40e2b00f2f323b9d9677906b658c93dc969ca7711f02620dc1187e0dd` |
| 6 | `lemma` | [le_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/le-pointwise-smul-iff-source-edition-3.md) | 42 | `result-track:eaddda713b0bc5faf2c8442a010058a146f0f230b516f7826d5fd870104f7902` |
| 7 | `def` | [pointwiseMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwisemulaction.md) | 54 | `declaration-track:629a60d8bb883d1813a41705b742fe80df21cb466e3e1f932c70af5029223b7d` |
| 8 | `lemma` | [pointwise_smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-def.md) | 64 | `result-track:8f7c62499233cdc7451ef7013643df64fa92336a34e1cd27070c37de10dd42d7` |
| 9 | `lemma` | [coe_pointwise_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/coe-pointwise-smul.md) | 69 | `result-track:8239e5e40dc8af36db1347f2c4704182c96e5167f56f3e588e2a448aa2d2bf17` |
| 10 | `lemma` | [pointwise_smul_toAddSubmonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-toaddsubmonoid.md) | 73 | `result-track:53468435e2305b2dcb1682580cd2ef497549734a2735f3d27bfef195eb19209b` |
| 11 | `lemma` | [smul_mem_pointwise_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/smul-mem-pointwise-smul.md) | 77 | `result-track:4038bd1c3b0382cb887811662b1b5ab769bebb517a18b8132a303c02b072deee` |
| 12 | `lemma` | [mem_smul_pointwise_iff_exists](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-smul-pointwise-iff-exists.md) | 80 | `result-track:fd7e6a4fb2615414ef978c1d41589643fb054a6da03b505a45b48046bf2ab676` |
| 13 | `instance` | [pointwise_isCentralScalar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-iscentralscalar.md) | 84 | `declaration-track:2207928fff4b3d99c6aa3bf9d1d01d854ca4fd4bb3f51ac0c1f0fc51265dfc95` |
| 14 | `lemma` | [smul_mem_pointwise_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/smul-mem-pointwise-smul-iff-source-edition-3.md) | 105 | `result-track:f88784fdf4a84d586cb9d0dd9ad3d7888b88ccb36a893736119d192ce2ecda9c` |
| 15 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-3.md) | 107 | `result-track:92b05e163f400afa03ae2f6bb51777a0a4d913f43c33cc1cadbf8b137730c01d` |
| 16 | `lemma` | [mem_inv_pointwise_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-inv-pointwise-smul-iff-source-edition-3.md) | 110 | `result-track:de43fb2e6638b6b9ce1cc6af5d3fea2ff52dd1c2b788da97c18c04e6422c0197` |
| 17 | `lemma` | [pointwise_smul_le_pointwise_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-pointwise-smul-iff-source-edition-3.md) | 113 | `result-track:c81e68bf7fbca12950e0b325671e85f4642972eef8851dc76bb508ceb42bcb38` |
| 18 | `lemma` | [pointwise_smul_le_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-iff-source-edition-3.md) | 115 | `result-track:c24bb4dd84637fda27c7d618a97def35c8bb1d6db14d5883da074f463a02c48f` |
| 19 | `lemma` | [le_pointwise_smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/le-pointwise-smul-iff-source-edition-2.md) | 116 | `result-track:955fe1f486381cd6f5f8fed0e1ea0585752b2f0790e0194a0e66a349621dc90e` |
| 20 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/smul-mem-pointwise-smul-iff.md) | 124 | `result-track:3e46b077f6f7ca7917b309ca7985851d236f0f688208100241b99b287085c010` |
| 21 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem-source-edition-2.md) | 128 | `result-track:8d06cfc3f3a055e617990475f2706395ab6512a069af4a33f166b7d2c095e86d` |
| 22 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/mem-inv-pointwise-smul-iff.md) | 132 | `result-track:8b2d7cb3b780c555c256f7a9549bc7e0e98dfc9823d25186a374712aef2d0ca7` |
| 23 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 137 | `result-track:0da9da969bc2f0e20103dbf9b3cb2f7c6d40d6a75788f2e6545797e3719053d6` |
| 24 | `lemma` | [pointwise_smul_le_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/pointwise-smul-le-iff.md) | 140 | `result-track:1c82b19e52bffcfbe31499c75a8234a4ecd77292782bf31c2bcad0dffe34ffc1` |
| 25 | `lemma` | [le_pointwise_smul_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroSubgroup.lean/declarations/le-pointwise-smul-iff.md) | 141 | `result-track:12d203bd8ae5dff3c946055b6e28e937b74aedf3596a8f7e632556c8366cfb90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b686f114be01d8896a6a33353c972a12542b493f966d66b3b6031a558423511 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Subgroup/Variant4235ccad130b556e31cdeec5cc74b3aeb4e372ae1c3cedc325606236375a9384.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Subgroup/Variant4235ccad130b556e31cdeec5cc74b3aeb4e372ae1c3cedc325606236375a9384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
