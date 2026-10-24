# Verification target: GRWTSK.Topology.GeneralTopology.ShrinkingLemma.Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "129df1734abc9d199881591b1665f29201c11fd2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `129df1734abc9d199881591b1665f29201c11fd2`.

Source path: `GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialRefinement](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/partialrefinement--24f002881a8fec9384dac100.md) | 63 | `declaration-track:24f002881a8fec9384dac100b78f2bbe2747c4b0bbfb9964092dd3feac88696b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/instance--ea78e4d591022f768a3cc616.md) | 82 | `declaration-track:ea78e4d591022f768a3cc61634b3f253497ddc6906009ee891409b106b043fa1` |
| 3 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/subset--d29d86cf14766e1bcd48e357.md) | 89 | `result-track:d29d86cf14766e1bcd48e357d8dab1d95bd10d699d0247abde3ecbbe683ba51a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/instance--ae7c215fa3f967bcea2444b1.md) | 93 | `declaration-track:ae7c215fa3f967bcea2444b137e76ffc8711e057de1e046e85396167ff03841c` |
| 5 | `theorem` | [apply_eq_of_chain](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/apply-eq-of-chain--21e1ccc10ee0052d641823af.md) | 108 | `result-track:21e1ccc10ee0052d641823affc887b3b95f7bba95e5856dda184347fb5e5aaa4` |
| 6 | `def` | [chainSupCarrier](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/chainsupcarrier--52ac5f2aadf887ef3b72af6e.md) | 116 | `declaration-track:52ac5f2aadf887ef3b72af6e4452868d8d69f71fc21a56ec8cdbaacb6451cd84` |
| 7 | `def` | [find](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/find--211f8d7a095fe9f7c42d620b.md) | 122 | `declaration-track:211f8d7a095fe9f7c42d620be38a7730cabd14b044d08d0ab2711570622dc021` |
| 8 | `theorem` | [find_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/find-mem--73fbece4e6d047c7b303d31f.md) | 126 | `result-track:73fbece4e6d047c7b303d31f2b35f326838cb5d3816cc3dfda5f190507f56e19` |
| 9 | `theorem` | [mem_find_carrier_iff](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/mem-find-carrier-iff--dfe644f8c9f02886a22d3887.md) | 132 | `result-track:dfe644f8c9f02886a22d38874cf80b922ae8f20cca5faadc511eea79dcce43c5` |
| 10 | `theorem` | [find_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/find-apply-of-mem--5ded8641aeee3a59f418a865.md) | 143 | `result-track:5ded8641aeee3a59f418a8651dac922941e446ed6e19433fbc915c2c6f267884` |
| 11 | `def` | [chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/chainsup--2201df48b335984315e0dc55.md) | 150 | `declaration-track:2201df48b335984315e0dc55a154500ae64c0bbbc9be5dd6bbe3906e30a70c1a` |
| 12 | `theorem` | [le_chainSup](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/le-chainsup--49822ae79362dd5bf4459200.md) | 174 | `result-track:49822ae79362dd5bf445920034ce600b1987ccb9b4895299f8986c5402338415` |
| 13 | `theorem` | [exists_gt](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/exists-gt--980ca742ebe919fdc802dbc5.md) | 182 | `result-track:980ca742ebe919fdc802dbc5ab2236bc8daa73ddcc2e3272f4d75d484105e148` |
| 14 | `theorem` | [exists_subset_iUnion_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/exists-subset-iunion-closure-subset--7032c009bd76b1f8c5f3ace8.md) | 226 | `result-track:7032c009bd76b1f8c5f3ace89b8da56780aa68b5b4117370c59e601161dcb60f` |
| 15 | `theorem` | [exists_subset_iUnion_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/exists-subset-iunion-closed-subset--0f71dedf43aa6764b81c3b7d.md) | 245 | `result-track:0f71dedf43aa6764b81c3b7d09d42b8260e5a3791db6b87faad4cbca7fc0aaf2` |
| 16 | `theorem` | [exists_iUnion_eq_closure_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/exists-iunion-eq-closure-subset--68e63381dfe198d3bff2876a.md) | 256 | `result-track:68e63381dfe198d3bff2876ad20e1d25bbd109bdee8015f6ac8f878b3e8345a5` |
| 17 | `theorem` | [exists_iUnion_eq_closed_subset](../../../../../mathematics/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/declarations/exists-iunion-eq-closed-subset--5956c905ba781ed2697a39b0.md) | 266 | `result-track:5956c905ba781ed2697a39b0667580d4a7b7f9e4c8db475cc1c8f936dab792eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
