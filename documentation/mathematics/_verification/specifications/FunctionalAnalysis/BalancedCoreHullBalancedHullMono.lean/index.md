# Verification target: Balanced Core Hull Balanced Hull Mono

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1656f121b3ba0853f7d4105878780856fd64b3e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant5909fddbd4acb731a1f6ffb036dbece66d01a9e86e43331ba1d769d9d4436614.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1656f121b3ba0853f7d4105878780856fd64b3e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant5909fddbd4acb731a1f6ffb036dbece66d01a9e86e43331ba1d769d9d4436614.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BalancedCoreHull/Variant5909fddbd4acb731a1f6ffb036dbece66d01a9e86e43331ba1d769d9d4436614.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedCore](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore.md) | 55 | `declaration-track:1cb4834d46d39d6c600d7578f3127a6be7f0a66be4d378cc5cc0a851cb64302a` |
| 2 | `def` | [balancedCoreAux](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcoreaux.md) | 59 | `declaration-track:b061651e5a732768d41cb37f97a44cbb5244ec2db14c198bf2341fdc653af2da` |
| 3 | `def` | [balancedHull](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedhull.md) | 63 | `declaration-track:17ecb826fb75516e66f9aff2e4e05eb78d66ffb35c65329e9458dea0d34259a9` |
| 4 | `theorem` | [balancedCore_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-subset.md) | 68 | `result-track:505ccd37da85bff1a8bc99660c5015cf57fb473217c19ebe2e5b95f64d700d06` |
| 5 | `theorem` | [balancedCore_empty](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-empty.md) | 71 | `result-track:d422d86887ccefeb1c9694fc4689c5ed74c75a77dc698e0010ffb66e87943a7c` |
| 6 | `theorem` | [mem_balancedCore_iff](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/mem-balancedcore-iff.md) | 74 | `result-track:b969691974c40d293df4d192cd2275484feb5b84cd00ae010e6e24895f3ee328` |
| 7 | `theorem` | [smul_balancedCore_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/smul-balancedcore-subset.md) | 77 | `result-track:6f14c664abc069ef0cd99337bb9a976ea0a25520b24d833933d02fb4639dbc6a` |
| 8 | `theorem` | [balancedCore_balanced](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-balanced.md) | 84 | `result-track:90bb59c55554d3514ad8fd3e79477ac153829c7b0e85b8141b687483933e0a80` |
| 9 | `theorem` | [Balanced.subset_balancedCore_of_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balanced-subset-balancedcore-of-subset.md) | 89 | `result-track:81347c99ea27219a74c8650e5c0134ca3c0f7dac3529d825e5343e12d57254d8` |
| 10 | `lemma` | [Balanced.balancedCore_eq](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balanced-balancedcore-eq.md) | 93 | `result-track:cf333723eca2138c7893e899e177d34a70e7323a319d6a09c576c03477cd70e6` |
| 11 | `theorem` | [mem_balancedCoreAux_iff](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/mem-balancedcoreaux-iff.md) | 96 | `result-track:00c6736d524a11690c405f57ef390cb73774329585334da3d0ed3911cbf8b886` |
| 12 | `theorem` | [mem_balancedHull_iff](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/mem-balancedhull-iff.md) | 99 | `result-track:9855e5a0a8e8fdc1edec31fb39ab1f4c25709fb6daab4bea919ea85c6d99e0f1` |
| 13 | `theorem` | [Balanced.balancedHull_subset_of_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balanced-balancedhull-subset-of-subset.md) | 104 | `result-track:e171edec99b110d482d6721faead28e7a24f10b19ecce4843cc4b14ef0961e5b` |
| 14 | `theorem` | [balancedHull_mono](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedhull-mono.md) | 111 | `result-track:fef205b9791aa09668c6c5b494986060ef6dede06cadeeca38509c6d1c40df12` |
| 15 | `theorem` | [balancedCore_zero_mem](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-zero-mem.md) | 124 | `result-track:17246912f12336e4f4ed1ac92237aa300711714201ee17d67d0213e083ecb070` |
| 16 | `theorem` | [balancedCore_nonempty_iff](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-nonempty-iff.md) | 127 | `result-track:0a4ab79a7ff1d5ee169e75ae9734218f3a021f461ece3abc82c01145a23c3dbf` |
| 17 | `lemma` | [Balanced.zero_mem](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balanced-zero-mem.md) | 133 | `result-track:35846d78acb601aa73bf061d3d3bd8e7d2ba2fb6e08954e750d7318fc767eb2c` |
| 18 | `theorem` | [subset_balancedHull](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/subset-balancedhull.md) | 138 | `result-track:bd3cf227cccbc6db91a34b42ea005528378bceec9560a3b564a452ed3d2fcecb` |
| 19 | `theorem` | [balancedHull.balanced](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedhull-balanced.md) | 141 | `result-track:18368d9254867fcdcd8a1e566aadebb71880e5b79f07da1fe0538658684735be` |
| 20 | `theorem` | [balancedHull_add_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedhull-add-subset.md) | 149 | `result-track:e368d77661598cab55b76505d960659673295fcec75aa8b9ac727a1286c6a1f9` |
| 21 | `theorem` | [balancedCoreAux_empty](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcoreaux-empty.md) | 163 | `result-track:c78b7f5c4b1f1e05944e76571d7472ed05998dd8db29c9e5315256fe1efa0368` |
| 22 | `theorem` | [balancedCoreAux_subset](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcoreaux-subset.md) | 167 | `result-track:e17317210810d8ff28f06e04f413e20cf2099ee9cb9f97497a48ae5da822e154` |
| 23 | `theorem` | [balancedCoreAux_balanced](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcoreaux-balanced.md) | 170 | `result-track:50fb8fddf48ad1656d9aaeab0057b512c187b296c83d5e9159ab1f9bd17431a2` |
| 24 | `theorem` | [balancedCoreAux_maximal](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcoreaux-maximal.md) | 183 | `result-track:e7b4aa4141c80d629730a3f4d63ed143da80afc050ed03a99ab8e69f7b596a2e` |
| 25 | `theorem` | [balancedCore_subset_balancedCoreAux](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-subset-balancedcoreaux.md) | 190 | `result-track:9f3582e7a0f6fd0cd59aa74db60c9bc8f7abecd59a2db84e707190464fdafd11` |
| 26 | `theorem` | [balancedCore_eq_iInter](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-eq-iinter.md) | 193 | `result-track:309a7c9c5a6e3b5b230f46e002638d149bbd18ee1e85db0cfcef27181af80a8b` |
| 27 | `theorem` | [subset_balancedCore](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/subset-balancedcore.md) | 199 | `result-track:2a97ad98295795f840801b6d997169981be66db28f91f831028240ae229bc54d` |
| 28 | `theorem` | [IsClosed.balancedCore](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/isclosed-balancedcore.md) | 220 | `result-track:a72fba6d0abea43953e9fb7aed6ed4e44c5e2117041d3fe449f2f8c3384d0b18` |
| 29 | `theorem` | [balancedCore_mem_nhds_zero](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/balancedcore-mem-nhds-zero.md) | 237 | `result-track:414d1363f391b7a03e5e43abd6418dc305197e580a7772b5d9f5ec7dce0ac8b6` |
| 30 | `theorem` | [nhds_basis_balanced](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/nhds-basis-balanced.md) | 259 | `result-track:aabdce25e5afd248e263e04e109f996cd0abbdc43a59c9f7d3716ce5ede864f9` |
| 31 | `theorem` | [nhds_basis_closed_balanced](../../../../FunctionalAnalysis/BalancedCoreHullBalancedHullMono.lean/declarations/nhds-basis-closed-balanced.md) | 265 | `result-track:2aeefb3162030a897495a89a4ea1bbcceedaef2e2ed05fba92f24ef7255e5699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2e94935c6a1c2cecf7cb2ec089988965122f1ed2c80f36eef067255cdba16f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variant5909fddbd4acb731a1f6ffb036dbece66d01a9e86e43331ba1d769d9d4436614.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BalancedCoreHull/Variant5909fddbd4acb731a1f6ffb036dbece66d01a9e86e43331ba1d769d9d4436614.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
