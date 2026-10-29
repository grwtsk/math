# Verification target: Prisms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c65f094c4a5720a9ba0dfe815f1c005433aaf02",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prisms/Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c65f094c4a5720a9ba0dfe815f1c005433aaf02`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prisms/Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prisms/Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Geometry.Kakeya.Tubes` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RectangularPrism](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/declarations/rectangularprism.md) | 19 | `declaration-track:e79505b6f2d794fe14ea36e17ff094b7976ad57df36479df1f6f9d2e3273ee74` |
| 2 | `structure` | [RectangularPrismArrangement](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/declarations/rectangularprismarrangement.md) | 31 | `declaration-track:9920a0aa4e380ab689bb94d41c7f7d969957446d6ff273087c2f950413a54f51` |
| 3 | `def` | [RectangularPrismArrangement.usableForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/declarations/rectangularprismarrangement-usableformajorproof.md) | 40 | `declaration-track:50cf120d9e0a031a94db8f966ba64404c995c02a5f38e9d0aa57b5158aa61844` |
| 4 | `theorem` | [RectangularPrismArrangement.usableForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Prisms.lean/declarations/rectangularprismarrangement-usableformajorproof-of-fields.md) | 46 | `result-track:d6c82ab59eef5e7825ec53db988c707daf2811661847b5a257689e5ff3d10b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6219fc2819e2313281e7f035b6c47c4bd88bb5fc7e650f7b2ad56041c190aff7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prisms/Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prisms/Variantd9b100e169533e76fbac06a47962aef4af9e23055d6c8f6a2bd189c1c95af7a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
