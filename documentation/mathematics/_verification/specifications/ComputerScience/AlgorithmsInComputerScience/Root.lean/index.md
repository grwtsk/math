# Verification target: Root

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379ece2ddc4b603b8a409b22d87129e0dfbb310d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379ece2ddc4b603b8a409b22d87129e0dfbb310d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Formal.Algorithm` — import line 1; external provider; requires a separately pinned dependency.
- `Formal.Kernel` — import line 2; external provider; requires a separately pinned dependency.
- `Formal.Surface` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [controlledRoot](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/declarations/controlledroot.md) | 15 | `declaration-track:b8129379fd5ec5a419c48bd58f9d60972ef9c5638f8b4430c03c3f21f73a6871` |
| 2 | `def` | [importsCorpus](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/declarations/importscorpus.md) | 17 | `declaration-track:a87af6ba4cb5a4a30f0a664147f350ca2c62955e82afbd3f606effff73a1f16b` |
| 3 | `def` | [bandedRoots](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/declarations/bandedroots.md) | 19 | `declaration-track:b3b460882ae87d0ddbab3b3dbec2b9f4d738d63022285d8b50ee8db1a62c5367` |
| 4 | `theorem` | [importsCorpus_false](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/declarations/importscorpus-false.md) | 32 | `result-track:6c7f12317a754912fca9e3ce18ae9d4bddf6c1c38229b96cb55b0d1207c059b8` |
| 5 | `theorem` | [bandedRoots_count](../../../../../ComputerScience/AlgorithmsInComputerScience/Root.lean/declarations/bandedroots-count.md) | 35 | `result-track:4d645c2e407d050e82c913f2d04d369a9c85db5c59eee2fe73aaa66eeb73f806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=171c46ce75a2974d6b121204acc8173b64238d7f9aae4e4312605c345b774de7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Root/Variant70c3a32a1497d3250a06c0d643faef19c75167ac3bad814cb9496249aaddfcb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
