# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRootFixture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0b1a2504278fe418e1b62f39e45907f38c7f795",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0b1a2504278fe418e1b62f39e45907f38c7f795`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaCommutatorRoot.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ChartIndex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/chartindex.md) | 25 | `declaration-track:2ad3c99f16382e848a3aa2ba095aa28f574749d144e2e192fac222fd4446b933` |
| 2 | `def` | [selfTransition](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/selftransition.md) | 30 | `declaration-track:fccd9f83e27ad5852b013cec13f169f9867bb6631f1e1333ee29e07dbd9e255b` |
| 3 | `theorem` | [selfTransition_isEquivalent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/selftransition-isequivalent.md) | 41 | `result-track:fa5cf484096a25e39d1213090479cdda8822a7346ca0a7da9e48d27fdbe908d3` |
| 4 | `def` | [selfOutcome](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/selfoutcome.md) | 44 | `declaration-track:e301959cdbf3724093294841a2f89a61982c6f2775dc1fec640400772f6cf150` |
| 5 | `def` | [atlas](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/atlas.md) | 48 | `declaration-track:ff0e41c4b37880021ef419bd2eb2db3450824092c53fdb02255f514d03fe5c4f` |
| 6 | `theorem` | [atlas_root_status](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/atlas-root-status.md) | 62 | `result-track:031b2af4157451f45135d15c0862c8bde58d48072941f49611eda9a07fd6eb59` |
| 7 | `theorem` | [not_hasForward](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/not-hasforward.md) | 66 | `result-track:f6ebfef746a2e6e6f96ee3aa36ecd2b5c36813cdbdf09c099415e8175248b0ab` |
| 8 | `theorem` | [hasReverse](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/hasreverse.md) | 73 | `result-track:577c5e8896a84021ebb5fa7649f44f699fd747dd4e12b964116b3f144036314c` |
| 9 | `def` | [forwardGap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/forwardgap.md) | 75 | `declaration-track:fa2fc5955ce1b945eb84d72929ba7f12711a222a2cee56b31138bdd81dadfea8` |
| 10 | `def` | [reverseGap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/reversegap.md) | 84 | `declaration-track:32d3e2a3f19391a941be21b14865c5dd36a903a15b18ff2e2689b745e30105c7` |
| 11 | `def` | [replayGap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/replaygap.md) | 92 | `declaration-track:a15e92b9ac8ca70c8fe683ea8a912ad20e37fc73ac5c8eccdca9b9ed0d725ffb` |
| 12 | `def` | [gaps](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/gaps.md) | 100 | `declaration-track:3889aea2750fde5b207c7e50397cb523464c338554e9a4fe9a987ae964485a25` |
| 13 | `theorem` | [hasOpenForwardGap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/hasopenforwardgap.md) | 102 | `result-track:094f0b56a41204ad644e07f3f7baffd0d6a564e60f3e730302b817519d380cfb` |
| 14 | `theorem` | [hasNoOpenReverseGap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/hasnoopenreversegap.md) | 107 | `result-track:d0cf6cdcf1a9d60e6a9dae70b41a0ae2449587947976351e65b76b253c88aee3` |
| 15 | `def` | [auditEntry](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/auditentry.md) | 112 | `declaration-track:521ec0502c544300d139943a9b2184726dfae87fa34859480ab0c5ac27e05dc5` |
| 16 | `def` | [report](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/report.md) | 131 | `declaration-track:f236dcfc0123d1f6d1b4f2eda7b974eed92e2956491e25e8395d8eb2e985df94` |
| 17 | `def` | [rootStep](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/rootstep.md) | 139 | `declaration-track:fefea9e6cf96ba476a4028ceaa3cde9f0a61ffb02fbe8102f2bf464d0c796619` |
| 18 | `def` | [rootPath](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/rootpath.md) | 154 | `declaration-track:eeb16db482c4e9e6970ab9e770cb770340ff01ad01060a08801a6603490b4e75` |
| 19 | `theorem` | [atlas_not_gapFree](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/atlas-not-gapfree.md) | 157 | `result-track:49941c7fa014fb953925b5fbb91ec4c996fc1bc3431416be94dcf1f1c1430f0b` |
| 20 | `theorem` | [report_not_directionalGapsDischarged](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/report-not-directionalgapsdischarged.md) | 163 | `result-track:67b8d90fc0812715e0abaf14853b4210309a7f95f638b95231e74fa908b5588e` |
| 21 | `theorem` | [no_completeVerticalCoverage](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/no-completeverticalcoverage.md) | 169 | `result-track:6e013a636245c69252977c93052f68ffbccddd4ff61f78814e00b78e69b56299` |
| 22 | `def` | [targetChart](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/targetchart.md) | 178 | `declaration-track:9a0955c2869242857aa4eb51fdb1c4ca4b49f3497ec72296db3f8e7d100097a4` |
| 23 | `theorem` | [binding_matches_targetChart](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/binding-matches-targetchart.md) | 191 | `result-track:3e1f14ba9eed637359739f145128d6ba1737ac63e7cab10daaa1bc5b57e73ff1` |
| 24 | `def` | [targetProfile](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/targetprofile.md) | 193 | `declaration-track:cfd5269171cce50ab30793c5aaa3c73c59e49317f5d767223d84c34be7155e9d` |
| 25 | `theorem` | [targetProfile_status](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/targetprofile-status.md) | 196 | `result-track:aaccffca590cf852c6c3677db2504cb9cf2114442361c56f0348ed121e13dbe2` |
| 26 | `def` | [rootToTargetTransition](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/roottotargettransition.md) | 199 | `declaration-track:d9e8ddac150f76aa081ddd7a645815b0d611906cf6864fb69cd0a70c9aafce5b` |
| 27 | `theorem` | [rootToTarget_notEquivalent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/roottotarget-notequivalent.md) | 210 | `result-track:3f381a9b103d718f1b419adbad0de4dbd4de14408cbb34173d2b175cafa5e855` |
| 28 | `def` | [rootToTargetOutcome](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/roottotargetoutcome.md) | 214 | `declaration-track:976f1880eafee77825c86ede7ba1fdfdc76487c780d61c11f225f3685261d203` |
| 29 | `theorem` | [rootToTarget_coordinate_admitted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/roottotarget-coordinate-admitted.md) | 217 | `result-track:af0a96c56def716819308ca7411f413a6288e8642ca5625dd543e027d3a3cd24` |
| 30 | `theorem` | [rootToTarget_logical_not_admitted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/roottotarget-logical-not-admitted.md) | 221 | `result-track:11c7fecbbfdd97350c30ee52af36c97973167bceda72b4eeb3ada202fc5f1b0c` |
| 31 | `inductive` | [BoundaryChartIndex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundarychartindex.md) | 224 | `declaration-track:4d6c2540447d3e6aa373c58fb53958cb84a910b6196625385af8c0df1c28738c` |
| 32 | `def` | [boundaryChart](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundarychart.md) | 229 | `declaration-track:59df027fee94be4d78e451e3945d55bccc0413252573f90cfd67863de309046c` |
| 33 | `def` | [boundaryCoordinateTransition](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundarycoordinatetransition.md) | 233 | `declaration-track:0d358faf1f5b8578cff4d1007642b08a430655f83c59816190559de47e681e09` |
| 34 | `def` | [boundaryAtlas](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundaryatlas.md) | 239 | `declaration-track:3e6857b2f662a103f2560691132997a946187ad848428fee96345e48b6d74780` |
| 35 | `theorem` | [boundaryAtlas_root_status](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundaryatlas-root-status.md) | 254 | `result-track:b2fe2dbb2ce9c502aa22b94821c6239b1264757072eaa5cf46a36402cb9bd73a` |
| 36 | `theorem` | [boundaryAtlas_target_status](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundaryatlas-target-status.md) | 257 | `result-track:e660446bff5f2fa2ac9a14979be28936762e065c48aac7b0f6e42596923bd430` |
| 37 | `theorem` | [boundaryAtlas_not_gapFree](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRootFixture.lean/declarations/boundaryatlas-not-gapfree.md) | 261 | `result-track:c0bfd74b54e4b4e3bb60af016d9027cb295507e11d392b0ee9942a785f6d8d32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf9ff6167c67d06485082e3fff0c86c96191798cd3c44c064e7101f97b81ad2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripRootFixture.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
