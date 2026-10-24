# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca2e105a880ce514a64556e457a92503762f5cb9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca2e105a880ce514a64556e457a92503762f5cb9`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiMellin` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaASecondSeries_sub_thetaA_eq_eight_phi](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaasecondseries-sub-thetaa-eq-eight-phi--d6a5e323714cc1a2882d013b.md) | 36 | `result-track:d6a5e323714cc1a2882d013b59878acdcf4916c7e8c7cf3a70badbca54bcbdef` |
| 2 | `theorem` | [thetaADerivSeries_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaaderivseries-zero--9935307868d00135d499093b.md) | 46 | `result-track:9935307868d00135d499093b5e60732c186579ddb70448810c8b983f667b3b45` |
| 3 | `def` | [thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpkernel--84cfeeb3f66e558c38f5826e.md) | 52 | `declaration-track:84cfeeb3f66e558c38f5826efbb47b50bf80d98ba0beaf6ae848bcc636a8a4a4` |
| 4 | `def` | [thetaExpBoundary](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpboundary--12ae902cc87a17769dbcc7cd.md) | 57 | `declaration-track:12ae902cc87a17769dbcc7cd735d4dfa47bd179c6ce35b22a81dbec3a2f01207` |
| 5 | `theorem` | [thetaExpKernel_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpkernel-hasderivat--b7ec060e079186b6c0dc7d86.md) | 62 | `result-track:b7ec060e079186b6c0dc7d869bee871c59b4e98476f2072906bb788ac3839353` |
| 6 | `theorem` | [thetaExpBoundary_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpboundary-hasderivat--579f4f26b699047f6c178b27.md) | 75 | `result-track:579f4f26b699047f6c178b27345c809e549299e787bde4f8b3556d06136f1f66` |
| 7 | `theorem` | [continuous_thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/continuous-thetaexpkernel--d43d02a9336f8ed5a004f680.md) | 94 | `result-track:d43d02a9336f8ed5a004f68027ff01b2189328250715f4c6a44b339d07376ede` |
| 8 | `theorem` | [continuous_thetaA_complex](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/continuous-thetaa-complex--9002a93f3135faa25e2f421b.md) | 100 | `result-track:9002a93f3135faa25e2f421b9a593d2fb93466c2e6188b5b35133a2f5f4d4559` |
| 9 | `theorem` | [continuous_thetaPhi_complex](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/continuous-thetaphi-complex--9a82be4abe9a98592d0fbcb3.md) | 107 | `result-track:9a82be4abe9a98592d0fbcb302f79600cdaecb0e682a98d68e7edfacd3d91971` |
| 10 | `theorem` | [thetaPhi_exp_interval_identity](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaphi-exp-interval-identity--1b1dc3fec7cfa85277e687f7.md) | 118 | `result-track:1b1dc3fec7cfa85277e687f7458b606a97f81b3006a8a2a2497fa0911beee92d` |
| 11 | `theorem` | [thetaExpBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpboundary-zero--5dac90f62133a06ef199dc69.md) | 169 | `result-track:5dac90f62133a06ef199dc695f48919f15032f5515acfea14ab1c05f6ee4f02d` |
| 12 | `def` | [thetaCoshBoundary](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetacoshboundary--b3e5af5d7193855615677698.md) | 177 | `declaration-track:b3e5af5d719385561567769861156f103185e10aace3f518a774dca2482c5392` |
| 13 | `theorem` | [thetaExpKernel_neg](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpkernel-neg--294a36426c050f8f9a4cbfd7.md) | 180 | `result-track:294a36426c050f8f9a4cbfd79b7f077d535328c7d7f5359dcdb244d8291643cc` |
| 14 | `theorem` | [thetaExpKernel_average_eq_cosh](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpkernel-average-eq-cosh--41034b42b3f20b66f48604e1.md) | 188 | `result-track:41034b42b3f20b66f48604e1129f7cf0353b2d963ad276ae872f3030052fdc9b` |
| 15 | `theorem` | [thetaExpKernel_difference_eq_sinh](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaexpkernel-difference-eq-sinh--7ad246c7eef00599184abc66.md) | 195 | `result-track:7ad246c7eef00599184abc6683310adb4db3053d753194c5eec8b7de80b80cf2` |
| 16 | `theorem` | [thetaCoshBoundary_eq](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetacoshboundary-eq--d399a869dcfbc918e73b91c3.md) | 203 | `result-track:d399a869dcfbc918e73b91c35ed6b6ce3ef3b4369401673df2bf5c52ede2f85f` |
| 17 | `theorem` | [thetaCoshBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetacoshboundary-zero--bd4582a955bdbea73b504fcd.md) | 214 | `result-track:bd4582a955bdbea73b504fcdd540b35bdd46eacd692cd640a39120677d59f708` |
| 18 | `theorem` | [thetaPhi_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaphi-cosh-interval-eq-average--6f46e532239c14aa74dde916.md) | 220 | `result-track:6f46e532239c14aa74dde9168b4dda125ebf448e71c48bb6f978b69943cfbcba` |
| 19 | `theorem` | [thetaA_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaa-cosh-interval-eq-average--fcb5cfbf21305df36c4161c0.md) | 250 | `result-track:fcb5cfbf21305df36c4161c05f9da6760ca4d016e644073a7fe9acd195ebe4bd` |
| 20 | `theorem` | [thetaPhi_cosh_interval_identity](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaphi-cosh-interval-identity--4aef7df5e121ff4c657c07b0.md) | 282 | `result-track:4aef7df5e121ff4c657c07b05414bcfe6dffe0302210378dcdc07661e4a6bdf1` |
| 21 | `theorem` | [thetaPhi_cosh_interval_identity_explicit](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaphi-cosh-interval-identity-explicit--2a888b6e4d8c0f8c4b32ece6.md) | 315 | `result-track:2a888b6e4d8c0f8c4b32ece6f8048f5614ed3320e91a563c2de17604e473d072` |
| 22 | `theorem` | [thetaPhi_cosh_interval_identity_at_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variant543843425cb7bf78e68a7a707e65349c37e9c744c159f73fcdaeedd56d83a8eb.lean/declarations/thetaphi-cosh-interval-identity-at-zero--b628ef687fd6b33fdb6d91f5.md) | 330 | `result-track:b628ef687fd6b33fdb6d91f54fa53a6147911bff1645682ca4c4833e4fa4c8fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
