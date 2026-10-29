# Verification target: Quiver Schreier Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d77ec080ee4baf351e4d1b098aef3868e6903c22",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d77ec080ee4baf351e4d1b098aef3868e6903c22`.

Source path: `GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SchreierGraph](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/schreiergraph.md) | 76 | `declaration-track:a6248cfb2452e4b961a7ae907a2205a8e18e68626862325ba3aa987b4b1df4c2` |
| 2 | `def` | [equiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/equiv.md) | 90 | `declaration-track:dc896759a39eaeacfec83db55908a7784b615e75db47b11cdfb8414151f1e961` |
| 3 | `instance` | [schreierGraphSMul](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/schreiergraphsmul.md) | 97 | `declaration-track:9617cd6a3ec187c41fa79143ea3b7f8fbb85d887f0e1e76913528a461afee5e3` |
| 4 | `instance` | [schreierGraphQuiver](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/schreiergraphquiver.md) | 102 | `declaration-track:bd7f1d4ee66c0c15530ae039f776f442b14a295d82e08d42c80b47c2144fb7e7` |
| 5 | `def` | [labelling](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/labelling.md) | 108 | `declaration-track:82c04bcfd85da46125c52a22e341b083d9fce65d7002a1b28bd1a6a8f137939d` |
| 6 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/instance.md) | 119 | `declaration-track:3eb390ef226fc50bff7440054ee37089a26483319232ed5c7a1d4dd8357dff5c` |
| 7 | `def` | [labellingStarEquiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/labellingstarequiv.md) | 141 | `declaration-track:2b75ee6706dce95e10ebcfdf05f01549e9f7f67ed07da4e87576b228cee6a737` |
| 8 | `def` | [labellingCostarEquiv](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/labellingcostarequiv.md) | 150 | `declaration-track:c9bd811dc53d9fb2452e16ba1d2663bfb7a209b3e08c0264c19249d40b740e9f` |
| 9 | `theorem` | [labelling_isCovering](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/labelling-iscovering.md) | 162 | `result-track:56fff0f5c1705e521f95f07f829eff0f1bcf782364f2f4e9e4877aaabb7a8522` |
| 10 | `lemma` | [map_smul_of_comp_labelling_eq](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/map-smul-of-comp-labelling-eq.md) | 169 | `result-track:c0820b8957a472765100d61e2501ccf03ce816e5d88e8423cb90bec64787c49c` |
| 11 | `def` | [evalWord](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword.md) | 206 | `declaration-track:8c42791ca62244ddd3e6507831f18890c355d92e4e0d6dbdb872d5cd5e403058` |
| 12 | `theorem` | [evalWord_nil](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword-nil.md) | 209 | `result-track:30e5cf3cc81da2cf662fc23e7b5c67287bb3577621d0deea64f95d4d6c08af88` |
| 13 | `theorem` | [evalWord_cons_true](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword-cons-true.md) | 212 | `result-track:1936ce3d5aac77695d3fdc4bb461bf0a7eb2b2a21115a6257643f6afc1e9dcdc` |
| 14 | `theorem` | [evalWord_cons_false](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword-cons-false.md) | 216 | `result-track:a2ac91052a5697188dbaee917b21107e9a47ec1df3faa5f8717d8fc0b4e179e6` |
| 15 | `theorem` | [evalWord_append](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword-append.md) | 219 | `result-track:fbd6d6c1d3efe44c3e9f93cf2c25239302492a3aefbd79984b57f53655a2423c` |
| 16 | `theorem` | [evalWord_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/evalword-mem-closure.md) | 224 | `result-track:51cdb0154827a8004fdd7a805a9c35eab64d57ecc19bdddd7b54c147ee8a5018` |
| 17 | `theorem` | [exists_evalWord_of_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/exists-evalword-of-mem-closure.md) | 230 | `result-track:cf141315f6214f1dc45552c1eda183ad8c9dd9261b6bd23f943b332b1c7259a0` |
| 18 | `def` | [pathFromWord](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/pathfromword.md) | 253 | `declaration-track:6475a23b74c8ddac54a0be9d26a5cd53bc59e24ce3ca02f5f1eae628b2199b69` |
| 19 | `theorem` | [reachable_of_mem_closure](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/reachable-of-mem-closure.md) | 267 | `result-track:dac98e9cfe82deb4a87a7f77772006b7d479ef89fabdcc686806bcb473fb993e` |
| 20 | `theorem` | [exists_mem_closure_of_path](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/exists-mem-closure-of-path.md) | 275 | `result-track:2644f759ba95a1a5da3cd8aa9d034250f2d45a4aa1c6298e3b291af6255e261f` |
| 21 | `theorem` | [reachable_iff](../../../../../Combinatorics/GraphTheory/QuiverSchreierNamespacedPublic.lean/declarations/reachable-iff.md) | 295 | `result-track:8d8ec34ed2c36632d488154127333d73a930136ece5f036610dc468d08160a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20dc4710cdda2dcfccdf9b8d9f4db9b96090e880b4393fa049719bc462cbdba4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Schreier/Variant7cb3d3c84a2bc18a24a99951efca7e1b167dc3de65c9b5a6540deba992dfc8be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
