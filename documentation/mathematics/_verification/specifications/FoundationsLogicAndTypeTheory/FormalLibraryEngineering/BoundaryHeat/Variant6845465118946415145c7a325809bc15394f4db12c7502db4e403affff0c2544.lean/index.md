# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryHeat.Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d58b2dab5f8d17924bc7617ca4583517ebc82d6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d58b2dab5f8d17924bc7617ca4583517ebc82d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Memory` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundaryHeatWeights](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/declarations/boundaryheatweights--43169da75fe861916fcfb074.md) | 7 | `declaration-track:43169da75fe861916fcfb0744c8f0aacc8d39bd1a6427f0a02cb75b554cf9d85` |
| 2 | `def` | [defaultBoundaryHeatWeights](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/declarations/defaultboundaryheatweights--ece8af30a91945efbfc64804.md) | 19 | `declaration-track:ece8af30a91945efbfc648042194eac68de436a26daea1e10844443d463578ad` |
| 3 | `structure` | [BoundaryHeatState](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/declarations/boundaryheatstate--daf1e28ed180affd3fb290f6.md) | 30 | `declaration-track:daf1e28ed180affd3fb290f6ad1ebb8b3b3705a0d23718c3da176137f8b11d48` |
| 4 | `def` | [highBoundaryHeat](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/declarations/highboundaryheat--580a0e1bb848df731553bc32.md) | 37 | `declaration-track:580a0e1bb848df731553bc321a00b357fd3d185b707fbf162857590ecdca7f42` |
| 5 | `theorem` | [default_boundary_weight_positive](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean/declarations/default-boundary-weight-positive--23e8016999ef83a3a8662e4f.md) | 40 | `result-track:23e8016999ef83a3a8662e4f06910ce9f1c41d7cebfb1c9449125ec53f64c6d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=331a5d446847a8e8c4a628e2c13b2c6ce13025d91261bf0406d1c0feebb360b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryHeat/Variant6845465118946415145c7a325809bc15394f4db12c7502db4e403affff0c2544.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
