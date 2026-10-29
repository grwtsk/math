# Verification target: Witt Complex Witt Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38247ba1205328b82e3c8d56174fe7cd3245cdb1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38247ba1205328b82e3c8d56174fe7cd3245cdb1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittComplex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/wittcomplex.md) | 24 | `declaration-track:e4eb60c35c53dc0d73423f627011d72a11136b6e8d63aaaa9405dab5e9e2f249` |
| 2 | `structure` | [WittElement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/wittelement.md) | 36 | `declaration-track:5fa3f30cf145bf1140ecf2bf49472c97b077e6bd4793e1171a24d421d19bbc70` |
| 3 | `def` | [WittElement.IsZero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/wittelement-iszero.md) | 42 | `declaration-track:bd28769445c1ea8bd1f4eb8e114f6694e054a67c8225b3479838b5a8f4db6308` |
| 4 | `def` | [WittElement.Nonzero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/wittelement-nonzero.md) | 47 | `declaration-track:c3ad25f8630262d70bbc3014cdfb0cb0be933ad3bcf6d19f7efaf9accb3c1a5d` |
| 5 | `theorem` | [witt_complex_is_complex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/witt-complex-is-complex.md) | 52 | `result-track:c5f1ea307daa17612d88bf8765bef0333492b47987c1cd62f8c2115f03760379` |
| 6 | `theorem` | [witt_element_has_degree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/WittComplexWittComplex.lean/declarations/witt-element-has-degree.md) | 57 | `result-track:c80e8939e3b8e9d25b1440bea72feb1b90b43a85d6823fbbb34598957585104b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=884c0dda2abd6eaddf1ef72458c6889d61afd821edd3f9bd30f610f9e0d45ac8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittComplex/Variant935de0ccdfa48c19ae890169af1f71b4683f22b1a20cc85180c9f5a2b16740de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
