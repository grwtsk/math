# Verification target: Attempt05 Namespaced Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c65f3f80b528ea7973b0ce838deb6f5e73c85a4e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7555100869f0761003f025ce4ddfcdda46ea5142e49a07277875a02b0d4b7918.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c65f3f80b528ea7973b0ce838deb6f5e73c85a4e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7555100869f0761003f025ce4ddfcdda46ea5142e49a07277875a02b0d4b7918.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7555100869f0761003f025ce4ddfcdda46ea5142e49a07277875a02b0d4b7918.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/errorpolynomial.md) | 24 | `declaration-track:63d19782b2aba95f79db1c2ac9e2243d55a6f8417008b5a2dc9f787204a4a005` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/normalizationratio.md) | 28 | `declaration-track:671e1e56f05bf9a299011033158267b795ac930e868313d65085cb112db9924f` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/positiveendpoint.md) | 31 | `declaration-track:0fabc2801c57cd965bd549320896d80d9e98ab1db6ab0e1477a3d938ae3366fe` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/reflectedendpoint.md) | 35 | `declaration-track:4d478d1b5f79d3cce3b7abb7aecb067ef2d5aeb12552d1bfd2dd26c21d629b14` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 39 | `result-track:ed595979154e6b8aea3c42c2956e0c7f31b38ab6298c538ff8a75f9fcb1f535c` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/normalization-bounds.md) | 42 | `result-track:c3fc45406668c08a084d4f3beb4345348816f6bb81f964c2afcc9302224bd3d3` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 66 | `result-track:a2b4f5c6bb7190e4df829f348abd01571f5478db404cb350aefebfc9588e6210` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 76 | `result-track:48d27e144a56a25c1a27dcba66fe862b1fb0708f0f0ffa824ee34ff201daaad5` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/source-ratio-exact.md) | 107 | `result-track:6f8a344b94ec6d40bd49becf014ea797e934e8a50daf680527cc07741d53ac37` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/inverse-power-bound.md) | 125 | `result-track:178d8cb19c3eaa2fa2f816fb8d8d7e3be146e2b295d2047d509a28cabca8a058` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 141 | `result-track:9a79e0f59e63f2bad1b8aa615891b0395db8559bbc1f7fe84a4e02ff41f6f153` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 173 | `result-track:f0b3142b872150ffda510f35ad6f112cd2a20268a33029fe58ac10b2b75488b8` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05NamespacedErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 212 | `result-track:15f2bd793b64d1d5023e0f89a97afc1b957be7570a7746a5e23d317743b1303b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2f273cf225f091750c5729bb4539b40de01687f3580839b07f2d6124b8e120f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7555100869f0761003f025ce4ddfcdda46ea5142e49a07277875a02b0d4b7918.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant7555100869f0761003f025ce4ddfcdda46ea5142e49a07277875a02b0d4b7918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
