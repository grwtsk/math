# Verification target: Finite Density Insertion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c980fea517e42e96e44edf38d792de651e7c9eb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c980fea517e42e96e44edf38d792de651e7c9eb`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimeReciprocalSquareSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimereciprocalsquaresum.md) | 14 | `declaration-track:375e8c2bbc754613301bc3be9374fc2f5f8824f42363f13817c3e1e4b91dbe51` |
| 2 | `theorem` | [coprimeDensity_mul](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimedensity-mul.md) | 18 | `result-track:5749b6b5a4f9ec86555c953838427ebf6239437b640c7b88f13f99d487ed5ae4` |
| 3 | `theorem` | [coprimeDensity_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimedensity-two.md) | 39 | `result-track:f89454803b9f8ee5b8d13eea35a1389f03f706db9f0c7115cb3d568a5791df98` |
| 4 | `theorem` | [coprimeDensity_two_mul](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimedensity-two-mul.md) | 43 | `result-track:c99f829a245863271d7d73eb109514bc81bf2ed545a918da889ecfee9d547435` |
| 5 | `theorem` | [coprimeReciprocalSquareSum_two_split](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimereciprocalsquaresum-two-split.md) | 48 | `result-track:2ed7192fdae021438c9daba30d575771a5fbe55e3c83397d5909df235c7ed644` |
| 6 | `theorem` | [coprimeReciprocalSquareSum_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimereciprocalsquaresum-difference.md) | 82 | `result-track:5474ecce9f7d84f7fc3926adecf960b1329e223d015a3a7ddda63b6a77a2d042` |
| 7 | `theorem` | [finiteSquarefreeDensity_two_error_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/finitesquarefreedensity-two-error-eq.md) | 99 | `result-track:8ab505b94b10616a66f0abf3a736378e28909f7494e0e2392a709fa132697422` |
| 8 | `theorem` | [coprimeReciprocalSquareSum_tail_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/coprimereciprocalsquaresum-tail-abs-le.md) | 111 | `result-track:34f07f8f34e35956aaa248c350347d8522ed5ac3cae38dfe0442d0a9d5e9d9bb` |
| 9 | `theorem` | [finiteSquarefreeDensity_two_error_le_half_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/finitesquarefreedensity-two-error-le-half-cutoff.md) | 130 | `result-track:8bac62c070461b7ef8b863a960a97677e1bf80a6f463327ddf6b99de9c49e9dc` |
| 10 | `theorem` | [finiteSquarefreeDensity_two_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/finitesquarefreedensity-two-error-le.md) | 145 | `result-track:703519fcddf9198b3de618e5f21e51b06423578efad8319a5bc4b457717a3ed0` |
| 11 | `def` | [twoDensityFactor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/twodensityfactor.md) | 155 | `declaration-track:4cf2d3d55b067da227c6e3c72cdb7790738cd5649e529766bf95ef59ef62a0f0` |
| 12 | `theorem` | [twoDensityFactor_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/twodensityfactor-eq.md) | 157 | `result-track:29a079f3c2cb8ce2676629b89feef541a422db08e85f274a61cf6ab974b88c74` |
| 13 | `theorem` | [twoDensityFactor_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/twodensityfactor-bounds.md) | 162 | `result-track:0bfba174c1acb82f44b6697565e57e996d6b6e2c99b5c044d771f1b49cf3ff02` |
| 14 | `theorem` | [signed_two_density_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/signed-two-density-error-le.md) | 171 | `result-track:5808344a1e3769e731388777cffc11b595535e742cd31554493a312079f83fe1` |
| 15 | `theorem` | [signed_two_density_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/signed-two-density-abs-le.md) | 188 | `result-track:dd539b1300644f1c527dd60f7aeb285bd89e3eee09b68eb975fdf810952bfb84` |
| 16 | `theorem` | [signed_two_density_cutoffs_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/signed-two-density-cutoffs-error-le.md) | 211 | `result-track:8269958712b625a1584687af4961efdf8eb44da5dcb093f07bc0e6ff2c6e895f` |
| 17 | `theorem` | [signed_two_density_natural_cutoffs_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/FiniteDensityInsertion.lean/declarations/signed-two-density-natural-cutoffs-error-le.md) | 244 | `result-track:2a3e99a851b4665c8b05f087323fd15b4fd9812f1140eb382dbd3f79363d3fd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4527948e36bd9028d325f0b222b6dad47b83411c04208ab8523e3ad04abf37cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
