# Verification target: Ordered Stream

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8af56b7f22f87e6f313b52695f056418ad7da415",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OrderedStream.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OrderedStream.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8af56b7f22f87e6f313b52695f056418ad7da415`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.HomologyComplexitySorter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryLogicMatrixStream](../../../../../ComputerScience/AlgorithmsInComputerScience/OrderedStream.lean/declarations/binarylogicmatrixstream.md) | 7 | `declaration-track:5ae95e43c298cda26af497fc5756f311088ad826f2d7533a5472cb15ad86be05` |
| 2 | `structure` | [OrderedBinaryLogicMatrixStream](../../../../../ComputerScience/AlgorithmsInComputerScience/OrderedStream.lean/declarations/orderedbinarylogicmatrixstream.md) | 20 | `declaration-track:585f598a06d596ca2453eba7b6805425194a01394ccca036a53d44296a41aa29` |
| 3 | `theorem` | [orderedStream_boundary_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/OrderedStream.lean/declarations/orderedstream-boundary-visible.md) | 36 | `result-track:44c23843d60843ede014ed047d4fa98890bd818a7f35ca8bd9e604f8c4aa6b5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cc794abdfbd91fd63fd4b148714c93f681563481a0d6e9d323db06c3b2895d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedStream/Variantcdce30bdbc9adcc4de1a5ec0a2883703a907e7f118fd153bc4fbfe2aa29d14e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
