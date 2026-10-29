# Verification target: Prime Enumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1448c10332bfd2f9a4867789bb926d6a58239556",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeEnumeration/Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrimeEnumeration.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrimeEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1448c10332bfd2f9a4867789bb926d6a58239556`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeEnumeration/Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeEnumeration/Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.FundamentalTheorem` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorizationLabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrimeEnumeration.lean/declarations/factorizationlabel.md) | 18 | `declaration-track:71b93580baadd159ba94b377ffd573e6e68cf646d241181d239ffcc04e9449e9` |
| 2 | `def` | [IsNaturalCountingLabel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrimeEnumeration.lean/declarations/isnaturalcountinglabel.md) | 21 | `declaration-track:7eb2c5a87d0c495c2e5c5da5e17dab57bbf5048563ac6ea8a658f263e52c031c` |
| 3 | `theorem` | [naturalCountingLabel_correct](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PrimeEnumeration.lean/declarations/naturalcountinglabel-correct.md) | 24 | `result-track:7f758875e95d70ea44ad50ddd54e4ea8e5736d382c30d431c3eec0c453a712a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481da391ce246ab9717abbcc0279941d9322ec39655f974deddffb1140425674 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeEnumeration/Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrimeEnumeration/Variant1cf99b072b7922f88a333fa4dc625a8089a57c7f06efb175fd54402ab4be4538.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
