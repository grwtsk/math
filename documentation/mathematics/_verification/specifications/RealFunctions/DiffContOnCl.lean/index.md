# Verification target: Diff Cont On Cl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f7ad0b9609c6a59e48d47f91ea481a63056ab2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DiffContOnCl.lean/index.md) · [Full source](../../../../RealFunctions/DiffContOnCl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f7ad0b9609c6a59e48d47f91ea481a63056ab2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiffContOnCl](../../../../RealFunctions/DiffContOnCl.lean/declarations/diffcontoncl.md) | 29 | `declaration-track:2db9c7b356945314423a94ad968d95518b84121b7ab1941c27cbb40b7c7a366a` |
| 2 | `theorem` | [DifferentiableOn.diffContOnCl](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiableon-diffcontoncl.md) | 35 | `result-track:711eb726942537b9fa55baa3a4024dbb4ab384ac9907135a51209e1b0b73a61c` |
| 3 | `theorem` | [Differentiable.diffContOnCl](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiable-diffcontoncl.md) | 38 | `result-track:ec7d9886a504f63f4c13a9c41745f4443edaa841e7626a5da0e6a5998525ebfa` |
| 4 | `theorem` | [IsClosed.diffContOnCl_iff](../../../../RealFunctions/DiffContOnCl.lean/declarations/isclosed-diffcontoncl-iff.md) | 41 | `result-track:5cb7bab93ebdbffbad5fa53e76016766d50c028d74bd33d9ec1448ebd3712eeb` |
| 5 | `theorem` | [diffContOnCl_univ](../../../../RealFunctions/DiffContOnCl.lean/declarations/diffcontoncl-univ.md) | 44 | `result-track:a1596de3d104be71b0db4730ca5495cd437059fe20ce29645686088ffde7bb74` |
| 6 | `theorem` | [diffContOnCl_const](../../../../RealFunctions/DiffContOnCl.lean/declarations/diffcontoncl-const.md) | 47 | `result-track:6886e97264a5cf5ebbd8cf62097349c0c8cf5277fb5d23cd8890cc7ac2b5ee55` |
| 7 | `theorem` | [comp](../../../../RealFunctions/DiffContOnCl.lean/declarations/comp.md) | 52 | `result-track:5aa8a45330b0cc05ad850f080cd24d0d7d962c719ee08fd936d48a545fafdf7f` |
| 8 | `theorem` | [continuousOn_ball](../../../../RealFunctions/DiffContOnCl.lean/declarations/continuouson-ball.md) | 56 | `result-track:12f01881c539aa8223bb6ba7a2cea1342fc7249b0c2bf0de1187dcc864f3f71c` |
| 9 | `theorem` | [mk_ball](../../../../RealFunctions/DiffContOnCl.lean/declarations/mk-ball.md) | 64 | `result-track:b1299dbebc0a03f4c4688aaafa648a3ecc1d8b9856221f4c5b92d3a374fe113e` |
| 10 | `theorem` | [differentiableAt](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiableat-source-edition-2.md) | 68 | `result-track:2f13342559d3b4879e9d8bc1cd018b65fb429a84c413e46a415a6b81770cabfd` |
| 11 | `theorem` | [differentiableAt'](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiableat.md) | 72 | `result-track:1c55b55800bbdb7813f27e0f151d3e4873c57236e1d308d9fd1ce4e73cc3ac02` |
| 12 | `theorem` | [mono](../../../../RealFunctions/DiffContOnCl.lean/declarations/mono.md) | 75 | `result-track:8ff1068029bff8dc922a1cf1923f813bc6a6542717c5dc659e63587ebae3c801` |
| 13 | `theorem` | [add](../../../../RealFunctions/DiffContOnCl.lean/declarations/add.md) | 78 | `result-track:59e79e298936f2f305dd2849815b8c990618ed6dbc35489d31697ed5f2104dc9` |
| 14 | `theorem` | [add_const](../../../../RealFunctions/DiffContOnCl.lean/declarations/add-const.md) | 81 | `result-track:26f120d385ae1f26b0c3f54ee2656802f4c181cb84f78d492f44fc0076204186` |
| 15 | `theorem` | [const_add](../../../../RealFunctions/DiffContOnCl.lean/declarations/const-add.md) | 84 | `result-track:5917774665bb2ed473daa9ef4242869c080473136d8d316eee06cacb977a357b` |
| 16 | `theorem` | [neg](../../../../RealFunctions/DiffContOnCl.lean/declarations/neg.md) | 87 | `result-track:322325fdb4af8dd50c025beebef60367647a655085d7dbe9d74b8a380295be7e` |
| 17 | `theorem` | [sub](../../../../RealFunctions/DiffContOnCl.lean/declarations/sub.md) | 90 | `result-track:4df0710673abb6be355a90ab474814f03c4b324e1d07b059cc6bba9afc9721d6` |
| 18 | `theorem` | [sub_const](../../../../RealFunctions/DiffContOnCl.lean/declarations/sub-const.md) | 93 | `result-track:89609d1cf05c6be70a4af7570450c9ecdc290aba36ff619a5a387d04eceeda1e` |
| 19 | `theorem` | [const_sub](../../../../RealFunctions/DiffContOnCl.lean/declarations/const-sub.md) | 96 | `result-track:1fa571dbc03327bcc5667ba72ae34115e4924970d256a2d020fba490a690f870` |
| 20 | `theorem` | [const_smul](../../../../RealFunctions/DiffContOnCl.lean/declarations/const-smul.md) | 99 | `result-track:9ca4856c319c0c0fbbe447985ec991d0e06119eef50038defd8c68ccbb0f5e26` |
| 21 | `theorem` | [smul](../../../../RealFunctions/DiffContOnCl.lean/declarations/smul.md) | 103 | `result-track:5a0019506dd90414d84b93f4ca5a7d997e83a1cb08c1e8d93b992e0d3d57765e` |
| 22 | `theorem` | [smul_const](../../../../RealFunctions/DiffContOnCl.lean/declarations/smul-const.md) | 108 | `result-track:a2a63a1060229beb4217ec4c523529310cf56685ffeab42f6f0b8a1604075820` |
| 23 | `theorem` | [inv](../../../../RealFunctions/DiffContOnCl.lean/declarations/inv.md) | 113 | `result-track:de8a412c55bdcc43198209e2db81c3eee5f38953bcf80a5081594b4f7c43c77c` |
| 24 | `theorem` | [Differentiable.comp_diffContOnCl](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiable-comp-diffcontoncl.md) | 119 | `result-track:fda9f423558f266a7478917caaa2a79c345ccdd03db2193301247bc9f8cfb502` |
| 25 | `theorem` | [DifferentiableOn.diffContOnCl_ball](../../../../RealFunctions/DiffContOnCl.lean/declarations/differentiableon-diffcontoncl-ball.md) | 123 | `result-track:10872c31b08df3b02de3f03f14de0c4f1c461aa8a47c4ef001f8def29464b780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6f15c1ff74856b6e39c8e4d59a6357b96632b26a29d93bff8a616eab98be048 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/DiffContOnCl/Variantf68a23388a37a1fe15511cde434bf064b8b873b8cf9b97d4f143eb5c7ccbada9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
