# Verification target: Prime Harmonic Remainder Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2025f7821a17b6d4d3908fb9ab93d043803665e5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant4eca671545bc80ef063a2fed02b09e5247d1c52f98a294e74cbb0152177832f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2025f7821a17b6d4d3908fb9ab93d043803665e5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant4eca671545bc80ef063a2fed02b09e5247d1c52f98a294e74cbb0152177832f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant4eca671545bc80ef063a2fed02b09e5247d1c52f98a294e74cbb0152177832f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaConstant](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaconstant.md) | 27 | `declaration-track:51a71e08b814043d030f13e675585f9ed57d8900c464505acf55ce9d2d0cdf74` |
| 2 | `def` | [thetaTail](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetatail.md) | 29 | `declaration-track:307f5a55c4d2c57d22dda207a2f9473741f174d04e4976a5cd51c29b49e891c3` |
| 3 | `def` | [thetaRemainder](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaremainder.md) | 31 | `declaration-track:96c21c897422d741fcb450d1b3914889a88d8fd777f22a9bfefca82e894bd65d` |
| 4 | `theorem` | [thetaLogError_signed_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetalogerror-signed-integrable.md) | 33 | `result-track:712a6ea4c32d674e73643ef031a9b8b87bf5c7e36e79ad891e6aca957ddac16d` |
| 5 | `theorem` | [thetaTail_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetatail-integrable.md) | 37 | `result-track:0d3ac8faa076b34bf9be190a6f4b58f68403025b56f46eba7e1dc6889d1a28fe` |
| 6 | `theorem` | [prefix_add_tail](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/prefix-add-tail.md) | 41 | `result-track:d822c7d22381b0b7328771e71c1d6a93fc60fac0be0f5c3e498d04ae5e34d03e` |
| 7 | `theorem` | [centered_prefix_eq](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/centered-prefix-eq.md) | 46 | `result-track:5d4b51edd8cdfcb5de286add1cb6f30ada1a226f2e77af22466893eaf3017a84` |
| 8 | `theorem` | [thetaTail_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetatail-measurable.md) | 53 | `result-track:b5464f632fd855224b64c4a60e77c916606de54fe5e803103a1bd92bcb8bbb05` |
| 9 | `theorem` | [thetaRemainder_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaremainder-measurable.md) | 65 | `result-track:fcabc70c1f0ee7762c70d54f06dce74bfeb085d0f812858d9b4c163f66daabcd` |
| 10 | `def` | [tailKernel](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel.md) | 68 | `declaration-track:45e2cb8a0ea16dfe4d08e13f75747a12e1fd703e4df8180eae431369438e0f40` |
| 11 | `theorem` | [tailKernel_measurable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-measurable.md) | 71 | `result-track:4d1d5161c3b05c0833a0cf52ff07b825c5694dda71ebcdcaefeb7a5740605d8b` |
| 12 | `theorem` | [tailKernel_fiber_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-fiber-integrable.md) | 75 | `result-track:24ee0fb7b81d404374f1c4caeb516e3f7ef3348e1a348e6c3e38bc2efddbbf2a` |
| 13 | `theorem` | [tailKernel_fiber_integral](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-fiber-integral.md) | 84 | `result-track:104a3c24d0bcb952d43af993d70598f1e1f2d93146b9009cd273e380441fdac2` |
| 14 | `theorem` | [tailKernel_fiber_norm](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-fiber-norm.md) | 93 | `result-track:482d0d5e5d14384575be66d92a05b29cd9980c8db65a330c712effe1e4108cb0` |
| 15 | `theorem` | [tailKernel_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-integrable.md) | 103 | `result-track:1b2fcdd74a4adf842fc2a30f7b219e63e52e1095579b5a03bfa20eeb984577ae` |
| 16 | `theorem` | [tailKernel_outer](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/tailkernel-outer.md) | 112 | `result-track:6ea2803013b971885c1231852f5e09fc315ede41023f411a327132c50992dfe8` |
| 17 | `theorem` | [absolute_tail_first_moment_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/absolute-tail-first-moment-integrable.md) | 118 | `result-track:17675b75c2ff004a29dda40e4ab2f6b66c4861b8266d6852f1939f63a23dc2e9` |
| 18 | `theorem` | [absolute_tail_first_moment](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/absolute-tail-first-moment.md) | 124 | `result-track:d97a9305d2ca2336d99179582bab7cf3e80dd158c3c9cfd85d601262c783efd4` |
| 19 | `theorem` | [thetaRemainder_abs_le](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaremainder-abs-le.md) | 140 | `result-track:39352dd8dd9ae815170544f5f7d484726de2f0f66ba9eadf87c3a3b5e693e53d` |
| 20 | `theorem` | [thetaRemainder_first_moment_integrable](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaremainder-first-moment-integrable.md) | 147 | `result-track:876001e9eea53e4f2fe953281d82ad717c3cec1434d02de0bf79cbede1adf059` |
| 21 | `theorem` | [thetaRemainder_first_moment_bound](../../../../MeasureAndIntegration/PrimeHarmonicRemainderNamespaced.lean/declarations/thetaremainder-first-moment-bound.md) | 161 | `result-track:0e061d385ecf1f90c718a963d8c9cce396b99f0b8e72cf53e687521c909d43ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecfa7f58a825139bc238130cb1765a1617d5d33c5563bfcd7fed13561b668e88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant4eca671545bc80ef063a2fed02b09e5247d1c52f98a294e74cbb0152177832f1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainder/Variant4eca671545bc80ef063a2fed02b09e5247d1c52f98a294e74cbb0152177832f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
