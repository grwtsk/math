# Verification target: GRWTSK.Topology.GeneralTopology.ShrinkingLemma.Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2425239e28a40656dbbec1cea36e96cc3c6f0d6b`.

Source path: `GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialRefinement](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/partialrefinement--6164c7091a84fad73cc288a3.md) | 55 | `declaration-track:6164c7091a84fad73cc288a3499d1ac8f4de2fe52d813c6ad6e417f82127ea97` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/instance--b44e66806730921d1f9599f9.md) | 74 | `declaration-track:b44e66806730921d1f9599f953c7157023e39ed75d2620a984f7d77ab51af76a` |
| 3 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/subset--306841fa8cc745a4bca5a380.md) | 81 | `result-track:306841fa8cc745a4bca5a38012810d69744c701953a320f4b9f1281923d2e0fb` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/instance--f64d05a65ee877d65ab12f6c.md) | 85 | `declaration-track:f64d05a65ee877d65ab12f6c6068ff2683184f92fe8f59f29d981e6db05e95d6` |
| 5 | `theorem` | [apply_eq_of_chain](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/apply-eq-of-chain--35272dc748c1e7330ce9ed0d.md) | 100 | `result-track:35272dc748c1e7330ce9ed0dcf94cf0ceb1b5cad10b3226e58e2f37e6df494d0` |
| 6 | `def` | [chainSupCarrier](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/chainsupcarrier--6bca9683d77249cda55685af.md) | 108 | `declaration-track:6bca9683d77249cda55685af60fea219577c1b8258bc5856e56c858a5752dfc2` |
| 7 | `def` | [find](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/find--54b785111cb5ec633e31b1f9.md) | 114 | `declaration-track:54b785111cb5ec633e31b1f9f945a8172c117206a8c4d31b52fd88ce55dd4b84` |
| 8 | `theorem` | [find_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/find-mem--f4cf0a4f5743ee01fe94bc98.md) | 118 | `result-track:f4cf0a4f5743ee01fe94bc9848484e5af922cf0d084bd6256c0103dd0b92c362` |
| 9 | `theorem` | [mem_find_carrier_iff](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/mem-find-carrier-iff--77b3a8560c45cd5d6fa1505a.md) | 124 | `result-track:77b3a8560c45cd5d6fa1505a74004e35fb1d2de7e28fd2e38829b1ec0d4d56d6` |
| 10 | `theorem` | [find_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/find-apply-of-mem--1ccb7f8169c407b294444a36.md) | 135 | `result-track:1ccb7f8169c407b294444a36126fcbb7e82b6120af44343b4c49966f807a19f1` |
| 11 | `def` | [chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/chainsup--c9ffa8f4cbc08301686f4a39.md) | 142 | `declaration-track:c9ffa8f4cbc08301686f4a390eba17ef17d6605bc63f24210e009fc8f3614f04` |
| 12 | `theorem` | [le_chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/le-chainsup--499c6be08c2976d2947d5983.md) | 166 | `result-track:499c6be08c2976d2947d5983234800f4168b37585433f22cbd9fb6182b8f24e6` |
| 13 | `theorem` | [exists_gt](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/exists-gt--0da1b9a6aae70896f7528843.md) | 174 | `result-track:0da1b9a6aae70896f752884347b31af02ad7850de314c8c1203660a3d5e3c4d4` |
| 14 | `theorem` | [exists_subset_iUnion_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/exists-subset-iunion-closure-subset--e264a40b1e1161bcc19cf80a.md) | 218 | `result-track:e264a40b1e1161bcc19cf80a399f48cdcb644c81692b54543ab6bf025d4db9d5` |
| 15 | `theorem` | [exists_subset_iUnion_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/exists-subset-iunion-closed-subset--7520d51d50573b13d8148bac.md) | 237 | `result-track:7520d51d50573b13d8148bac62a35210b30579bc5ea3ec48a406f01131692494` |
| 16 | `theorem` | [exists_iUnion_eq_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/exists-iunion-eq-closure-subset--c91f14692c75d0352f75e89a.md) | 248 | `result-track:c91f14692c75d0352f75e89a2e029c002217524b07ad6adbfc5ef41fcf8964bd` |
| 17 | `theorem` | [exists_iUnion_eq_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/declarations/exists-iunion-eq-closed-subset--00777935d59fd9af3fdb8e82.md) | 258 | `result-track:00777935d59fd9af3fdb8e823290667e0ac4cf27d4c17db0f503eb6bde0aaf00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
