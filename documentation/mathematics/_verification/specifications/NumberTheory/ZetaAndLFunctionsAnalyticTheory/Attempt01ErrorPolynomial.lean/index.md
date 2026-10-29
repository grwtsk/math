# Verification target: Attempt01 Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3efeb21c8ae5167e54b91ef6367760feb95f95a5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2ec80ee87047d655f289ab28948c075f56ecafa921cf4dfaf38a3e8e4e18a9b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3efeb21c8ae5167e54b91ef6367760feb95f95a5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2ec80ee87047d655f289ab28948c075f56ecafa921cf4dfaf38a3e8e4e18a9b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2ec80ee87047d655f289ab28948c075f56ecafa921cf4dfaf38a3e8e4e18a9b0.lean.json)

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
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:efea9de548b2eaeebc5220a972530816940cfffb966efb7a92c546deb89c9ce3` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/normalizationratio.md) | 20 | `declaration-track:02d67e220acaee0bbccc4f137aadc980eb2fabb9c9d9d3864791002f1eda8172` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:9b075a1152bcaf5c43ec4fb50d10a9a3cd36a070526147b03b661efab4733298` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:c57bb6df19a1ba21fbff9cdeedd36bf61b170eb90dd6fff545618763f8129f6d` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:b73577358b47f834aecd91493bd5eacd51c76c781444d92198bfaa21e49f286d` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/normalization-bounds.md) | 34 | `result-track:5497083db3ad50e80372fc7f142caa2e500409500b56e8408532ef1634ec28f7` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 55 | `result-track:8d1cda013c39103ccdb00ed2fc7ba19558615b932a2f36b5186aa9a86a9eb75d` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt01ErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 65 | `result-track:fb702343a559c752b0a700fb51792cb8e14d62f2ddac8d47899bcb1a596c8a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5b356d82afeb9a7db8ca924e7d946694f5474f111d7e32bd2aba8cd4075d14e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2ec80ee87047d655f289ab28948c075f56ecafa921cf4dfaf38a3e8e4e18a9b0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant2ec80ee87047d655f289ab28948c075f56ecafa921cf4dfaf38a3e8e4e18a9b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
