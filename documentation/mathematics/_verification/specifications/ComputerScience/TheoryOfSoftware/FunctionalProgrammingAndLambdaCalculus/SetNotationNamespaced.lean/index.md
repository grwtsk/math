# Verification target: Set Notation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9765075db1c60576cc88ec591a41159901d32e9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9765075db1c60576cc88ec591a41159901d32e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Util.ExtendedBinder` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSubset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/hassubset.md) | 17 | `declaration-track:48257f5b75aa426c2ca984825ec53566629670daa23869b1d71160492aece7ac` |
| 2 | `class` | [HasSSubset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/hasssubset.md) | 26 | `declaration-track:8715801754f29299e12f0290ea742a713a54768a57bc63a20488d05c4b0daab3` |
| 3 | `abbrev` | [Superset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/superset.md) | 35 | `declaration-track:a0cd890b96fec21c18cb7dae2fd52b68a5528fe21459e50608274ba06eddd433` |
| 4 | `abbrev` | [SSuperset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/ssuperset.md) | 40 | `declaration-track:c8455280acc99049dbea16efc18eaf43544b3a0944ff3410ffcb8ca87bd812c4` |
| 5 | `class` | [Union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/union.md) | 45 | `declaration-track:90c6bb73dfc026dd2a1133a20e1e7afc5eb83f1836e1b054cee979030c14cc7d` |
| 6 | `class` | [Inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/inter.md) | 52 | `declaration-track:cf34b587a26f500ec31a15defb3ec2ebf4c8ec62895c45f8e8e6357489d84cff` |
| 7 | `class` | [SDiff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/sdiff.md) | 59 | `declaration-track:5bbcf57ec8ae419dbf5440ce6fe580c394daf3907fdf3a94a55dceb176ffccf7` |
| 8 | `class` | [Insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/insert.md) | 75 | `declaration-track:3cbf20335153f1cba307aa1e4a1f24850b6a7e7ad505d6882ae9f2dbccf0ff85` |
| 9 | `class` | [Singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/singleton.md) | 84 | `declaration-track:47c5c2a62222df102fae1c0953d252ea121ddac30c40f3bb8907eb7b73c8e644` |
| 10 | `class` | [Sep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/sep.md) | 90 | `declaration-track:6d785a3f9512cfb1a86c2ceccdbc625c6b7b67973561e9e8edee022ea78f9f94` |
| 11 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/syntax.md) | 123 | `declaration-track:3e14f75a157eb73c7aa6568ad85f81e51b38ae6fef578758539e078b832671cd` |
| 12 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/macro-rules.md) | 125 | `declaration-track:bb8cb94a09a6602b207d2410eb7073aa5f2f7ff437b3c7cc6698f1e5ab2c5a34` |
| 13 | `def` | [singletonUnexpander](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/singletonunexpander.md) | 131 | `declaration-track:2993be373932ec7c4c80e6639ef7659e56d3f00ea7e8cc809e2ad390c213e280` |
| 14 | `def` | [insertUnexpander](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/insertunexpander.md) | 137 | `declaration-track:b699630b1a8f703feebe35c0af1e968a7910f06564bff153015fd96627c559fc` |
| 15 | `class` | [IsLawfulSingleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SetNotationNamespaced.lean/declarations/islawfulsingleton.md) | 142 | `declaration-track:01d06c31bbae9144475d667159df3f639ffa0fbc29e4f37f0621cb2f5b1179b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95261605bb13321d40830b4a0404f0100ba322bb2d1c9b73edb4feefc24def5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
