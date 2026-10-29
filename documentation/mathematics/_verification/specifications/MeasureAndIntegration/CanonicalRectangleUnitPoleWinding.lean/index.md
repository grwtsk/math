# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleUnitPoleWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4710a505ef0a6ee812fba7fbd78b55a6c5760826",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4710a505ef0a6ee812fba7fbd78b55a6c5760826`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding`](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bottomDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/bottomdisplacement.md) | 49 | `declaration-track:43806cfbe6329c69d9a7dee7a9a4ac2d46c2ae8494c0f8a9d294e6ccb1a57dcd` |
| 2 | `def` | [topDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/topdisplacement.md) | 53 | `declaration-track:baf77ec59614383925ad1a1febffadcafef36839ecce126136ca8104438c21e1` |
| 3 | `def` | [rightDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement.md) | 57 | `declaration-track:60214316cb3cc4a84c5335b95dd4907af625e6d6d4072a2a2cfe856288d751dd` |
| 4 | `def` | [leftReflectedDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement.md) | 62 | `declaration-track:2eda8836721a0d7c2cbeb305f78b39840eef155c91447606ea1ed2c126c95d83` |
| 5 | `theorem` | [rightDisplacement_bottom](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-bottom.md) | 65 | `result-track:89a4cda3e67f73181be66e1f555420908e8bfdf18a50a02ebb6e34464f71d105` |
| 6 | `theorem` | [rightDisplacement_top](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-top.md) | 71 | `result-track:e6b6f8565bca3e18f41976bb2a3f0d07ea7e8734e25d9fae6af3dc575376042d` |
| 7 | `theorem` | [leftReflectedDisplacement_bottom](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-bottom.md) | 77 | `result-track:6bd1ee30df361a65b153f94fcea2ce8113ccda6be9d2a53e54ca6533e312dab2` |
| 8 | `theorem` | [leftReflectedDisplacement_top](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-top.md) | 84 | `result-track:45bf951f7e0c5d5078a8082ce0c1025e8851228742f83672d646b6b801b5a8bb` |
| 9 | `theorem` | [bottomDisplacement_mem_slitPlane](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/bottomdisplacement-mem-slitplane.md) | 92 | `result-track:c82402362cf50273f3f4ea87d3de950112972a6fdffec43678d58d74a1f4da29` |
| 10 | `theorem` | [topDisplacement_mem_slitPlane](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/topdisplacement-mem-slitplane.md) | 104 | `result-track:2a9d20baf5b58cfd493bea84fef2e8724cc354f3f9ecb423c8dfceb1045865ca` |
| 11 | `theorem` | [rightDisplacement_mem_slitPlane](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rightdisplacement-mem-slitplane.md) | 116 | `result-track:b5e294e15fa84491016d749a9bb0a0091b7590f9f30b423229133ce86e711cd0` |
| 12 | `theorem` | [leftReflectedDisplacement_mem_slitPlane](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/leftreflecteddisplacement-mem-slitplane.md) | 126 | `result-track:9be8a3760d51e599d79cc1d5523bbdf20a40465ae74e29ab4eefe2f6d3cbfafb` |
| 13 | `theorem` | [hasDerivAt_bottomDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-bottomdisplacement.md) | 136 | `result-track:b67d24533960989e20d455f876b101ed3f94e7e90a708c55f994cddee914f131` |
| 14 | `theorem` | [hasDerivAt_topDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-topdisplacement.md) | 144 | `result-track:2ed387db68010535a1135ada9ae8e4c0a1c89381a504739908dd1455416e4ed3` |
| 15 | `theorem` | [hasDerivAt_rightDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-rightdisplacement.md) | 151 | `result-track:1c3abd748746f5f3f9620526b9a0a6d2cde505b445da66f0908b42418c3fa3ac` |
| 16 | `theorem` | [hasDerivAt_leftReflectedDisplacement](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-leftreflecteddisplacement.md) | 158 | `result-track:16674c0867acbc8be5bfd67225eda03d80cef2d14f374d73064105f8520edc70` |
| 17 | `theorem` | [hasDerivAt_log_bottom](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-bottom.md) | 165 | `result-track:c40fbe7b92440096f0b63817dad72f8f4ba84c360488ef682647ecc4fdf341ee` |
| 18 | `theorem` | [hasDerivAt_log_top](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-top.md) | 174 | `result-track:7823257ae97a12b8f237268f624587f52d0edef1e3cd80480cc798e121bfc802` |
| 19 | `theorem` | [hasDerivAt_log_right](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-right.md) | 183 | `result-track:b8b3e2ac10037eafe7fc0a65d617ff57bf76730bb9bce7f977f636e65a502eec` |
| 20 | `theorem` | [hasDerivAt_log_leftReflected](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/hasderivat-log-leftreflected.md) | 193 | `result-track:10c49b6b3471381b318abd7764ea517c780cd6341ceddf05d185800469445952` |
| 21 | `theorem` | [bottom_unitPole_integral](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/bottom-unitpole-integral.md) | 203 | `result-track:7e84f170a438a6e3c8e5903b3a584de5e1ff85d2870d9024db6e91263ae18f70` |
| 22 | `theorem` | [top_unitPole_integral](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/top-unitpole-integral.md) | 222 | `result-track:bbbae244be03fdcd9d567f31e470dcae92f51e3d17fa80e40a89aaf6b5f9e712` |
| 23 | `theorem` | [right_unitPole_boundaryTerm](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/right-unitpole-boundaryterm.md) | 241 | `result-track:10cf02cd40806ec1bec9c0241dae6bf803523c73911907a232cc2aa35d8dc6dd` |
| 24 | `theorem` | [left_unitPole_boundaryTerm](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/left-unitpole-boundaryterm.md) | 265 | `result-track:648ca365911afe5425809bcc26902fbab764be9ff24af851077276e3d1e5b2d2` |
| 25 | `theorem` | [log_neg_sub_log_of_im_neg](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/log-neg-sub-log-of-im-neg.md) | 302 | `result-track:fbe754cf02c6f233617ec012a6ca787cf4a8c9fc056f51583ba0386c4e2201e4` |
| 26 | `theorem` | [log_sub_log_neg_of_im_pos](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/log-sub-log-neg-of-im-pos.md) | 311 | `result-track:e6389bf8c3f4c1c7cea1d78e7f1c46193fd6103acf045e37f97cf77f9aa8ab4c` |
| 27 | `theorem` | [rectangleBoundaryIntegral_unitPole](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleboundaryintegral-unitpole.md) | 319 | `result-track:cfb0181566dd4c2114f857b2d31f17ff8bdba035d321bad4df825887ba44b053` |
| 28 | `def` | [rectangleUnitPoleWindingCertificate](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleunitpolewindingcertificate.md) | 352 | `declaration-track:67745e3ceb0b7e3234df40283fbdbba909dd9722fe5396e187104bd742c1c0b9` |
| 29 | `def` | [rectanglePrincipalPartWindingCertificate](../../../../MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/declarations/rectangleprincipalpartwindingcertificate.md) | 359 | `declaration-track:c347b85b4314b5194306c3a264770e0961bc432c28abc6b6d01e5322242509a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee7f495a435406ae2c16048f2839a4cc04ac8a7c02aeb223683e78f4fe470aaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
