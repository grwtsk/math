# Verification target: With Density Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e12c0a6367ad05bb8f456b8dcac1c890730366f8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e12c0a6367ad05bb8f456b8dcac1c890730366f8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [withDensity_comp](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-comp.md) | 32 | `result-track:7d71c883b23b29b92bf0f43316771641f3d872e88e222d50d03eefce4f57dccd` |
| 2 | `lemma` | [compProd_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/compprod-withdensity-source-edition-2.md) | 48 | `result-track:8e7e837a544829b81538e40b2170a61ee3f6f3632edfcda72d4c543a39ffe5e4` |
| 3 | `lemma` | [withDensity_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-compprod-source-edition-2.md) | 58 | `result-track:a90a3725da829e677594fb4ff6100dacbb8580e8febaf3055d5a4795c7aa8ca9` |
| 4 | `lemma` | [withDensity_compProd_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-compprod-withdensity.md) | 72 | `result-track:520a0bd522fdad4b6e578e6118875059f67d8a746781612b7a439665cef91864` |
| 5 | `lemma` | [withDensity_comp_left](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-comp-left.md) | 83 | `result-track:5965f8dfedb278076dc0e9f78ecdfb48fc7b22ab73d2ec6b8844ff2065ea3f9b` |
| 6 | `lemma` | [withDensity_comp_right](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-comp-right.md) | 93 | `result-track:eedccc8b9c505dd1bdab7f1ba1d484fd5f05081daf59fd289993f949dda94ae8` |
| 7 | `lemma` | [sectR_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/sectr-withdensity.md) | 100 | `result-track:f377c29c783098030614b52a39c86b2caf31b24c611a50141c6e526f313be097` |
| 8 | `lemma` | [compProd_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/compprod-withdensity.md) | 108 | `result-track:1864b9f11a5a3ecf7e5afd93aa19e51deeb617ee16e6dd19b0b4f29014a228f2` |
| 9 | `lemma` | [withDensity_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/WithDensityPublic.lean/declarations/withdensity-compprod.md) | 119 | `result-track:78c228664fdd7e891dcd52b186dba91269b578b8498bf7cda5612f4d0bb02ecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f5b7d7d270cac0c735413b63fa341d99d89125cf9aada33e0262b30423c130c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/WithDensity/Variant4dfdcd0a57f0801be4565a98f82d4a6ab204b2ef8f662213f542d13763c4571f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
