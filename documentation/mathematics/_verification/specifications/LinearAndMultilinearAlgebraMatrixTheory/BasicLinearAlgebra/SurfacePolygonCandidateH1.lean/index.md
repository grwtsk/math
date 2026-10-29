# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3e3eaf5f425a58c1c686aa08df3706aa1812012",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3e3eaf5f425a58c1c686aa08df3706aa1812012`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates`](../../../../../AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Ker` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OneCycleSubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/onecyclesubmodule.md) | 62 | `declaration-track:5a5caaf02db39baf0375275785e171dc66d8bb18e1569b48076939c4b4a29b46` |
| 2 | `def` | [OneBoundarySubmodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/oneboundarysubmodule.md) | 67 | `declaration-track:261e32641e9ae0b22b4f39c6d5ed2423733988ca9be82a40cdac02b4fa6670d1` |
| 3 | `theorem` | [oneBoundary_le_oneCycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/oneboundary-le-onecycle.md) | 72 | `result-track:e7703a511424cd55031d434627e5bb36a6ae69c575d9c16779c1a00376462c49` |
| 4 | `def` | [OneBoundariesInCycles](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/oneboundariesincycles.md) | 86 | `declaration-track:5dedde684664f32b9837d24ef2a39fc426d3cf1425fb36bfe2cf40c03a24ee55` |
| 5 | `def` | [CandidateFirstHomology](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/candidatefirsthomology.md) | 93 | `declaration-track:9f7a5f6bcc62e981018f033b38146451abce29008a5c4443bdc4895ea9de5213` |
| 6 | `theorem` | [oneCycleSubmodule_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/onecyclesubmodule-eq-top.md) | 98 | `result-track:4b786522180ec129549fd1fb3f92231c99e5a00c736d749ca7325efe52f2975a` |
| 7 | `theorem` | [oneBoundarySubmodule_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/oneboundarysubmodule-eq-bot.md) | 105 | `result-track:e265a08a4ac7151fe218b754224529beda63ae800247d523cac72a70bd44db20` |
| 8 | `theorem` | [oneBoundariesInCycles_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/oneboundariesincycles-eq-bot.md) | 113 | `result-track:b45c62800a26751ab92e5c20ef28a62443baa9f61e63babcb9bb015e20e9e7a2` |
| 9 | `def` | [oneCyclesEquivOneChains](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/onecyclesequivonechains.md) | 128 | `declaration-track:d9df1990adb429ac71c284b4650e00ea7b1fac0bd888d04bb12f742603214ed5` |
| 10 | `def` | [candidateH1EquivCycles](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/candidateh1equivcycles.md) | 141 | `declaration-track:f5239e270cfbcbbd58020347c82977730ede86420e50c04790a309efc8d91bb0` |
| 11 | `def` | [candidateH1EquivOneChains](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/candidateh1equivonechains.md) | 149 | `declaration-track:b24f38b999107bbd1b0ad53efb83d70b709089a85ae98e8822b72dca87a6bb73` |
| 12 | `def` | [cycleClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/cycleclass.md) | 155 | `declaration-track:551f7ed8f5e9caef3ecb7df989be7210be4ed056f06da73fe5dcc25702405e9b` |
| 13 | `theorem` | [candidateH1EquivOneChains_cycleClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/candidateh1equivonechains-cycleclass.md) | 161 | `result-track:728d2af80e00d0a7e5ed2675e700713b47df8be02679d99885c0d86bdf6becd7` |
| 14 | `theorem` | [cycleClass_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/cycleclass-surjective.md) | 171 | `result-track:d22f597d7c510edf63e0dab14a2ac207749af8b5f9154221234ed1b3c9327002` |
| 15 | `def` | [candidateH1EquivFreeAbelian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/candidateh1equivfreeabelian.md) | 178 | `declaration-track:1ca64f4de993f36352ad074cf2068aa579c1952e79dc46e1898a059a035086e0` |
| 16 | `def` | [abelianizationEquivCandidateH1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/abelianizationequivcandidateh1.md) | 186 | `declaration-track:e1e6967c6151208ad1fdfb314c176bdf343d26df03ce6c80cc836582eaefe2bf` |
| 17 | `def` | [signedWordH1Class](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/signedwordh1class.md) | 195 | `declaration-track:52117f53b8939dd313004838e3ea5ec5a3db1f8d282a67a6c08e123583130b14` |
| 18 | `theorem` | [abelianizationEquivCandidateH1_signedWord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/abelianizationequivcandidateh1-signedword.md) | 204 | `result-track:58ce9fede3cdf87dcfe24d4d83f1f7255f704b11b0e2631e8a240de2a408060d` |
| 19 | `theorem` | [polygonBoundaryH1Class_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/polygonboundaryh1class-zero.md) | 219 | `result-track:d83693d5c4544288c455230dc2a97cf3d4b01eb456d6562a01ede878226a12dd` |
| 20 | `theorem` | [missingInverseEdgeH1Class_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/missinginverseedgeh1class-ne-zero.md) | 232 | `result-track:fc1676989a0031b2af30e0d5be1b0c019c6b40a0d9e0e720a0bbe1b95a00ba1f` |
| 21 | `theorem` | [firstHandle_nontrivial_but_H1_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/firsthandle-nontrivial-but-h1-zero.md) | 248 | `result-track:e748c8c794f7e5c555269fef7dc3561d304aa5f59dec7fbfb89e50cbe2e1b8d7` |
| 22 | `theorem` | [genus_two_oneCellCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/genus-two-onecellcount.md) | 265 | `result-track:461d83431faaa017241c26cb850ed129fd5e3f7a44e04ba0b8db30f5dc4e6f23` |
| 23 | `theorem` | [genus_three_oneCellCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCandidateH1.lean/declarations/genus-three-onecellcount.md) | 271 | `result-track:dc28d08e46a7241093c35f6bd4a2b62571c47d22aa197ba9debe9ce5e1d011f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c083fdec368f17f62a0c6977f39795c981b2ec76e2051d4d54d58e3736c9cef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
