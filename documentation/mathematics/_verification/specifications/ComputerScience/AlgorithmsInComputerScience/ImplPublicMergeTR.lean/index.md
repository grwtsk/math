# Verification target: Impl Public Merge TR

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f020b2f2e5e4ec87545a57c706d808407c6dfa08",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f020b2f2e5e4ec87545a57c706d808407c6dfa08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mergeTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergetr.md) | 51 | `declaration-track:cd6089e1c6d595162ac07bbfe101c941a8b8085d13a047a68bff0e71531402fa` |
| 2 | `theorem` | [mergeTR_go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergetr-go-eq.md) | 62 | `result-track:4af9c40ac6874f7453a12f3ae602988b5e3dc0874a962eefab42f32b3bcca8ca` |
| 3 | `theorem` | [merge_eq_mergeTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/merge-eq-mergetr.md) | 72 | `result-track:4b93e5184706da38d89957135ff51960f8516e2394fa141b701962383e5e6e09` |
| 4 | `def` | [splitRevAt](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevat.md) | 83 | `declaration-track:765ad24ef38487fabcd64392acaa7505fe25d531d113013156997cd20792e7ff` |
| 5 | `theorem` | [splitRevAt_go](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevat-go.md) | 89 | `result-track:9b0a607f9480060728cc97c703a6ff76f6d4fe9efff8bc3ba970ba3d4e94e3e9` |
| 6 | `theorem` | [splitRevAt_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevat-eq.md) | 100 | `result-track:dadf8cb2b0403eeb6e21485c59f06bc19a7a756151f420f9a3a22bb043792c13` |
| 7 | `def` | [mergeSortTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesorttr-source-edition-2.md) | 110 | `declaration-track:670f0f3e3f6fe2cdffb4f6aa29b862545c25ed6864db6d241420b8fb3b4a9126` |
| 8 | `def` | [splitRevInTwo](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo.md) | 123 | `declaration-track:705f853fdfddd8b90d141ce6adc6671b2e28d60bba7eeb0883e13f234267ec93` |
| 9 | `def` | [splitRevInTwo'](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo-source-edition-2.md) | 132 | `declaration-track:d49a01c8d52549dad5713ac66edf46f0923ceb657dbeb33c8e7426e22a25cd66` |
| 10 | `def` | [mergeSortTR₂](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesorttr.md) | 143 | `declaration-track:1b4de6b3052dbd506d99fc0d0f8f782a1c4bda54e1f93ad8a659a1190931f242` |
| 11 | `theorem` | [splitRevInTwo'_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo-fst.md) | 159 | `result-track:3259519e9f86b5d1b52bc9a802bb910b36551486e47d7f79a62cff8da5c9a9b2` |
| 12 | `theorem` | [splitRevInTwo'_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo-snd-source-edition-2.md) | 164 | `result-track:9b5b6abbc5cbc6c0022a31b76c195b85c81c7707b1eceeba0ac218ba5a3ff9a1` |
| 13 | `theorem` | [splitRevInTwo_fst](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo-fst-source-edition-2.md) | 170 | `result-track:8800bce308c2cfc6692d8dcdb7231f189f795ceb9ecaedfe6901499af3b09efd` |
| 14 | `theorem` | [splitRevInTwo_snd](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/splitrevintwo-snd.md) | 173 | `result-track:253070ff2be53ded141e5447d819be196327cc73965dc35e44f753a9895e543e` |
| 15 | `theorem` | [mergeSortTR_run_eq_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesorttr-run-eq-mergesort.md) | 177 | `result-track:d337a3642f56d46a7b4dcb5b6cd5f0ab31eab7c5161241c6c3c85ff3d4505f96` |
| 16 | `theorem` | [mergeSort_eq_mergeSortTR](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesort-eq-mergesorttr-source-edition-2.md) | 187 | `result-track:f27b26742f89fd0995763939f31177121002cb640479483c2e078f0d7f9609c1` |
| 17 | `theorem` | [mergeSortTR₂_run_eq_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesorttr-run-eq-mergesort-source-edition-2.md) | 193 | `result-track:d748c8c9da612a98bb1bf94a519c27cd7eeb50cf8f06a4e58f30fda755268454` |
| 18 | `theorem` | [mergeSortTR₂_run'_eq_mergeSort](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesorttr-run-eq-mergesort-source-edition-3.md) | 205 | `result-track:e20aeafb95d0bf2141b10fb6f5517f45445bac9a7b41b8add814c4c700fc889e` |
| 19 | `theorem` | [mergeSort_eq_mergeSortTR₂](../../../../../ComputerScience/AlgorithmsInComputerScience/ImplPublicMergeTR.lean/declarations/mergesort-eq-mergesorttr.md) | 240 | `result-track:c344093637941ce702127e5ef5e3f9ccf53b7b68cbc778f93be4ac19872f84e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d80b3407c853c8a50f12457667b01709cbc46be5494f310ff0cf6571b9eca8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variant6db1a2a95fa6db3bebcd4197749fe3b5d21e3f80323e18e9047525264bcd3923.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
