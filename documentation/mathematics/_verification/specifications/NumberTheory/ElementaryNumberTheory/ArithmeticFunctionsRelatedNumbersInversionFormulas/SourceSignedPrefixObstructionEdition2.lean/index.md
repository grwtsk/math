# Verification target: Source Signed Prefix Obstruction Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c29ed5a58613ca4c296b6492d9f7045d9b7fb4dc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c29ed5a58613ca4c296b6492d9f7045d9b7fb4dc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveTriangularConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/centeredprefix.md) | 19 | `declaration-track:18acc402f983e7f4a6ce50c4301f7216e44aba51d7a8480a96b093471d4077b3` |
| 2 | `theorem` | [actual_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/actual-cutoff.md) | 22 | `result-track:f429263ae11c53102e979390f43e85ed439d4e85ff0d5e819929213b671f5156` |
| 3 | `theorem` | [actual_alpha](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/actual-alpha.md) | 25 | `result-track:01444599aecf50a94a0bb2c6eea5d64974b8eb7dc812c3a1a5d2d56c6597fc7a` |
| 4 | `theorem` | [centered_beta_short_examples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/centered-beta-short-examples.md) | 30 | `result-track:5f721869d4fe037418bb32b4362efb7fd90f86fef1ba56adc710dc0f53ac3414` |
| 5 | `theorem` | [actual_prefix_values](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/actual-prefix-values.md) | 43 | `result-track:e8210752211ba96cc223be5810077b7c0ab329c55f5a0b36cc6eaf6006150830` |
| 6 | `theorem` | [centering_does_not_force_nonpositive_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/centering-does-not-force-nonpositive-prefix.md) | 51 | `result-track:22a443bcbe643ce52393f7b2641969d26d96fb2eafbfc0aa8a7f0ef64abcfa52` |
| 7 | `theorem` | [centering_does_not_force_nonnegative_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceSignedPrefixObstructionEdition2.lean/declarations/centering-does-not-force-nonnegative-prefix.md) | 58 | `result-track:7b25648a52bd44ab6ff5ec0ff1094a56f307977ccc63ff0b0af0096c36e97ef9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50cb4b1f2c9c07241ad5776ec9964a2952fe8d4159e60b9de706de51270a06f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variantc523707153ca414a253f84f0169d777847edc444c539280d883bc835229cd65f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
