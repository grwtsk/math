# Verification target: Analytic PDE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544b2e06cbfea51980476e61127977bc285dd504",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544b2e06cbfea51980476e61127977bc285dd504`.

Source path: `GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.Heat` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Homology.OrientedFlatness` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Homology.Coverage` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.Homology.QuasiIsomorphism` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RicciFlowMode](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/ricciflowmode.md) | 26 | `declaration-track:e8152e3d8271be6ad59425d55a2b20c1ad4746b9bde34f3dca920e80ee00497c` |
| 2 | `structure` | [AnalyticHeatFlowCertificate](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticheatflowcertificate.md) | 40 | `declaration-track:045337d211c2a4755c7f802ea68d168cfaf555defcf050326f707fd6d3780c79` |
| 3 | `def` | [AnalyticHeatFlowCertificate.certifiedForMajorProof](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticheatflowcertificate-certifiedformajorproof.md) | 71 | `declaration-track:2fce395750206471ac8ee57ddeba6bd4d1ded6442430046a27860830b5723004` |
| 4 | `theorem` | [AnalyticHeatFlowCertificate.certifiedForMajorProof_of_fields](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticheatflowcertificate-certifiedformajorproof-of-fields.md) | 87 | `result-track:b7c2e8f8630d490c0a4cb04cae40fad2b114ea1a0a296ab8fbc01664d6cd2d8e` |
| 5 | `structure` | [RicciFlowTheoremCertificate](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/ricciflowtheoremcertificate.md) | 111 | `declaration-track:e7172014727407ef0001d20a8dc8c0e18e649ff1d579ad2dbcce542901d19ead` |
| 6 | `def` | [RicciFlowTheoremCertificate.certifiedForMajorProof](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof.md) | 150 | `declaration-track:0a5b6932b16f0852d70f646397ab6c4a493156c06ffed42a0084f5812fb138b4` |
| 7 | `theorem` | [RicciFlowTheoremCertificate.certifiedForMajorProof_of_fields](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/ricciflowtheoremcertificate-certifiedformajorproof-of-fields.md) | 162 | `result-track:86fb5a3573689c9859578860f0e452a1a9ab2a7b52a2fc26d91709942f7659f1` |
| 8 | `structure` | [QuasiIsomorphismTheoremCertificate](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/quasiisomorphismtheoremcertificate.md) | 177 | `declaration-track:7117b0882b31c534a041b3b69681edb937b0c6baea107c47612082fed154960d` |
| 9 | `def` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof.md) | 199 | `declaration-track:4e14b1eb0580da402c6cbf3135106cc064ec9a7c64e89025069ab15ab8d140c6` |
| 10 | `theorem` | [QuasiIsomorphismTheoremCertificate.certifiedForMajorProof_of_fields](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/quasiisomorphismtheoremcertificate-certifiedformajorproof-of-fields.md) | 207 | `result-track:ef1979dd0063eea8e7ff9bff3964ee89763ffa9531573e08380145d0b7904527` |
| 11 | `structure` | [HomologyStabilityTheoremCertificate](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/homologystabilitytheoremcertificate.md) | 218 | `declaration-track:355bec66520fc9bb85b79a52d7bd80eab3a721ca1217ca6c1b5cdc6c76068421` |
| 12 | `def` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof.md) | 242 | `declaration-track:06763484a3b5dc975a9da5bb6b3139ba0a8f84abd9438a991107be74da4c3ea7` |
| 13 | `theorem` | [HomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/homologystabilitytheoremcertificate-certifiedformajorproof-of-fields.md) | 251 | `result-track:72015d4178d410594823a57e89fad40ae35a1f8308043d92d605b1c59da15273` |
| 14 | `structure` | [AnalyticPDEHomologyStabilityTheoremCertificate](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticpdehomologystabilitytheoremcertificate.md) | 268 | `declaration-track:f9da56622b735b9b731f28be7e368144420edec2668d0cb992c531108e519607` |
| 15 | `def` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof.md) | 308 | `declaration-track:9b7576dce32475e1c6c4fdd60a1019dc569ad823858a5211520ee30544ea810d` |
| 16 | `theorem` | [AnalyticPDEHomologyStabilityTheoremCertificate.certifiedForMajorProof_of_fields](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analyticpdehomologystabilitytheoremcertificate-certifiedformajorproof-of.md) | 321 | `result-track:c279d91c46acf0f8a7a032e605efabab8cf8790ffd40274b17f829ae56d3cfdb` |
| 17 | `theorem` | [analytic_pde_flow_preserves_declared_homology](../../../../GroupTheoryAndGeneralizations/AnalyticPDE.lean/declarations/analytic-pde-flow-preserves-declared-homology.md) | 341 | `result-track:11366b3ecb97cb209dc49b275e00e76aab7e2adf72631205340a6a33cffcc671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c954507b6dd76a702375956e8f71aec50b219a6e43a66cade5343c6e4c0bc09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/AnalyticPDE/Variant9bd8454942d127c0ec2136b407bb7dbcad353368a6f181b6f2e95a8505014389.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
