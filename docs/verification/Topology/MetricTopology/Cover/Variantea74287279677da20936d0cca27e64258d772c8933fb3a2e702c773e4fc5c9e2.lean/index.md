# Verification target: GRWTSK.Topology.MetricTopology.Cover.Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d9a593300341548a4bb600d2f27fb36e1ddbd40",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d9a593300341548a4bb600d2f27fb36e1ddbd40`.

Source path: `GRWTSK/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/instance--2a64742456ffc709890e2605.md) | 39 | `declaration-track:2a64742456ffc709890e2605484f2b68e06e7a47f16d0b7b1e92bc0a07777518` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/instance--2e33254a7b9dfd9def6d1307.md) | 40 | `declaration-track:2e33254a7b9dfd9def6d13076a7a21bac3bd34d20d9f9b072f6267dff71da9c0` |
| 3 | `def` | [IsCover](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover--dc1461a8d7abc051c78b7b96.md) | 48 | `declaration-track:dc1461a8d7abc051c78b7b96492ca71db1cf09c5583b507ff10d4e15aa25650b` |
| 4 | `lemma` | [IsCover.empty](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-empty--63cf5b1039f9aee6f320896b.md) | 50 | `result-track:63cf5b1039f9aee6f320896b40e3a299692d3c44313078fe31923c02c9f6186d` |
| 5 | `lemma` | [isCover_empty_right](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-empty-right--87bbefc42228d2d96677dbcf.md) | 52 | `result-track:87bbefc42228d2d96677dbcff6ccb0ba7d821b08feef10093ba5702339632e60` |
| 6 | `lemma` | [IsCover.nonempty](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-nonempty--ccf1c1e18b2f09d5ee31aecf.md) | 54 | `result-track:ccf1c1e18b2f09d5ee31aecf0819f40c17f77c1ad6c1be971b004b8212769f1f` |
| 7 | `lemma` | [IsCover.refl](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-refl--6edcf3b43346b61aa6991409.md) | 57 | `result-track:6edcf3b43346b61aa6991409a571b26633afcd23de33957129f758635246555b` |
| 8 | `lemma` | [IsCover.rfl](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-rfl--dbb663322adc0fdf517678e2.md) | 58 | `result-track:dbb663322adc0fdf517678e2175f0eb02db63f668509900b4a70c297157a7077` |
| 9 | `lemma` | [IsCover.mono](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-mono--35e16ced43963bb2fb86d421.md) | 60 | `result-track:35e16ced43963bb2fb86d421e0fd4236d2810c2b1952a2402adaa9e271c05626` |
| 10 | `lemma` | [IsCover.anti](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-anti--3bcfc12aca700a5ebe211362.md) | 62 | `result-track:3bcfc12aca700a5ebe2113624b14344dcac50f1446d22592e29642e6df4ef6ec` |
| 11 | `lemma` | [IsCover.mono_radius](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-mono-radius--b25b104767448c3c0cdcda89.md) | 64 | `result-track:b25b104767448c3c0cdcda89c8d1557a29340cd45702cc5979b4aee14685b005` |
| 12 | `lemma` | [IsCover.image_lipschitz](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-image-lipschitz--ca4516d0971569798ecef7a5.md) | 67 | `result-track:ca4516d0971569798ecef7a5a2be763cd3bc7f35900c7b99bb7be3150fbd3633` |
| 13 | `lemma` | [IsCover.image_lipschitz_of_surjective](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-image-lipschitz-of-surjective--0d0a46f8c606c2f3f1b2cef7.md) | 74 | `result-track:0d0a46f8c606c2f3f1b2cef71e91e5e7c1c14670370ad016c9aaf6387a97e2ea` |
| 14 | `lemma` | [_root_.Isometry.isCover_image_iff](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/root-isometry-iscover-image-iff--043d45c0ac5080fbfea7016e.md) | 80 | `result-track:043d45c0ac5080fbfea7016e445191da65c5ecd4c3acc9611729ef2db0cbf7f9` |
| 15 | `lemma` | [IsCover.singleton_of_ediam_le](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-singleton-of-ediam-le--6ff70ee4c87c1102e9dcb161.md) | 87 | `result-track:6ff70ee4c87c1102e9dcb161c08eb8144396ce20cb389fdaf585ee53d3b9a1ad` |
| 16 | `lemma` | [isCover_iff_subset_iUnion_closedEBall](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-iff-subset-iunion-closedeball--75ca010af4e0999a5f7c2ac2.md) | 91 | `result-track:75ca010af4e0999a5f7c2ac2bd6354cc866a6b8d5c844fe3af6f7df9082176b2` |
| 17 | `lemma` | [IsCover.of_maximal_isSeparated](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-of-maximal-isseparated--428fed9958f40bbb5713ff30.md) | 101 | `result-track:428fed9958f40bbb5713ff301dbd8c4057fb5af7d2ab99b63b8db3c43f93e981` |
| 18 | `lemma` | [exists_finite_isCover_of_totallyBounded](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/exists-finite-iscover-of-totallybounded--ced491c81c1929738c7d3d68.md) | 106 | `result-track:ced491c81c1929738c7d3d680e841336319c24d553ec26216b8e6599392d0f24` |
| 19 | `lemma` | [exists_finite_isCover_of_isCompact_closure](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/exists-finite-iscover-of-iscompact-closure--c2584d8869f33104540f083f.md) | 118 | `result-track:c2584d8869f33104540f083fa9b50942f1de50dd2221ec0e6a2068018266f2fc` |
| 20 | `lemma` | [exists_finite_isCover_of_isCompact](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/exists-finite-iscover-of-iscompact--5b34c27a651c9cf110f741fd.md) | 123 | `result-track:5b34c27a651c9cf110f741fd05f5b3ed9f7bc0e1c535e49e8ff02d38358843a1` |
| 21 | `lemma` | [isCover_iff_subset_iUnion_closedBall](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-iff-subset-iunion-closedball--8eec76c4c3194f74053afe45.md) | 132 | `result-track:8eec76c4c3194f74053afe45c631a8cbf45d6ac8a3dc9f298e45fd265fcbf92e` |
| 22 | `lemma` | [IsCover.of_subset_cthickening_of_lt](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-of-subset-cthickening-of-lt--4d11ea4b209beba838c37ce1.md) | 138 | `result-track:4d11ea4b209beba838c37ce1ef863d20fa54be8f417cb6b9dabd9c36855a75e1` |
| 23 | `lemma` | [isCover_iff_subset_cthickening](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-iff-subset-cthickening--bde786b3694e931d80c2112c.md) | 145 | `result-track:bde786b3694e931d80c2112c801c62d1eadd1dd10b51f59b42b6f69e22644e08` |
| 24 | `lemma` | [isCover_closure](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-closure--d0363a4fb12cc7cb6b749c4e.md) | 150 | `result-track:d0363a4fb12cc7cb6b749c4e0824ec8e5eca71cd4e92927011b596941492c4f1` |
| 25 | `lemma` | [isCover_zero](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-zero--9a9b252fbe9ba202b39edc7a.md) | 160 | `result-track:9a9b252fbe9ba202b39edc7a4dd68b8da3a759020dc0177e9a254ff0107df3e0` |
| 26 | `lemma` | [IsCover.isCompact](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-iscompact--12753c98bb3fa5952b7b7295.md) | 169 | `result-track:12753c98bb3fa5952b7b72953154f390da7d8a1ef5a5477d2ea33ae483622100` |
| 27 | `lemma` | [IsCover.isCompact_closure](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscover-iscompact-closure--496b2ceef6d538512601a9da.md) | 173 | `result-track:496b2ceef6d538512601a9da3a1e52c6f47ffb378776016fbfabd6561997a145` |
| 28 | `lemma` | [isCompact_closure_iff_exists_finite_isCover](../../../../../mathematics/Topology/MetricTopology/Cover/Variantea74287279677da20936d0cca27e64258d772c8933fb3a2e702c773e4fc5c9e2.lean/declarations/iscompact-closure-iff-exists-finite-iscover--e76abb648623a46824ad70a7.md) | 180 | `result-track:e76abb648623a46824ad70a720b41ae92b9ed25b7c32f12d706fc66a0f141a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
