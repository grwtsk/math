# Verification target: Combined

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Combined.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Combined.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [betaIntegral_nat_factorials](../../../../MeasureAndIntegration/Combined.lean/declarations/betaintegral-nat-factorials.md) | 10 | `result-track:ecf3e2c13fbd1af5fcdc9d5414ef21a2814ff215e554e421c7a6b487623b38f2` |
| 2 | `theorem` | [integral_pow_mul_sub_pow_nat](../../../../MeasureAndIntegration/Combined.lean/declarations/integral-pow-mul-sub-pow-nat.md) | 24 | `result-track:93a57d07a6739fa20d7583233156e8677442e6344771294acb58a410b4fc8b2b` |
| 3 | `theorem` | [beta_evenBasis_tailKernel_mul](../../../../MeasureAndIntegration/Combined.lean/declarations/beta-evenbasis-tailkernel-mul.md) | 47 | `result-track:3394022eef389a8aad012944b6b02c020569271564f7e80837edadecf279768a` |
| 4 | `def` | [thetaTailPairKernel](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairkernel.md) | 79 | `declaration-track:6c0633bcb8baa66fa73d2c42ed5750a3979e76c6d3d6fac993dbbe303d4b7f48` |
| 5 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairkernel-nonnegative.md) | 83 | `result-track:60f4e6217eb170d827597506c80fee2a83721b76e7490d7c333941a92fdb3367` |
| 6 | `theorem` | [continuous_thetaTailPairKernel](../../../../MeasureAndIntegration/Combined.lean/declarations/continuous-thetatailpairkernel.md) | 89 | `result-track:ab5eb90a521bf4a9b1d0d344bf6ec5aa539eefd845940f2f52a63ba798062c6b` |
| 7 | `def` | [thetaTailPairIntegrand](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand.md) | 95 | `declaration-track:69e433fb2da5d3cf0f075adb49e7dbb81b32ec45af003d555ba54a50fc50bfbc` |
| 8 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../MeasureAndIntegration/Combined.lean/declarations/measurable-thetatailpairintegrand.md) | 99 | `result-track:ef08b8144354626d95415989e4847bfe429505b79c44d05325f4ac1c110e2f1c` |
| 9 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-nonnegative.md) | 105 | `result-track:c1f9c449907d8319a371f7e179bacd47622a33024f132d48a94f9c53e6c2f19c` |
| 10 | `theorem` | [thetaTailPairIntegrand_right](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-right.md) | 112 | `result-track:436b588dde718877bf7a2e83f8ed49abc96394aca1fcedac3f2eef5dd92a6424` |
| 11 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-right-of-neg.md) | 118 | `result-track:d5a88ecaf41a846aef5489cacd00663a25ad23553eb65fe08f9306556bf3d629` |
| 12 | `theorem` | [thetaTailPairIntegrand_left](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-left.md) | 123 | `result-track:ac44f4dc849a9a58b8581654995a27194abc9f6d2390e643563e418104f6d4cc` |
| 13 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-right-integrable.md) | 127 | `result-track:be67c3111cf5bb4063fee066384c36ecbc2b7e8dfe237c2cc349004ce4963d17` |
| 14 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-left-integrable.md) | 140 | `result-track:749833f4093cfbb82e71f2338781786276ef77c9cbb47582c0b11b02e27c324a` |
| 15 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-integral-right.md) | 146 | `result-track:eaf980d21d4a0fcd5d51e7e062b4199f7b6bfbb766d8062b7704476f6c284541` |
| 16 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairintegrand-integral-left.md) | 162 | `result-track:ed9913f53d79a210afee229bd5a72fed11a1b1d2dbf1ff17446314a2985d3440` |
| 17 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../MeasureAndIntegration/Combined.lean/declarations/tailpairing-succ-eq-iteratedintegral.md) | 178 | `result-track:b6294486d7d8009cac8a16fa770c36e0e777659c5b3f3be4328c6c9838c29d56` |
| 18 | `theorem` | [nonnegative_integral_integral_swap](../../../../MeasureAndIntegration/Combined.lean/declarations/nonnegative-integral-integral-swap.md) | 200 | `result-track:7b3180fb2e7b752e5ab11072bb1cd928688c74097b8602468de59cade6dd8bee` |
| 19 | `theorem` | [tailPairing_succ_tonelli](../../../../MeasureAndIntegration/Combined.lean/declarations/tailpairing-succ-tonelli.md) | 227 | `result-track:e1fc1bc293f8ff461b1ae97a7123a52b217110e64f2d0c05859ac0cd6cbc1c90` |
| 20 | `theorem` | [tailPairing_succ_beta](../../../../MeasureAndIntegration/Combined.lean/declarations/tailpairing-succ-beta.md) | 243 | `result-track:9b7c483b4a7b93afa5a6ce59f68f96781179e04ca2aabb2c9ba51f687e980ba2` |
| 21 | `theorem` | [thetaTailPairing_transport](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairing-transport.md) | 253 | `result-track:8ef4127f48245c3a395581c58307863f03d6593dbe0397d57b402653a9cc12ee` |
| 22 | `theorem` | [thetaTailTransport](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailtransport.md) | 260 | `result-track:e45450e438df1d91dcd39134bfde8ab71e5589ac747e72c4262098963605175e` |
| 23 | `theorem` | [thetaTailPairing_order_two](../../../../MeasureAndIntegration/Combined.lean/declarations/thetatailpairing-order-two.md) | 264 | `result-track:723c9b8659d1e9ea3c67f0b0833b801e91f76c8770c3505f5fb9cfa03a91ecaa` |
| 24 | `theorem` | [beta_tailKernel_zero_one](../../../../MeasureAndIntegration/Combined.lean/declarations/beta-tailkernel-zero-one.md) | 269 | `result-track:4adf7d2b371255cca560ce4131138dc519f097175f526e15daf9025366b7a967` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5388f12a397ded38bfd7e947ae1810d8c50fd3e16ba6ae761edecd7e49c8391f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined/Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
