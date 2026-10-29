# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringExactCorrectionMargin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f535a58769f474321569a4b5cdf376620bf2977",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/index.md) · [Full source](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f535a58769f474321569a4b5cdf376620bf2977`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.RationalTentCorrectionPrefixExact`](../../../../MeasureAndIntegration/RationalTentCorrectionPrefixExact.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalPositiveTuringCorrectionMargin`](../../../../NumberTheory/CanonicalPositiveTuringCorrectionMargin.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixValueQ](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/squareprefixvalueq.md) | 49 | `declaration-track:da2e6ee061a5105a45a9e845509d994da2fadb070b10b301a3fe077a4ccbdd3c` |
| 2 | `def` | [verifySquareExact](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/verifysquareexact.md) | 54 | `declaration-track:e8e73db36111f056b4e6e124513897f1fb20a47db937cc75159b7401b1183f4a` |
| 3 | `theorem` | [squarePrefixValueQ_exact](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/squareprefixvalueq-exact.md) | 60 | `result-track:8dd4780066b4fd0e5dd16dbff740966e94cb168f22892b6f3abff788a5f7c8bb` |
| 4 | `theorem` | [verified_square_exact_correction_lower](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/verified-square-exact-correction-lower.md) | 72 | `result-track:93b815ad94b71b0a61682fd7c46272bdb4136d87df8403e3cef64617c4c0e67a` |
| 5 | `theorem` | [verified_square_exact_correction_floor](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/verified-square-exact-correction-floor.md) | 88 | `result-track:37b46ccdd1993f4b1117049678c8c0956f75030b5a6050e3dc7d38932ef78405` |
| 6 | `theorem` | [prime_in_square_of_exact_prefix_claimed_endpoints](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/prime-in-square-of-exact-prefix-claimed-endpoints.md) | 98 | `result-track:e64757dab6e816bdf3e7cffc5e7906ce34dfac24335db99213a6abaa6e62127e` |
| 7 | `theorem` | [prime_in_square_of_exact_prefix_thresholds](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/prime-in-square-of-exact-prefix-thresholds.md) | 132 | `result-track:711f9739ef5d0eddeb0ab9c4c25c9ca76674912896e22873f03ee4262dc495f2` |
| 8 | `theorem` | [exact_prefix_zero_margin_not_strict_fixture](../../../../NumberTheory/CanonicalPositiveTuringExactCorrectionMargin.lean/declarations/exact-prefix-zero-margin-not-strict-fixture.md) | 162 | `result-track:27305eafc74f9b749d48e2683fd4d60d00334b7ceff366a0a5a62d50bf76a98b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8face4e31a85c407c648198195ba53afa4c7f3aafb5620679f9ed280e68c39cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
