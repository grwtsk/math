# Verification target: GRWTSK.Topology.GeneralTopology.ThetaPositiveLift.Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de95741e9db97643230c3c0558d228aa9a97e8db",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de95741e9db97643230c3c0558d228aa9a97e8db`.

Source path: `GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiMellin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaASecondSeries_sub_thetaA_eq_eight_phi](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaasecondseries-sub-thetaa-eq-eight-phi--b603e20caf0e6b2c906192ba.md) | 44 | `result-track:b603e20caf0e6b2c906192ba2224b84551b1383e406de38d1c3a653c7626c8d5` |
| 2 | `theorem` | [thetaADerivSeries_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaaderivseries-zero--ee5127f52d239156beb1e027.md) | 54 | `result-track:ee5127f52d239156beb1e0270faf9dc613280ed11f9164907de311c0a1e5402c` |
| 3 | `def` | [thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpkernel--8c58dc38cb80eacd984b4695.md) | 60 | `declaration-track:8c58dc38cb80eacd984b469570f0fe3b04cec8b98a750bf2225bc276ea6c5f00` |
| 4 | `def` | [thetaExpBoundary](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpboundary--325efd80ddfa271e935fe3d4.md) | 65 | `declaration-track:325efd80ddfa271e935fe3d4c09ff1dd3ad81f32fa8c64af9b5089959bfb6a05` |
| 5 | `theorem` | [thetaExpKernel_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpkernel-hasderivat--4fd767ca6aa288911395144a.md) | 70 | `result-track:4fd767ca6aa288911395144a0d7bd85c0074f2c5d0434ab9f27d39162dd0ced6` |
| 6 | `theorem` | [thetaExpBoundary_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpboundary-hasderivat--42ad10a345043e695e97d26c.md) | 83 | `result-track:42ad10a345043e695e97d26c33214b488f2da24d4470276205ad63da4e7e975a` |
| 7 | `theorem` | [continuous_thetaExpKernel](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/continuous-thetaexpkernel--42ad2baffc64203dfc7b8e68.md) | 102 | `result-track:42ad2baffc64203dfc7b8e683152529f737da65799f10de9de2545529e6e2ba5` |
| 8 | `theorem` | [continuous_thetaA_complex](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/continuous-thetaa-complex--8b56f6c71a8e942ccb96dae8.md) | 108 | `result-track:8b56f6c71a8e942ccb96dae8a11ca10573218b6029312700f85a82d63dd3b94b` |
| 9 | `theorem` | [continuous_thetaPhi_complex](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/continuous-thetaphi-complex--623a78d39379929ad5e0af8f.md) | 115 | `result-track:623a78d39379929ad5e0af8fb27c5eb33225a396a6008df0ed60ced9fbfd3b51` |
| 10 | `theorem` | [thetaPhi_exp_interval_identity](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaphi-exp-interval-identity--342e0b1ef6cb3ab039cb385d.md) | 126 | `result-track:342e0b1ef6cb3ab039cb385d71f545f7bb4db3f267ca3166a9d89854fe8cabf4` |
| 11 | `theorem` | [thetaExpBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpboundary-zero--1ef3c730071171b489ce18dd.md) | 177 | `result-track:1ef3c730071171b489ce18dd534ea70e6a4ec40221d0f81898eee522ba8f61d4` |
| 12 | `def` | [thetaCoshBoundary](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetacoshboundary--f06ff9444a5640afed811b40.md) | 185 | `declaration-track:f06ff9444a5640afed811b40134a090c0fe263fc9b719e232cf77f9b0807b29b` |
| 13 | `theorem` | [thetaExpKernel_neg](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpkernel-neg--8f1ffecd1f1d5fe9156fbb6c.md) | 188 | `result-track:8f1ffecd1f1d5fe9156fbb6cc537f0e8b5d87d879749f01efcc15c6d3f67cf27` |
| 14 | `theorem` | [thetaExpKernel_average_eq_cosh](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpkernel-average-eq-cosh--fae97d9c139fa8acfbb05374.md) | 196 | `result-track:fae97d9c139fa8acfbb05374c90afe5a16766a812bebaf3ae6a3c8792e1d33d5` |
| 15 | `theorem` | [thetaExpKernel_difference_eq_sinh](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaexpkernel-difference-eq-sinh--8d7f6440d6a7b367bd3d6c98.md) | 203 | `result-track:8d7f6440d6a7b367bd3d6c98b72d7acee7d0f8fc6886103f5a97439615c3b4bc` |
| 16 | `theorem` | [thetaCoshBoundary_eq](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetacoshboundary-eq--c5546e470cac8855f8716b25.md) | 211 | `result-track:c5546e470cac8855f8716b25b5b0094078cf823bdfdd3878ecb25eafdd793814` |
| 17 | `theorem` | [thetaCoshBoundary_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetacoshboundary-zero--493c1c31bee182ae6513ce7a.md) | 222 | `result-track:493c1c31bee182ae6513ce7aa3f20272ce057988d0fecfae8079eb78d0fc047b` |
| 18 | `theorem` | [thetaPhi_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaphi-cosh-interval-eq-average--828671097115b3f752ef2947.md) | 228 | `result-track:828671097115b3f752ef294795e79540f013c739545949cb48a95b58e0799894` |
| 19 | `theorem` | [thetaA_cosh_interval_eq_average](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaa-cosh-interval-eq-average--874f3f0f765c9001206fbf1e.md) | 258 | `result-track:874f3f0f765c9001206fbf1edbbb4dbc689acc6a11b202d814799e26b250109a` |
| 20 | `theorem` | [thetaPhi_cosh_interval_identity](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaphi-cosh-interval-identity--ac1445ddd3045650eb4848c0.md) | 290 | `result-track:ac1445ddd3045650eb4848c03b7596503f7b0dce609350d17db7eb54c31ab8af` |
| 21 | `theorem` | [thetaPhi_cosh_interval_identity_explicit](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaphi-cosh-interval-identity-explicit--a079810e632043836a7e9bd1.md) | 323 | `result-track:a079810e632043836a7e9bd1a0f89bd4efb5f70ef36560e49be98892cb847606` |
| 22 | `theorem` | [thetaPhi_cosh_interval_identity_at_zero](../../../../../mathematics/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/declarations/thetaphi-cosh-interval-identity-at-zero--ec830f0b95fbe23e49c0e3d8.md) | 338 | `result-track:ec830f0b95fbe23e49c0e3d87b858acd0de85136842b9da9b1ef4c12fa759cae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
