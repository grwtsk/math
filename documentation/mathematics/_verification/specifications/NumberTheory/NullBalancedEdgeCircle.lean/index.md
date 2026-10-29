# Verification target: Null Balanced Edge Circle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1c5f3fced35f66b4b5f0f7630cde9a9ce18379e",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NullBalancedEdgeCircle.lean/index.md) · [Full source](../../../../NumberTheory/NullBalancedEdgeCircle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1c5f3fced35f66b4b5f0f7630cde9a9ce18379e`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.DirectionalChain` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Cube.EdgeRelaxation.Tree` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Cube.CountableBooleanCylinder` — import line 3; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ArithmeticAuthorities` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DyadicMass](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/dyadicmass.md) | 55 | `declaration-track:bab48cc2ae9f0de7da9835ebbedbcefb820e11b09af8b78151754fb5e0d84403` |
| 2 | `def` | [halfMass](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/halfmass.md) | 61 | `declaration-track:fb59d50fbf35aca1d4922d4fddbd1f49ecd39ae16beb0c6a1d547b6d50c73fd4` |
| 3 | `def` | [quarterMass](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/quartermass.md) | 64 | `declaration-track:f22f956225924510077e003a3db8997b163fc8de3effe847f37df93ce9898e95` |
| 4 | `inductive` | [BinaryCylinder](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binarycylinder.md) | 67 | `declaration-track:37c357b10350b8537922ee20e224eb0b6ba623a00f31d7144d1e4cb4f52eae27` |
| 5 | `structure` | [BalancedBinaryNullPoint](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/balancedbinarynullpoint.md) | 79 | `declaration-track:d43a872ee7375abe1e3f2a89e972050de5ab0272d9b7cdee2be4596f72a4c5c1` |
| 6 | `theorem` | [balanced_null_zero_half](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/balanced-null-zero-half.md) | 94 | `result-track:c630585ace02ce7914b7cec177c28dd6fc27f1029f867909d29674b2274c878e` |
| 7 | `theorem` | [balanced_null_one_half](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/balanced-null-one-half.md) | 99 | `result-track:1613c5b28cb79ba78f740087c441e12456b265b2e4ff8d859db89cea84cbe82b` |
| 8 | `theorem` | [balanced_null_directed_transitions](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/balanced-null-directed-transitions.md) | 104 | `result-track:a06ae085df3129a3a9c06141603700ae3f095f44c30ccb54dbf344baf4805a38` |
| 9 | `structure` | [DirectionalNullBalance](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/directionalnullbalance.md) | 117 | `declaration-track:96e10e4786e364df58af8bcd1a7453a5dfc8ee16746fd17f4304e22a2940bf86` |
| 10 | `def` | [binaryDirectionalNullBalance](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binarydirectionalnullbalance.md) | 132 | `declaration-track:11b3ec1d4b963e621954c175850558c6285a084884570313fbb10792b2d1eac4` |
| 11 | `structure` | [DirectedEdgeRelaxation](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/directededgerelaxation.md) | 158 | `declaration-track:7786b271a9150e527597adf9845070c2ad139530eecc4be5479591586fc45f14` |
| 12 | `structure` | [BinaryDirectedEdgeRelaxation](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binarydirectededgerelaxation.md) | 172 | `declaration-track:590e26fce005cc1756109c6a09f0dd36b81756d5ba0141113e8ba0a23cc36cb4` |
| 13 | `def` | [binaryDirectedEdgeRelaxation](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binarydirectededgerelaxation-source-edition-2.md) | 185 | `declaration-track:6ea16b708ded46d896ef7b049113f186147f5fcd68710bf2a66eb14e62e6a643` |
| 14 | `structure` | [LocalAnalyticLimitCertificate](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/localanalyticlimitcertificate.md) | 198 | `declaration-track:e5aa09b98465a70c0dce719dd6c84870701440c0c438d285c87685f89f652e43` |
| 15 | `theorem` | [local_analytic_limit_certificate_sound](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/local-analytic-limit-certificate-sound.md) | 212 | `result-track:74550b1c97cf15737a320c00e96c2be9307c28764e3b7af92ca0be450dcf65ab` |
| 16 | `structure` | [DeltaRingDirectionalRealization](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/deltaringdirectionalrealization.md) | 226 | `declaration-track:b273db6cd565b778694717bd7d810ef020af47f42f7f8d1bfae5599271b4b9b2` |
| 17 | `theorem` | [delta_realization_authority_sound](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/delta-realization-authority-sound.md) | 255 | `result-track:aab5c8cb406f028c386515efdd36fd46228987332873d4f405fd1efce20f051b` |
| 18 | `structure` | [PrismaticEdgeCircleClass](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/prismaticedgecircleclass.md) | 271 | `declaration-track:4f2d9e7cfa552f3d3f6e33ed5792b1c887ec5a47062ea266215697fe27d98334` |
| 19 | `theorem` | [prismatic_edge_circle_class_sound](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/prismatic-edge-circle-class-sound.md) | 285 | `result-track:494250c3efcbc4f238d24b80da752b83ecd87ce2091fa001678a39a244bd7334` |
| 20 | `structure` | [NullBalancedPrismaticEdgeCircleLimit](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullbalancedprismaticedgecirclelimit.md) | 300 | `declaration-track:44109fece5cb401461aac680f67f17784bf0336730043df55f24dc9e65e0f7a1` |
| 21 | `theorem` | [null_balanced_prismatic_edge_circle_limit_sound](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-balanced-prismatic-edge-circle-limit-sound.md) | 328 | `result-track:93032954acd209aa7cc678071ed2288dbaf5b8d0c89f943541bfd813579c5f0a` |
| 22 | `abbrev` | [BinaryNullBalancedPrismaticEdgeCircleLimit](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binarynullbalancedprismaticedgecirclelimit.md) | 358 | `declaration-track:e71d7c37833c7a7a460c3136dee187672574658a6f3f84dc0340c806ad4622cd` |
| 23 | `theorem` | [binary_null_balanced_edge_circle_closed](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binary-null-balanced-edge-circle-closed.md) | 363 | `result-track:d9028be72b077fc9e07f01385a6a56295a1fa0103a202da38ab0a81b027c4db5` |
| 24 | `theorem` | [binary_null_balanced_prismatic_edge_circle_limit_sound](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/binary-null-balanced-prismatic-edge-circle-limit-sound.md) | 367 | `result-track:8cd34498ec5e1aaa111525b7287c65113161997b0449cc7109a294366f5bf0d7` |
| 25 | `structure` | [NullCircleToPrismaticComparisonBridge](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullcircletoprismaticcomparisonbridge.md) | 391 | `declaration-track:da558ee9529cbca1a12ef4e44f9fa8daec11a20de9744ff4c34a080fd8522fb6` |
| 26 | `theorem` | [null_circle_yields_prismatic_comparison](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-circle-yields-prismatic-comparison.md) | 405 | `result-track:16578578d95fa873c856ec4748c1b2786637206f64f1eaa01c0fd92ca0324861` |
| 27 | `structure` | [NullCircleToTraceFormulaBridge](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullcircletotraceformulabridge.md) | 420 | `declaration-track:d05b1e196c125ebd355ae5e837bf7e1b4479142bcbb369f133ce58202baa3763` |
| 28 | `theorem` | [null_circle_yields_trace_formula](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-circle-yields-trace-formula.md) | 432 | `result-track:31ec22b2ef6de32e15c0a98bdabd6ce6c84c35deb3145d960e7e19a043992582` |
| 29 | `structure` | [NullCircleToAnalyticContinuationBridge](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullcircletoanalyticcontinuationbridge.md) | 445 | `declaration-track:18afa6eb4086cdd35b9d361af2307f66cddf9acaaba52c9042dc32855b7dca63` |
| 30 | `theorem` | [null_circle_yields_analytic_continuation](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-circle-yields-analytic-continuation.md) | 457 | `result-track:38ae9e878fa16723f496a178f121dc92c87fb2fc2460b540adcd495675983c01` |
| 31 | `structure` | [NullCircleToRiemannHypothesisBridge](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullcircletoriemannhypothesisbridge.md) | 470 | `declaration-track:074cf50089403620c9e84f49504e0699efe4456178bc8bd56c49d37789358697` |
| 32 | `theorem` | [null_circle_yields_riemann_hypothesis_statement](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-circle-yields-riemann-hypothesis-statement.md) | 484 | `result-track:ab4bcdaf6bffe117a19ecc0fc4726ce4c8df9b4502c79de51e5ecafcfa2b57c1` |
| 33 | `def` | [NullBalancedEdgeCircleLimitOwnsGlobalAnalyticTheorem](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/nullbalancededgecirclelimitownsglobalanalytictheorem.md) | 501 | `declaration-track:c64a8b15fd7b8bf82f7c1cf67d2c103f71967eee6feb6f65ed43670060be30c5` |
| 34 | `theorem` | [null_balanced_edge_circle_not_global_analytic_authority](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-balanced-edge-circle-not-global-analytic-authority.md) | 507 | `result-track:e1fd858daa4539c59d98f4f53015222b52d1842da28bcecd4e89ad7920ad34ae` |
| 35 | `theorem` | [null_balanced_edge_circle_boundary_summary](../../../../NumberTheory/NullBalancedEdgeCircle.lean/declarations/null-balanced-edge-circle-boundary-summary.md) | 515 | `result-track:dc7970c2cef4e4bcd3836a68fa64b7ce8fad13e8c6b2828e80b082bf0ea99ebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3de81fd7a34a3ae09d40a1d5ace58f9d5dfefe50bc0ab0ffa12e3552f289ecbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/NullBalancedEdgeCircle/Variant59fa340f4e93b2dc6559a6f1a0c112f2e7e8dd31e80c776b427b8fc02229258a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
