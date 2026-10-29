# Verification target: GRWTSK.Algebra.Polynomial.Heat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c7c40d6b2e32ff8b2a39e0876bf316567b4e73d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Polynomial/Heat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c7c40d6b2e32ff8b2a39e0876bf316567b4e73d`.

Source path: `GRWTSK/Algebra/Polynomial/Heat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Polynomial/Heat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Std` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Data.Rat` — import line 3; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.Ring.Rat` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/c.md) | 17 | `declaration-track:064d24a635964c6b32228542ceaaba61ca80a926d519479f59e0231391a2d118` |
| 2 | `abbrev` | [Coeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/coeff.md) | 18 | `declaration-track:55603063a19fa9a50b6814a7f4a57fe20ceada0947d09cc8cb0345d1def0a2bf` |
| 3 | `def` | [cadd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/cadd.md) | 20 | `declaration-track:78fa5aa4ac095d2461f696451bfcfb20b330edae5613b5314e34272ba4e3857a` |
| 4 | `def` | [cmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/cmul.md) | 21 | `declaration-track:a73917c813424ec8efc5ee2d202f4719a088ff6ae07b2f4cc7ae96f5e5e8b9bf` |
| 5 | `def` | [cscale](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/cscale.md) | 22 | `declaration-track:cf8c786a68585aee93a01dfa38639c7a2be0206b6d6a51bba81267662d661551` |
| 6 | `def` | [power2](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/power2.md) | 23 | `declaration-track:c1271b91e1e847968845001d560ba985d7795a4c33d37bc0556034b12968ebeb` |
| 7 | `def` | [power3](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/power3.md) | 24 | `declaration-track:6201c39637b495f639cf67a7bd9de2c0fa02160ac594988fbb765dd4bcb95fc8` |
| 8 | `def` | [power4](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/power4.md) | 25 | `declaration-track:832af5ddde456bf31631d7882b0ba3e50a22d6710bcba6caec2b887ae3b83e47` |
| 9 | `def` | [eval4](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/eval4.md) | 27 | `declaration-track:178be68a1ccc039279df6dd5b4c2ecebb0fc5547b552dabe2a56288ba145d38a` |
| 10 | `def` | [heat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/heat.md) | 32 | `declaration-track:a52ff240231f52448dc0d4ab2f39bbc0f011ecf8156de8458a150b5b090e6dd6` |
| 11 | `def` | [dz](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/dz.md) | 35 | `declaration-track:243d6ff250917b91edcc158652ee13f9241013259587fdf88209060af7c3e163` |
| 12 | `def` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/neg.md) | 36 | `declaration-track:abfbfc1e0b46ec8f18e97e917f3d51194f01d0a7e0e197214b76a863323cb117` |
| 13 | `def` | [dt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/dt.md) | 39 | `declaration-track:b9a0c1b1f8c619f232ece22b55703f7739676c3dacaca4db5df1c06f8b449467` |
| 14 | `theorem` | [polynomial_heat_sign](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/polynomial-heat-sign.md) | 42 | `result-track:163296ffe816faf181e0b54cf14e5d64e56773305389a34acd789f473df724ef` |
| 15 | `theorem` | [heat_semigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/heat-semigroup.md) | 47 | `result-track:5e127f8f1ca403d4feaabde987be71b93edbb8ddacdcb8e14e481c80fbaca1bb` |
| 16 | `def` | [u2](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/u2.md) | 53 | `declaration-track:0afcd382b4afea9d1e613dca5939d69cad1eb1aa72fa10a6597a43bd54510fd3` |
| 17 | `def` | [u4](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/u4.md) | 56 | `declaration-track:722c77dc17933a5b03f2e19c67191ab0c3b5b9e2b94ebfa31be687cedb10c514` |
| 18 | `def` | [evenShift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/evenshift.md) | 57 | `declaration-track:b346590e727922b06082f2993962a1614b54bd0036f0dc84e06399cf845c4642` |
| 19 | `theorem` | [even_shift_expansion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/even-shift-expansion.md) | 60 | `result-track:c4da8e61544fa1bc71a586cca5c2e537c94380afa1ad0c266868334837ac0ad4` |
| 20 | `def` | [transverseMoment](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/transversemoment.md) | 69 | `declaration-track:829c86b65f4a8eb233acf03745abcaf84fe5933de4d4e085c840c168abe786ba` |
| 21 | `theorem` | [transverse_polynomial_bridge](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/transverse-polynomial-bridge.md) | 72 | `result-track:e587bf8516ce60ec28330e614673858e6d7044724b81d7916829c44aa908310e` |
| 22 | `def` | [zCoord](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/zcoord.md) | 79 | `declaration-track:afa6d12ef66ade22e790e577b378e71f470773ae15fe285b50c210387e1bbb2e` |
| 23 | `def` | [wCoord](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/wcoord.md) | 80 | `declaration-track:4b5046a36c5b43e877a824d8abc143799c5b1a6cb11aa302ddabf87f71bfdea6` |
| 24 | `theorem` | [normalization](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/normalization.md) | 81 | `result-track:aae8f170bd9cb728c9c3e5b8955a550df02c2ecd6ed6dcfc7aec87ee711af4c1` |
| 25 | `theorem` | [time_and_collar](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/time-and-collar.md) | 87 | `result-track:f2307570e21deece19cb6c3871aff31f7fd07ed2dafd468e27367a3fba630e62` |
| 26 | `theorem` | [midpoint_and_variance](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/midpoint-and-variance.md) | 91 | `result-track:246b2d17dddb57a481fec885725c3b8d29532ec17b64a4e7da9897d773a7bc87` |
| 27 | `theorem` | [shrinking_collar_center](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/shrinking-collar-center.md) | 98 | `result-track:bb95c0e9945fb0ebcf5e95eeb51e948f5444e19a8f9c6b92f3ae2c4c9f8f7d96` |
| 28 | `def` | [fixedHeat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/fixedheat.md) | 112 | `declaration-track:a883b73c235d2ead152d51a50af27c953d65971511ef4b12afaba7f196d1227a` |
| 29 | `theorem` | [weighted_center](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/weighted-center.md) | 113 | `result-track:4640d223316d812f6bb38cfe79d700f8a41c0963da7b08e6163f7ea6e7b9f545` |
| 30 | `theorem` | [signed_residual](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/signed-residual.md) | 118 | `result-track:26bc954224055b4e6930ad05601a8db8111aaf3d015e9bdf4605b710286ceda2` |
| 31 | `theorem` | [weighted_example](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/weighted-example.md) | 124 | `result-track:76ae009b7c672fd9bfb52fa497cbd6b75b90c740f6d633f73907d606a2298b1a` |
| 32 | `theorem` | [sharper_budget](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/sharper-budget.md) | 129 | `result-track:35bde384776c0fbc6476c388b895568c685f012f9bdacae198ee549dc1c3e013` |
| 33 | `theorem` | [obstruction_residual](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/Heat.lean/declarations/obstruction-residual.md) | 135 | `result-track:a347fa376d9a1f9158cb9488f94fbb39c87b23c2fd023f0f3eade42fb56c72eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f2404636d1ae0fedb98b7f5c7347cb261cf4dc332c9a7f3055a4f24361952a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/Heat.lean","GRWTSK/_verification/specifications/Algebra/Polynomial/Heat.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
