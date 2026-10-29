# Verification target: Cardinality Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77851ceeea073775b1b7424eaf306c74c87adde4",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant7639bea78f4bd4e4183f66db16f71b1a94230bb7239664fa75f15f313c53aee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CardinalityNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/CardinalityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77851ceeea073775b1b7424eaf306c74c87adde4`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant7639bea78f4bd4e4183f66db16f71b1a94230bb7239664fa75f15f313c53aee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Cardinality/Variant7639bea78f4bd4e4183f66db16f71b1a94230bb7239664fa75f15f313c53aee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cardinal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Continuum` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cantorFunctionAux](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux.md) | 65 | `declaration-track:9d916500ecc5cda2ab1fba249ce73f404ac39ab5a3eda92b65fd5d4c020138e2` |
| 2 | `theorem` | [cantorFunctionAux_true](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-true.md) | 69 | `result-track:0a6df3befa7e4ebada1f2df497ec4cae002658831cdcc4ff0f93300930c308af` |
| 3 | `theorem` | [cantorFunctionAux_false](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-false.md) | 73 | `result-track:a2158b76d30cb87de7123d2ff9535ca8291b06f202ffe7eb7808109300b1bbf9` |
| 4 | `theorem` | [cantorFunctionAux_nonneg](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-nonneg.md) | 76 | `result-track:f45a1cb5a8df32c8199be3998fb3a0094bd1003059121b7177ff622f0527f5fb` |
| 5 | `theorem` | [cantorFunctionAux_eq](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-eq.md) | 81 | `result-track:5bacedc092393ac7829756179488093d2d03dbb55d2a432b1b4463862e7ff226` |
| 6 | `theorem` | [cantorFunctionAux_zero](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-zero.md) | 84 | `result-track:bb65cbb20a221a8ed12d126f37fb0be8abf3c344c6d4280fec3d33b06e048fcc` |
| 7 | `theorem` | [cantorFunctionAux_succ](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunctionaux-succ.md) | 87 | `result-track:c0bb2aefb1f7cf27b92c5a2bfbc2cdfdbcac9579f02bf6fd427febc5abdc9d80` |
| 8 | `theorem` | [summable_cantor_function](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/summable-cantor-function.md) | 93 | `result-track:f8025c1b9fcdcda8a2008382bf900609dda64206fd0e16094f760cdd74714448` |
| 9 | `def` | [cantorFunction](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunction.md) | 100 | `declaration-track:6042d9c2feee0680f1067e4c8197ae30ec2c0f6a8ba6498f5f84dd365fd746b7` |
| 10 | `theorem` | [cantorFunction_le](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunction-le.md) | 103 | `result-track:9331d5acd7404c79b704620b087000c354cc3cde0e98f87a6c2e525ee2d136d8` |
| 11 | `theorem` | [cantorFunction_succ](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunction-succ.md) | 110 | `result-track:f7472eebe44f6d6e5d78a5aacb9dba96e7f875387545b2320173012e5b289b01` |
| 12 | `theorem` | [increasing_cantorFunction](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/increasing-cantorfunction.md) | 118 | `result-track:259be8478410e37924a31f80717113485ea22d1bbbd2a55edde8509f3902b23f` |
| 13 | `theorem` | [cantorFunction_injective](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/cantorfunction-injective.md) | 162 | `result-track:c78dddb6523c01c303f2670832848e32e28a1aac1892859ffb55d50349e04fe2` |
| 14 | `theorem` | [mk_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-real.md) | 188 | `result-track:13eb6384a2c3884d1bc7d71d689ce32119970ab022dab62303c5f56e3a8dc029` |
| 15 | `theorem` | [mk_univ_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-univ-real.md) | 201 | `result-track:ffb12760f35b8774fdf4ed0e21a1e5345c813b7e8004b422f3495ecab12e9a0a` |
| 16 | `instance` | [(anonymous)](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/instance.md) | 204 | `declaration-track:c6f3703950d148ae00ac22018fe9b77b0e2239fca40fd8931f3a561a4b5cdc1a` |
| 17 | `theorem` | [not_countable_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/not-countable-real.md) | 208 | `result-track:9b189563a043e751e57b7d42f0c8c9a9395a12051f85dd64721dfee1e3f3ecb1` |
| 18 | `theorem` | [mk_Ioi_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-ioi-real.md) | 212 | `result-track:4b0e9b6c0c65be45dd79f039023ff85214ccb0486ddf62637bab882da2cec201` |
| 19 | `theorem` | [mk_Ici_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-ici-real.md) | 233 | `result-track:0c301bc50feae6ca51688a0f104581688b97d3eab0ca953d84921df61670ab20` |
| 20 | `theorem` | [mk_Iio_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-iio-real.md) | 237 | `result-track:f5940b359d7e4afe9afdb806eaabdd72b4ed4e11eb6cbd36d513702f823ac771` |
| 21 | `theorem` | [mk_Iic_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-iic-real.md) | 244 | `result-track:68c13929d32198b9b5bd0194b2931ecfc74072cb2d8c04062f41f865f71d24b6` |
| 22 | `theorem` | [mk_Ioo_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-ioo-real.md) | 248 | `result-track:e633eac262f51ecc2197abd411ee91400aba2ff18e0a159b0ecb19ae84ec0d85` |
| 23 | `theorem` | [mk_Ico_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-ico-real.md) | 259 | `result-track:c2f5f3146c3232d12149ea9a666260869e9ff6dcbf7c4996ab4941541c1550a3` |
| 24 | `theorem` | [mk_Icc_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-icc-real.md) | 263 | `result-track:8fd2f14aa131f1243982ca50a8e7803d7fbb72896f90fa8924fe46bd11daff01` |
| 25 | `theorem` | [mk_Ioc_real](../../../../RealFunctions/CardinalityNamespaced.lean/declarations/mk-ioc-real.md) | 267 | `result-track:a03c280842a94fd62c967e71b3d44f21d9ca041c072966f8a919a99eaefb26af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c12683401c0106076888b456aab3d72c33a3343c8c59e20da761464c256036b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Cardinality/Variant7639bea78f4bd4e4183f66db16f71b1a94230bb7239664fa75f15f313c53aee6.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Cardinality/Variant7639bea78f4bd4e4183f66db16f71b1a94230bb7239664fa75f15f313c53aee6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
