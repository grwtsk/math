# Verification target: Absorption Corpus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86bc54f03c1002e28e274322359364e7602890ab",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AbsorptionCorpus/Variant42744830ac6b1e1c67afd51a7cfad0ef70faabb5c8fc9f1af85d9d5af153ba13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86bc54f03c1002e28e274322359364e7602890ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AbsorptionCorpus/Variant42744830ac6b1e1c67afd51a7cfad0ef70faabb5c8fc9f1af85d9d5af153ba13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AbsorptionCorpus/Variant42744830ac6b1e1c67afd51a7cfad0ef70faabb5c8fc9f1af85d9d5af153ba13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Absorption` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Boolean.Corpus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [theoremLink](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/theoremlink.md) | 16 | `declaration-track:c9aacc51591246646091c302b6dbcd920066d9a42119f45d3673041579c62a17` |
| 2 | `def` | [joinAbsorption](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/joinabsorption.md) | 39 | `declaration-track:7d439867f83bb6cb49acc073bd6e3a43d249dcff2c007117671168521c2f37a9` |
| 3 | `def` | [meetAbsorption](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/meetabsorption.md) | 45 | `declaration-track:94f6de972ac893b143d4fbfba4f156e5c44206f4c0dfb36d43b4777afe13f767` |
| 4 | `def` | [joinLeftCommutative](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/joinleftcommutative.md) | 51 | `declaration-track:6ce711a1c53a863bdfba4bc51a55aa279a2f3a60acda33e57f586d898cbecacc` |
| 5 | `def` | [meetLeftCommutative](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/meetleftcommutative.md) | 57 | `declaration-track:9df468aa660200b237793af0cbc842af8febdcfc38d1d840098c41dd7de320d9` |
| 6 | `def` | [links](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/links.md) | 63 | `declaration-track:9bf16ef148d9c8a2823768275647483c435724c892d066969be5809637e32cdb` |
| 7 | `theorem` | [links_length](../../../../../ComputerScience/AlgorithmsInComputerScience/AbsorptionCorpus.lean/declarations/links-length.md) | 70 | `result-track:fb8b0a3f29ce21c8b6e49791a7d48a3fca87e930b43117d3a20b0c909a333c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b14be9866eeafd17ec6292bf91d75eae6fc8d0e4e1fb3fc42898b7603a6427d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AbsorptionCorpus/Variant42744830ac6b1e1c67afd51a7cfad0ef70faabb5c8fc9f1af85d9d5af153ba13.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AbsorptionCorpus/Variant42744830ac6b1e1c67afd51a7cfad0ef70faabb5c8fc9f1af85d9d5af153ba13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
