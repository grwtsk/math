# Verification target: Round Namespaced Public Round Down Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9709d5fac7895cf04e157d8bcf1ea71f8497fb30",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9709d5fac7895cf04e157d8bcf1ea71f8497fb30`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Dyadic.Instances` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Rat` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Field` — import line 17; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Bitwise.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [roundDown_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/declarations/rounddown-le.md) | 36 | `result-track:98526abbfa6be5be5d05f602964a7fa53fbf5ef1c63b4738ce36be9564d09e2e` |
| 2 | `theorem` | [precision_roundDown](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/declarations/precision-rounddown.md) | 62 | `result-track:834952a7d26d506cd1576dd72fa47c600d0584728fbb3df5afe21cb44f4d7db1` |
| 3 | `theorem` | [le_roundUp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/declarations/le-roundup.md) | 80 | `result-track:178a36ebfaa630c69662a6812154edaf7ccad16a9a674c7d08c1877924482580` |
| 4 | `theorem` | [precision_roundUp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RoundNamespacedPublicRoundDownLe.lean/declarations/precision-roundup.md) | 84 | `result-track:952767776789882e04fb6f1028887d3a24a0bcf14eeaf5055a1f8229589adf8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36e618be09dce64215c55fa8ffe2805abeeb57f27a71f803fb35d4625d0b622f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Round/Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
