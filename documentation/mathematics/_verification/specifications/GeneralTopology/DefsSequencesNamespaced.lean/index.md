# Verification target: Defs Sequences Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0138dac9e34bd5bb8ac85dbbe2fdb85c06654892",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant1cf7853ce06601579bddb371de949b17a6605e3743b583cfa43423f4c54d9c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DefsSequencesNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DefsSequencesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0138dac9e34bd5bb8ac85dbbe2fdb85c06654892`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variant1cf7853ce06601579bddb371de949b17a6605e3743b583cfa43423f4c54d9c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variant1cf7853ce06601579bddb371de949b17a6605e3743b583cfa43423f4c54d9c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Filter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/seqclosure.md) | 59 | `declaration-track:70939a1d1c89bfe94f2cdab3bc520737f8c8cae606bd7b75f56f43c41aecffa9` |
| 2 | `def` | [IsSeqClosed](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/isseqclosed.md) | 65 | `declaration-track:b55d211213e662e45f0519563afeaa7043088a3064ad80c72236503cc32b26c0` |
| 3 | `def` | [SeqContinuous](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/seqcontinuous.md) | 70 | `declaration-track:1aab702950995cc0c04f7d71f8a4d4e8d2520707944a9fe0f95032d236d802e3` |
| 4 | `def` | [IsSeqCompact](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/isseqcompact.md) | 75 | `declaration-track:237f5d8c62cfc73356dae5b19f0f94a0c814e171c0e242e82522145fb0e9e2b0` |
| 5 | `class` | [SeqCompactSpace](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/seqcompactspace.md) | 83 | `declaration-track:8a28508fde6e487ed5eb29e0631ef5204674e45fdd2cd79430a18c91d2b7b5bc` |
| 6 | `class` | [FrechetUrysohnSpace](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/frecheturysohnspace.md) | 91 | `declaration-track:538ea07c3de8d090f01d80f53cf4ffa246412378d9aaf517d0049c07aa2ed47a` |
| 7 | `class` | [SequentialSpace](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/sequentialspace.md) | 96 | `declaration-track:b85a039337fc8d8d8c95f469f19cefe9d147bb3bdfdd1abad145c8aa2f97e8d1` |
| 8 | `theorem` | [IsSeqClosed.isClosed](../../../../GeneralTopology/DefsSequencesNamespaced.lean/declarations/isseqclosed-isclosed.md) | 102 | `result-track:250f9bc686670a6007e563bf186750dc2c992cc97383e1e43cc8459b311a0f82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f25d8cc3fafb18c14dfd56825bf37a8823d0eaddf6c63df73b7a9d807e67e8e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sequences/Variant1cf7853ce06601579bddb371de949b17a6605e3743b583cfa43423f4c54d9c7e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Sequences/Variant1cf7853ce06601579bddb371de949b17a6605e3743b583cfa43423f4c54d9c7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
