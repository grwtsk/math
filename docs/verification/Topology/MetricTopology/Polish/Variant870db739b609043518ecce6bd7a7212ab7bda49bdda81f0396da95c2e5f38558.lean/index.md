# Verification target: GRWTSK.Topology.MetricTopology.Polish.Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfbeebe80e7cf7fc1004063310c7b5774f354b26",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfbeebe80e7cf7fc1004063310c7b5774f354b26`.

Source path: `GRWTSK/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Gluing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/polishspace--8299abbf03e267d6fa68b434.md) | 73 | `declaration-track:8299abbf03e267d6fa68b434133f806544bae68c27212c2d04988d8fd4a2ea00` |
| 2 | `class` | [UpgradedPolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/upgradedpolishspace--8eb7f9a9228c606518bab8b1.md) | 82 | `declaration-track:8eb7f9a9228c606518bab8b1ec6cad0eab91259417b9322fc6d9380d02385378` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instance--27a1b183096695c2c7deeb02.md) | 86 | `declaration-track:27a1b183096695c2c7deeb02874f153b64ef9f1028f167c8f56cb1486f1afb38` |
| 4 | `def` | [polishSpaceMetric](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/polishspacemetric--1a2cc704744f2e317e09b551.md) | 93 | `declaration-track:1a2cc704744f2e317e09b551d7c82268ca83b5a35319e93aff916bf5aa0ecc60` |
| 5 | `theorem` | [complete_polishSpaceMetric](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/complete-polishspacemetric--eb95367c08bff78000c018e8.md) | 97 | `result-track:eb95367c08bff78000c018e8008d23827f748b2d7b51bd096f1edf80caf91051` |
| 6 | `def` | [upgradePolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/upgradepolishspace--02380b5e4275088a1d832131.md) | 105 | `declaration-track:02380b5e4275088a1d83213170e42728b2308e226d718a7a1cbb63541ef189b5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instance--b02b9b8cfd1cb58e5032d31f.md) | 113 | `declaration-track:b02b9b8cfd1cb58e5032d31f128aa1ac4145995a4882d611d4029cd577dcb8f2` |
| 8 | `instance` | [pi_countable](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/pi-countable--afcb63725930a5b0c97ecf1a.md) | 120 | `declaration-track:afcb63725930a5b0c97ecf1a6b9ba1b2e5368a85d7fb1ba1fac0383e2a04fcdf` |
| 9 | `instance` | [nat_fun](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/nat-fun--6bec5b6d050d145bc75b964d.md) | 130 | `declaration-track:6bec5b6d050d145bc75b964d0bd7749015992fb24f9389555751a92eec13c4b6` |
| 10 | `instance` | [sigma](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/sigma--cc14d92abaf8c5ad13beea00.md) | 134 | `declaration-track:cc14d92abaf8c5ad13beea00b3d02bca932733cefcb3d769937065938a85007f` |
| 11 | `instance` | [sum](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/sum--a9367293e7569e68a5137b29.md) | 143 | `declaration-track:a9367293e7569e68a5137b2915b0c782c961642f58fd18e35481098af92c1a77` |
| 12 | `theorem` | [exists_nat_nat_continuous_surjective](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/exists-nat-nat-continuous-surjective--403db554e6092e2651844393.md) | 152 | `result-track:403db554e6092e26518443930ea431a58e55950ca9ab88c225ee23ba519942bb` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.ClosedEmbedding.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--787c0c69d581439fe323536c.md) | 159 | `result-track:787c0c69d581439fe323536cea7a1de771fd2c7a87bce43577e1fdf78994cec0` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.Equiv.polishSpace_induced](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--6d85500200807e1e2b4cd219.md) | 171 | `result-track:6d85500200807e1e2b4cd21989bd4c9c3de1ef2e0d04533240ff5114d477df80` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsClosed.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--b46ebb206ccf5b7f4857e21a.md) | 178 | `result-track:b46ebb206ccf5b7f4857e21ae8ed0cbf50dba617963f434749abd23434558562` |
| 16 | `def` | [AuxCopy](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/auxcopy--20155bc4bf41b7cd88e6fac9.md) | 186 | `declaration-track:20155bc4bf41b7cd88e6fac996212425a914855854d5a14708e0c135ee48639d` |
| 17 | `theorem` | [exists_polishSpace_forall_le](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/exists-polishspace-forall-le--b653a3ae6dd708a93c95a494.md) | 193 | `result-track:b653a3ae6dd708a93c95a4945a33028585db8333d5358047c4127f5aed9436a6` |
| 18 | `def` | [CompleteCopy](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/completecopy--b739cca526c750997050847b.md) | 264 | `declaration-track:b739cca526c750997050847b5f21e6ff70d49e185dadff3e3e8e67b9ee597c2e` |
| 19 | `instance` | [instDist](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instdist--d02a7610384e929bc5b96e53.md) | 273 | `declaration-track:d02a7610384e929bc5b96e538d06d58edf7ee11cc626881e0129ef91c8f4f4f7` |
| 20 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/dist-eq--9b67bbb1a1c16cef8a9d75bd.md) | 277 | `result-track:9b67bbb1a1c16cef8a9d75bdd24d357f777bc8df1c2b724c12f9f16ffea878e9` |
| 21 | `theorem` | [dist_val_le_dist](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/dist-val-le-dist--75f2b04b7b318f598266a22b.md) | 282 | `result-track:75f2b04b7b318f598266a22be271c7cf3c2b11b18c162e460e747615b30299bd` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instance--8fba847296af4f9b4e0ae0f5.md) | 286 | `declaration-track:8fba847296af4f9b4e0ae0f526d101c51144891a501ac9aa1c0061c3cc644c9b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instance--37cb0129ed6dc3f6222dd8e7.md) | 287 | `declaration-track:37cb0129ed6dc3f6222dd8e7e4a0fc906aa86de437d19ff876a930373e6a593f` |
| 24 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instmetricspace--9c09edda321e9ed80dad149b.md) | 297 | `declaration-track:9c09edda321e9ed80dad149b9fd80a368f35347c1ae670d0a06f749c5009c81d` |
| 25 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/instcompletespace--7f5e69dcb4cd9d179a379a08.md) | 327 | `declaration-track:7f5e69dcb4cd9d179a379a08756b834638e00165216d570f742b870578808c38` |
| 26 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsOpen.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--798893fba5c6d6d18154e920.md) | 359 | `result-track:798893fba5c6d6d18154e9201b9e5efdc6f0a52908210fd6cd0504da3ac4e60b` |
| 27 | `def` | [IsClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/isclopenable--199fa37be25a718219fad6e7.md) | 378 | `declaration-track:199fa37be25a718219fad6e73418cb8584d9a6e3ecdebd7c4dccce6a12324f5b` |
| 28 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsClosed.isClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--851d10facbe7867d7ed74325.md) | 384 | `result-track:851d10facbe7867d7ed74325e3f5454e608d71b6cf70eae6246674386dd99e4f` |
| 29 | `theorem` | [IsClopenable.compl](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/isclopenable-compl--750a5ab1f2228fac99986727.md) | 405 | `result-track:750a5ab1f2228fac99986727767aa515a810c14ebf237a2b709f4f60401be25d` |
| 30 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsOpen.isClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/root-grwtsk-topology-metrictopology-polishspace-variantb6be8ff00fced6597--0fff72318d4346ae4e5d9d02.md) | 411 | `result-track:0fff72318d4346ae4e5d9d02bc8a8c0a69d8f50a9415c0b915d7d684ca812557` |
| 31 | `theorem` | [IsClopenable.iUnion](../../../../../mathematics/Topology/MetricTopology/Polish/Variant870db739b609043518ecce6bd7a7212ab7bda49bdda81f0396da95c2e5f38558.lean/declarations/isclopenable-iunion--c8233156a0ea92f49bad4c13.md) | 417 | `result-track:c8233156a0ea92f49bad4c135a9f444b254200201ab0c8a086f7ca15e6504560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
