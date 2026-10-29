# Verification target: Attempt02 Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5cbb3bfcfce60a255bf94b5ac13481c2cc225eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant8eb2d3bf101877dd77d31a3833ef9c0e4684c7e3a700f00e7cdd8e642f636105.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5cbb3bfcfce60a255bf94b5ac13481c2cc225eb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant8eb2d3bf101877dd77d31a3833ef9c0e4684c7e3a700f00e7cdd8e642f636105.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant8eb2d3bf101877dd77d31a3833ef9c0e4684c7e3a700f00e7cdd8e642f636105.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:d82d7f5b798d0f06017f89f4ffe3cab5cd1faef13b2bb4c27d535e6ffeda162a` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/normalizationratio.md) | 20 | `declaration-track:a1dfdb9cf299d9d2e703eff5a55483cfe85329dd880b88d3d6ef3bf2ba6c8011` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:85289b606fd4ce36973c46366ec31cd0bfd7e990a517aa40f58c290d50964a9f` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:14472bbc94f6b20a91b0f398105baf4a3163dec43eb4a90eb7f3c7f4e7be9c68` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:bccfb2f2ff167817d0a882778674d309dff6c892d5b10db0d4ea5c881a288058` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/normalization-bounds.md) | 34 | `result-track:eaf233fdfca2206378e1772a2982525e6ca5a0e8e297b0aaded8e15f9ce0d4b3` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:75b06700cad6fc767c5bf395ddee95bf23f5855aaacea70030a5ea282e6e93c4` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt02ErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:eba31ccccb48ee6acc1dcba455021d70d9dde4c97cc3191ffc400dd312d19ba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a85798b9650dc0f506a32c82547bb023826cbc20693271b5511c2162b2a1144 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant8eb2d3bf101877dd77d31a3833ef9c0e4684c7e3a700f00e7cdd8e642f636105.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant8eb2d3bf101877dd77d31a3833ef9c0e4684c7e3a700f00e7cdd8e642f636105.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
