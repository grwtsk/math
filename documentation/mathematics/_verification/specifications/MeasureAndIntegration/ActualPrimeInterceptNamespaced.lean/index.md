# Verification target: Actual Prime Intercept Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "485163c83641ccaf1c4fe68ecff2bbcc62776a52",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `485163c83641ccaf1c4fe68ecff2bbcc62776a52`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualArithmeticIntercept` — import line 6; external provider; requires a separately pinned dependency.
- `ProperPowerAssembly` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPrimeRemainder](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actualprimeremainder.md) | 28 | `declaration-track:a359444cb76df343f9a65dcec4b3e07849b54da2d853e34e580832b889cc3997` |
| 2 | `def` | [actualPrimeIntercept](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actualprimeintercept.md) | 32 | `declaration-track:a751d05e7d06a34206f5e2b89acbb420261c1d11bf82b55aed023fce84838ed2` |
| 3 | `theorem` | [actual_prime_remainder_eq_full_plus_tail](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actual-prime-remainder-eq-full-plus-tail.md) | 34 | `result-track:e8ac63ba5d9500341fd6569b78205ebfbfcaab24d46c0707cfaabaab30077386` |
| 4 | `theorem` | [actual_prime_remainder_integrable](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actual-prime-remainder-integrable.md) | 40 | `result-track:eb8345e3ac6494f0beea0470209600de985c695723b505ed3b1ba2fe67ade20c` |
| 5 | `theorem` | [actual_prime_remainder_integral](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actual-prime-remainder-integral.md) | 48 | `result-track:23210c4b87e8e2a0fdf9820db1c760d5599ed35a0ad4db85a3dbb7d7df8f2445` |
| 6 | `theorem` | [actual_prime_intercept_eq](../../../../MeasureAndIntegration/ActualPrimeInterceptNamespaced.lean/declarations/actual-prime-intercept-eq.md) | 56 | `result-track:0c1dcb43e84a3b99f20dfa50ead57ec0046c523744c5af97a8354353fc7cb852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=138982a8541fec9b0aa6999e3c513c6d0dd9199d07f9a545ca607b34d32af48e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant166d13ad09d1b837662b8c6014f7d164d387f33d3495d247bd10326809b38faf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
