# Verification target: Strong PNTPrefix Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4a342dd71f2a804940ec97fb184165803d2ba5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Variant6114c9ad1121fd95b87dd4a941c8f7cfebdd2ea52596085c5a3bfcb6ffab6cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4a342dd71f2a804940ec97fb184165803d2ba5`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Variant6114c9ad1121fd95b87dd4a941c8f7cfebdd2ea52596085c5a3bfcb6ffab6cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/StrongPNTPrefix/Variant6114c9ad1121fd95b87dd4a941c8f7cfebdd2ea52596085c5a3bfcb6ffab6cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Prelude.InstancePriorities` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Principal` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AnalyticOn.norm_le_of_norm_le_on_sphere](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/analyticon-norm-le-of-norm-le-on-sphere.md) | 33 | `result-track:86829bc67d48858611703e4f76ae504f61b8dc59b27140fdce621d994252db5f` |
| 2 | `theorem` | [borelCaratheodory'](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/borelcaratheodory.md) | 51 | `result-track:225aa74744f34d6cdf3c4d43a6223ba48a88d28f506e1a4cd923464aecec38e0` |
| 3 | `lemma` | [cauchy_formula_deriv](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/cauchy-formula-deriv.md) | 72 | `result-track:ee0774e5a91b1880156a93bf9d27e56da368fb87271d82f68467d93c2a40d09c` |
| 4 | `lemma` | [DerivativeBound](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/derivativebound.md) | 82 | `result-track:d2c37cf91a3f5ce2a99176f905865d4c38847a03f63df26517c479221172f7a9` |
| 5 | `theorem` | [BorelCaratheodoryDeriv](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/borelcaratheodoryderiv.md) | 108 | `result-track:8323870e6d725272ee524c30b6e858b6a2a85b944de5c48f97db1e18d4a9827f` |
| 6 | `theorem` | [LogOfAnalyticFunction](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/logofanalyticfunction-source-edition-2.md) | 124 | `result-track:47bcbce01673414fa5456c69c4e848bef73e250c9b4c40996a407adbec4ee0a3` |
| 7 | `theorem` | [LogOfAnalyticFunction'](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/logofanalyticfunction.md) | 183 | `result-track:353519bbde40db3bf1d43bd3bb0ad86fe7439d91684b65e6e06ec7ab217c2943` |
| 8 | `def` | [SetOfZeros](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/setofzeros.md) | 194 | `declaration-track:26f6951fc53df187e90ada775020470dc41631513bb0441f9666f0cc4674b6c9` |
| 9 | `lemma` | [finiteSetOfZeros_mono](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/finitesetofzeros-mono.md) | 196 | `result-track:eb4867e5596162c11dc9455e86b9b98207e6b5a13096252cf88cb90488ac892a` |
| 10 | `def` | [ZeroFactor](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/zerofactor.md) | 207 | `declaration-track:6f232a2eb7bc3711ea02df90a8fa1ec8a4c6d34e2187dc09b56870d7450ffb71` |
| 11 | `lemma` | [ZeroFactorization](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/zerofactorization.md) | 214 | `result-track:b6ab1cac25e78c2c6066ec7c79e64feb92986031193e77d87e84682ec9fa0343` |
| 12 | `def` | [Cf](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/cf.md) | 241 | `declaration-track:8beeab1fc2bb97ee8ed7e58ba7960768e29a671581a5643a79f8510256303ffc` |
| 13 | `lemma` | [analyticAt_finset_prod_sub_pow](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/analyticat-finset-prod-sub-pow.md) | 249 | `result-track:2517073db5d3cce64549ab92a2f69b7d7862ff7a60e3bd583b2afda7a1aa2374` |
| 14 | `lemma` | [CfAnalytic](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/cfanalytic.md) | 261 | `result-track:6c5907a64979786319b989f7cc3c5d0a0aeaf8850ac9bdcfb87c5a882c6fb7e5` |
| 15 | `def` | [BlaschkeB](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/blaschkeb.md) | 312 | `declaration-track:5a756850ca12563e0d8ef1bf30cafb757c009a0afd8c4f08b5dcc7d635366df0` |
| 16 | `lemma` | [BlaschkeAnalytic](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/blaschkeanalytic.md) | 317 | `result-track:901ae9f86d09fd072613a4af0fc31f41bc11b0524fe9c4ac98d87e687f6c0714` |
| 17 | `lemma` | [BlaschkeOfZero](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/blaschkeofzero.md) | 336 | `result-track:6bcec987e5419d4f875b451253b30a58f54f83220f0def88f3b45f65db1e5e6f` |
| 18 | `lemma` | [norm_fOfZero_le_norm_BlaschkeOfZero](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/norm-fofzero-le-norm-blaschkeofzero.md) | 355 | `result-track:8aea0c30beb6f2732ff7b31d716c158e5ff56557e1473e141d8f1aa56b811ed4` |
| 19 | `lemma` | [DiskBound](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/diskbound.md) | 377 | `result-track:f25a4c40a7dcd93fd66dd89703522ec5ac0eb2aa9a0481a2b2c58274c41e1622` |
| 20 | `lemma` | [BlaschkeNonzero](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/blaschkenonzero.md) | 414 | `result-track:d5ec03c378d5def54e0169677850b9c26df4a22474f1961eb8cb50bdb525a2b6` |
| 21 | `theorem` | [ZerosBound](../../../../GeneralTopology/StrongPNTPrefixEdition1.lean/declarations/zerosbound.md) | 453 | `result-track:1e87fef1b229f38ab9579a120323fb722793ae2aaa6bb9f0134d3351eb8ee82c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d12f505c6cf94c9998f8ede2fe92d4433bbe8571232089fed7ccc0cdc353130a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Variant6114c9ad1121fd95b87dd4a941c8f7cfebdd2ea52596085c5a3bfcb6ffab6cf8.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/StrongPNTPrefix/Variant6114c9ad1121fd95b87dd4a941c8f7cfebdd2ea52596085c5a3bfcb6ffab6cf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
