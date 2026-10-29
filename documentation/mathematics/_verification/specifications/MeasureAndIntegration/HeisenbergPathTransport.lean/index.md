# Verification target: Heisenberg Path Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b175de72b879bc8213ac9def4597df6dfedfc2a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant4074a9a2baade0b558c02464d5282c12530933a491546ab2a5817828306af68b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b175de72b879bc8213ac9def4597df6dfedfc2a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant4074a9a2baade0b558c02464d5282c12530933a491546ab2a5817828306af68b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant4074a9a2baade0b558c02464d5282c12530933a491546ab2a5817828306af68b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/instance-source-edition-3.md) | 34 | `declaration-track:2c731f10795c255e08275f503b85783b30c64dbdba67a086967392bf90b9bec8` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:24ec40c464f01b998e9743a112cf56d5de5ba0579bf3b493efc0b36330b110f1` |
| 3 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/instance-source-edition-4.md) | 36 | `declaration-track:5f7c17ea850c615d988232597ef8c755c05db14881ebf8d647a75711b46c7f9e` |
| 4 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/instance.md) | 37 | `declaration-track:152aec45159fa48ba148b94306e593d3f2e7b403e6933afce1b8e7fc560e00fb` |
| 5 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/instance-source-edition-5.md) | 38 | `declaration-track:e4e95027acccb325ba6f3b0c35aab8650c1b2ab82009648d3c53f5643adfa83a` |
| 6 | `def` | [connection](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/connection.md) | 43 | `declaration-track:86718d80c15e8f74777528f84fe9bda404d0b528e54e5f8a40bd715642e87640` |
| 7 | `def` | [edge](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edge.md) | 51 | `declaration-track:017ff12c772092b0548f044bf7d1ab5df8fe52c8c7c9a0803d6ca13acb25d78c` |
| 8 | `theorem` | [edge_hasDerivAt](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edge-hasderivat.md) | 53 | `result-track:962ae963189eb3536839bcb1491dd381bf8ecac5735eac98eb1b47d4fab63833` |
| 9 | `theorem` | [connection_edge](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/connection-edge.md) | 57 | `result-track:3a5738189b027912eb7cbbbe750f79f5df343bcea3d7ec48f99325fdbc3de39f` |
| 10 | `def` | [edgePhase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgephase.md) | 64 | `declaration-track:c03d75d5e6044b4dce794d1ebbab58f4fb66562c5d6924bd2d623a51a64c4eb1` |
| 11 | `theorem` | [edgePhase_eq](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgephase-eq.md) | 67 | `result-track:39056767605c81fa2eceaf7afd72518e805db88a3abc6ab847809a1311c57a78` |
| 12 | `def` | [edgeCenter](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgecenter.md) | 72 | `declaration-track:b27fb84ecddd575bb5876c4e287c329b9eaff152696744a45693428da313a334` |
| 13 | `theorem` | [edgeCenter_hasDerivAt](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgecenter-hasderivat.md) | 74 | `result-track:3ae8ba66a2c932e21be17abaaa90ff5e5878d66dc32be39fd80c983fad3b4be9` |
| 14 | `def` | [edgeTransport](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgetransport.md) | 80 | `declaration-track:86d4702b6f78d727b33c5357fe322346734e4cac16bda248f4310726d80d5cda` |
| 15 | `theorem` | [edgeTransport_eq_multiply](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/edgetransport-eq-multiply.md) | 83 | `result-track:3c43ef9ef0ca96c6228300c21a748ff493358bc9453d379f7b06f402730dd76a` |
| 16 | `theorem` | [triangle_phase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/triangle-phase.md) | 92 | `result-track:d1be1cf0b5873235f1e541905d6d98d1adfca85f5af012ee5b64a0a730c134fe` |
| 17 | `theorem` | [collinear_refinement](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/collinear-refinement.md) | 97 | `result-track:cdb50f74256aea4aa0c627340ca847e428b9548717996f3a610397ac8ded387e` |
| 18 | `theorem` | [reverse_phase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/reverse-phase.md) | 103 | `result-track:454d9e92694daeeff771d738e1bfe1569099fa789235b039dc92bfac51af1f83` |
| 19 | `theorem` | [scaled_phase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/scaled-phase.md) | 107 | `result-track:b2aa844362fd0f2bc1f4e52702a07effe5dbb6324abd19cf13981923e1e2ed58` |
| 20 | `def` | [squareLoop](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/squareloop.md) | 112 | `declaration-track:90e94bca308c052ef9cf043cbd9be28cc55bdf975ca903477c46300615a2b537` |
| 21 | `def` | [projectedContraction](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/projectedcontraction.md) | 118 | `declaration-track:a8f711f83a9d6caa782b0ffc0635a2530758e4274979f8d9d66788857e4b32dd` |
| 22 | `def` | [squareContraction](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/squarecontraction.md) | 128 | `declaration-track:496c81c29920c955147588c1e9a0b64e8422f3ccefae380ec08f0c35ca507a3d` |
| 23 | `def` | [squarePhase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/squarephase.md) | 130 | `declaration-track:cc112e0901ca872dd2029f72fd8d4fda533851a9411748f916067af596f0948d` |
| 24 | `theorem` | [squarePhase_eq](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/squarephase-eq.md) | 134 | `result-track:d7120949b3dd3f69968195e7467e38ce6c0679be5d81f4c84a6beeb5b93d8f61` |
| 25 | `theorem` | [square_horizontal_endpoint](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/square-horizontal-endpoint.md) | 139 | `result-track:6bb0da87930ae894e7ccc2e95748d5d77230f6fe9dd96a6b30431d5fdd64aaf8` |
| 26 | `theorem` | [square_horizontal_endpoint_ne_one](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/square-horizontal-endpoint-ne-one.md) | 144 | `result-track:6ff5496555edcfd0c4339ba518ad7201bdf9775c4e2ad93688eb1ee851fbf810` |
| 27 | `theorem` | [ordinary_contraction_retains_phase](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/ordinary-contraction-retains-phase.md) | 152 | `result-track:b6499ff46c2fee8206429ba4a2f2b027b0109d78a0ea53aea2dd38da2ca8c410` |
| 28 | `theorem` | [square_matrix_endpoint](../../../../MeasureAndIntegration/HeisenbergPathTransport.lean/declarations/square-matrix-endpoint.md) | 156 | `result-track:657f975b860906b371aa6a5e99ae3eb59c8f40116e7e6873fe433586a1829f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79852689793c15f3ce036f11e67b8fcd260610b13e20df4a0174e7efe8562f25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant4074a9a2baade0b558c02464d5282c12530933a491546ab2a5817828306af68b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/HeisenbergPathTransport/Variant4074a9a2baade0b558c02464d5282c12530933a491546ab2a5817828306af68b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
