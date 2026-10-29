# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableBatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "739761d6517e420db87f1937280f32566c733075",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `739761d6517e420db87f1937280f32566c733075`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableBatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableUpdateReindex`](../../../../../Combinatorics/DirectedGraphPrefixTableUpdateReindex.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RootedState](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/rootedstate.md) | 33 | `declaration-track:691df46ffc55f5f617bc0baae821578b68ff1b76511d51594e5ef3fbcdc33983` |
| 2 | `def` | [step](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/step.md) | 38 | `declaration-track:05f2e48268228312b9c6310ba9bb46491b6680e28f099041068cbfc812070c04` |
| 3 | `def` | [runAt](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/runat.md) | 43 | `declaration-track:4c835002a5b978dbc827bc634ef1dac21628f47c4181961aab9ea326630d8034` |
| 4 | `def` | [run](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run.md) | 47 | `declaration-track:53110e88f44cc57289f86c87268cb4b7b2528190622248ec04c6bceffb93b846` |
| 5 | `theorem` | [run_root](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-root.md) | 51 | `result-track:0ab2b7da1bc2cf43c83eaaf37c4d4d3587e00d0775c28eaf5183cdd09beb710a` |
| 6 | `theorem` | [run_nil](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-nil.md) | 55 | `result-track:6f6cb1472facb963a0a151751d0ae28e25469172fcf6f2636a031a08ab2674d9` |
| 7 | `theorem` | [run_cons](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-cons.md) | 57 | `result-track:a09d6b5d312e6ab09dac1a629d6c683380a5c494451c531c347928f85cc37775` |
| 8 | `theorem` | [step_wellFormed](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/step-wellformed.md) | 61 | `result-track:6c616ddb0b53c3b5489c943a3874462098b7dae76e0393785beb9911fe6ecb96` |
| 9 | `theorem` | [runAt_wellFormed](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/runat-wellformed.md) | 68 | `result-track:1d2d7654b3953d4e597c9802848115a6b98db7684bd864f140b2724b3a4d60c8` |
| 10 | `theorem` | [run_wellFormed](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-wellformed.md) | 76 | `result-track:3c8e17d64a2ba32866e8d01fe99e27112be19341577b20696efd97fd56c3ec2c` |
| 11 | `theorem` | [decode_step](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/decode-step.md) | 80 | `result-track:e553e9ef55fe17fb13eeb307d9eef9aa39aa7ace774845f5df035cb9db03951f` |
| 12 | `theorem` | [decode_runAt](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/decode-runat.md) | 89 | `result-track:612d3b95fe93b2298a64732d1fe58a24cf6e22ecacd86b5e267a9abcff03caf6` |
| 13 | `theorem` | [decode_run](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/decode-run.md) | 104 | `result-track:89c7d27f1f11f91e4a5e84140b5736708fc897ac24e99b10250b98d00ea4eb91` |
| 14 | `theorem` | [step_prefixes](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/step-prefixes.md) | 110 | `result-track:dc99d5b380d67bdeeeb5492a7b8f3f12b0bf9403d8a9cb2e367c047266910e25` |
| 15 | `theorem` | [runAt_prefixes](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/runat-prefixes.md) | 120 | `result-track:b3c07bbc0dddd1e57b36d06c1ee9c6c9d58ce2781db7f2bf89a4f728fdbea276` |
| 16 | `theorem` | [run_prefixes](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-prefixes.md) | 132 | `result-track:d86b902de72df62c84bf487d93ca4f5c0d96596ef74a7f03bdaa2ec63c262d42` |
| 17 | `theorem` | [node_lookup_retained](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/node-lookup-retained.md) | 139 | `result-track:8580ae138ae90721cc49b167a6bf584c43b8fa1d986177423a7185da9067d3e2` |
| 18 | `def` | [transportRooted](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/transportrooted.md) | 158 | `declaration-track:409eabaf583270bbf592171385c62d9961abaa3d5dd6ff12ea67bc9ea143ec56` |
| 19 | `theorem` | [step_transport](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/step-transport.md) | 162 | `result-track:792f50f665b5d6af6d58a783309a5f5a15cd744b51fc8a124158261b3e0fe94a` |
| 20 | `theorem` | [runAt_transport](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/runat-transport.md) | 174 | `result-track:b63962d30baf4e8de92ce2d8e2079eec6197dad26d1c02132e09c5c2cacef1ce` |
| 21 | `theorem` | [run_transport](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/run-transport.md) | 185 | `result-track:196e30d33154365918bc6825bbd55f22ecb56a5bf24a7373a2cb92f40675ec05` |
| 22 | `theorem` | [decode_run_transport](../../../../../Combinatorics/GraphTheory/PrefixTableBatch.lean/declarations/decode-run-transport.md) | 193 | `result-track:aa5216df610650fc184323f20be2a71cb33f970e6ec99f56820f387078a5acfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36f162e7610a9734a95b595c368629733eb858c12a0d62728529bfad15f5e0b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/PrefixTableBatch.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableBatch.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
