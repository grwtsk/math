# Verification target: Attr Namespaced Ext Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95cbb904709cb5e541609152b4f4fc29ceea4f5c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant785a20320934c3270502e4543c7d1aa38d94c6a3eba4132520298a22af047d75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95cbb904709cb5e541609152b4f4fc29ceea4f5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant785a20320934c3270502e4543c7d1aa38d94c6a3eba4132520298a22af047d75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant785a20320934c3270502e4543c7d1aa38d94c6a3eba4132520298a22af047d75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.RCases` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Lean.Command` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Meta.DiscrTree` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/syntax-source-edition-2.md) | 22 | `declaration-track:c5ccdbe8f2ea9f1d654fc6c1f2ee4ea3eea360f060abd7d3695aecec6cf2f2b4` |
| 2 | `structure` | [ExtTheorem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/exttheorem.md) | 25 | `declaration-track:b366ef72dce03595cc817120ccc5b5e06bff66b5c32baf6df02039fd6d91aca7` |
| 3 | `structure` | [ExtTheorems](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/exttheorems.md) | 35 | `declaration-track:c8f3fd73b83e8c5ba3c50e5ddcb0095216535aeaad50d796ab05938af87198e6` |
| 4 | `def` | [extExt.config](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/extext-config.md) | 43 | `declaration-track:e62b3c44024a20489b745cc62eccc4e39f8f43fc62d43e779bf66c23ce12ccbc` |
| 5 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/initialize-source-edition-2.md) | 46 | `declaration-track:ae3aa56526ab8c4f460bdee899b5672555c23d5ef047d43a523ddbc94f30104f` |
| 6 | `def` | [getExtLemmas](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/getextlemmas.md) | 56 | `declaration-track:4b781c04038760d5d74122e94d9d07f70cc5de02a6c0beba286513eee5c3103f` |
| 7 | `def` | [ExtTheorems.eraseCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/exttheorems-erasecore.md) | 66 | `declaration-track:7cf5162c56c5a59e4793afb27ad5944cc97d32d7d7d7862689e6694a80fe04cb` |
| 8 | `def` | [ExtTheorems.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/exttheorems-erase.md) | 74 | `declaration-track:dd27b5f33c45dd55df50259b6f1359519b618b570f556dad5a3a882bb0b48e38` |
| 9 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/syntax.md) | 91 | `declaration-track:c51bdde265cce0b7d258f8526941878dfd49a7f1e632ef170adad71b32117ac7` |
| 10 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrNamespacedExtTheorem.lean/declarations/initialize.md) | 93 | `declaration-track:3d474ad51162e0cfd0cc0ef35ee0cb230f3d3084511f205f52ffe0a06d03eb13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63ec8512e99241f081e836acfa2b1ebbecd2977c1ebe19ed85480921e963a55d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant785a20320934c3270502e4543c7d1aa38d94c6a3eba4132520298a22af047d75.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant785a20320934c3270502e4543c7d1aa38d94c6a3eba4132520298a22af047d75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
