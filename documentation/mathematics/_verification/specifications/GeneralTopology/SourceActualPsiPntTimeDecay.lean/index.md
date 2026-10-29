# Verification target: Source Actual Psi Pnt Time Decay

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1e75c72d9357f6c25c7afae988bce9da4bd2dd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/index.md) · [Full source](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1e75c72d9357f6c25c7afae988bce9da4bd2dd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualXiErrorCriticalCovariance` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRelativePsiTimeError](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror.md) | 22 | `declaration-track:718e0048e6f72b01da80d7d8dceaaf88fe0ef056dcb9e61733f17d0fb838485e` |
| 2 | `theorem` | [actualRelativePsiTimeError_eq_one_convolution](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror-eq-one-convolution.md) | 26 | `result-track:561cd81953c46b0bff9716cf97521c84915267d480b3db2edce1e61a330e6470` |
| 3 | `theorem` | [actualRelativePsiTimeError_intervalIntegrable](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror-intervalintegrable.md) | 41 | `result-track:69a235942485c0d37c2073d3545e14fc2af8130445abbd6c24306f58f705d5d2` |
| 4 | `theorem` | [actualRelativePsiTimeError_isBigO](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror-isbigo.md) | 62 | `result-track:93c07024f16f99ba82ac7b9c6e87028571aaf0749e975dbb0d69c4ded9ca9ec0` |
| 5 | `theorem` | [actualRelativePsiTimeError_tendsto_zero](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror-tendsto-zero.md) | 84 | `result-track:e6dcbc838b762dc0bda73aa68e41a6b8ebfd42805c467c677cfcc579f3d79767` |
| 6 | `theorem` | [actualRelativePsiTimeError_integrableOn](../../../../GeneralTopology/SourceActualPsiPntTimeDecay.lean/declarations/actualrelativepsitimeerror-integrableon.md) | 95 | `result-track:6824f75ef09fdc3288dc6beac46e6a10f0b682a5034a69d9e06ee2d94a7b685c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79d69ddfb1bb4f21f75d4b3e9afcdfbbf08f5aacfa243e68f9d79261c4f3873e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiPntTimeDecay/Variantc382ee3805fc8eb410c18c04f0077326948cd64cc707132671f562586f8d6ecf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
