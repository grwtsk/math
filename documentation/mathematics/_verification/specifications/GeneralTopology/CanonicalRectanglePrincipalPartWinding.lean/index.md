# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "807b9cc5c0a74f22c51232ac068d7a354cacc0b5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/index.md) · [Full source](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `807b9cc5c0a74f22c51232ac068d7a354cacc0b5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleResidueAccounting`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalRectangleResidueAccounting.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitPole](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/unitpole.md) | 45 | `declaration-track:1753f08dea8d7cd341e37525b131a98f413dbe487431024914c235972d888259` |
| 2 | `structure` | [RectangleBoundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/rectangleboundaryintegrable.md) | 48 | `declaration-track:7167f5a1f0c11cb39a05ff078a252407058449a34b25824c6901d2d8bb20a229` |
| 3 | `theorem` | [zero](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/zero.md) | 58 | `result-track:ab6f0f1854f54c5fb00b7f206f2fac7dbbd8e84ed4f0d42e0d59adea8121ee72` |
| 4 | `theorem` | [add](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/add.md) | 63 | `result-track:d19b580bac424c654db3706c026da0fa17b5ef2c66bd258857575dc48acfd46c` |
| 5 | `theorem` | [const_mul](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/const-mul.md) | 70 | `result-track:e4e1da89c6fdf6a910495502efe1f7b155ee059a5690d75f8358b26413191808` |
| 6 | `theorem` | [neg](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/neg.md) | 76 | `result-track:65402dfd0a06cd62391b5c11bc1c1ff559cfc0ec599b1a64ae68b8584c8210c8` |
| 7 | `theorem` | [finsetSum](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/finsetsum.md) | 81 | `result-track:4ce787e3ec4bb8e173bc8f9bd8477547d50b7733867dca582f7d8c575210123b` |
| 8 | `theorem` | [rectangleBoundaryIntegral_add](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/rectangleboundaryintegral-add.md) | 100 | `result-track:744f100aa77763daa2bf3a4648cbd4143ab176554559b713d47f0a7d586b1cc5` |
| 9 | `theorem` | [rectangleBoundaryIntegral_const_mul](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/rectangleboundaryintegral-const-mul.md) | 113 | `result-track:ce8d90299bfbbff64dee5f4af595e289ca3de4e668a2ef46cfa285736aa0761a` |
| 10 | `theorem` | [rectangleBoundaryIntegral_finsetSum](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/rectangleboundaryintegral-finsetsum.md) | 123 | `result-track:8f1efd0a185aa7246cbefb6d1ef2e1aa622373ff1092c9cedd46940a67dc5d0e` |
| 11 | `theorem` | [mem_openRectangle_iff](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/mem-openrectangle-iff.md) | 140 | `result-track:1ef659630bda9fcab7c50d45449484bae0d75903de04db9a2b7f41976b7989fa` |
| 12 | `theorem` | [interior_subset_openRectangle](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/interior-subset-openrectangle.md) | 153 | `result-track:f5804af751a067a4231cc088f90770553a33c5970ae742d9f100474327e1d1e4` |
| 13 | `theorem` | [nontrivial_mem_openRectangle](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/nontrivial-mem-openrectangle.md) | 161 | `result-track:cd859caacfe8db6d2266bb33abba17e1a22f742aed9591f6830ca1642e7e33f1` |
| 14 | `theorem` | [trivial_mem_openRectangle](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/trivial-mem-openrectangle.md) | 167 | `result-track:15101d1b31cdf9df0fb62d5eef6fc75b9bc161eaa9e8355cbdfe50087a96cfe0` |
| 15 | `theorem` | [one_mem_openRectangle](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/one-mem-openrectangle.md) | 172 | `result-track:6ac1532771461327d58a39585ca86734117382c475bb7e40783c1a5169149a85` |
| 16 | `theorem` | [unitPole_boundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/unitpole-boundaryintegrable.md) | 178 | `result-track:3d05fbb8559e5bbfe2092bc01db61051aa4b5304898f0b5cd11576dc975a5c0d` |
| 17 | `structure` | [RectangleUnitPoleWindingCertificate](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/rectangleunitpolewindingcertificate.md) | 223 | `declaration-track:30bad044b9bef1b5f4de085f21240f53ccc34f4a1f8f5ed443cf2102c01f532e` |
| 18 | `theorem` | [nontrivial_boundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/nontrivial-boundaryintegrable.md) | 231 | `result-track:73f89f64643a2cbe13c650aab31d50f61d02a81d22d2bd128f8dc82675c013bf` |
| 19 | `theorem` | [trivial_boundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/trivial-boundaryintegrable.md) | 243 | `result-track:2c9f31ed34a5cb3d100c11e475645a6ba9e884023c8a4d47402b061723e73387` |
| 20 | `theorem` | [pole_boundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/pole-boundaryintegrable.md) | 254 | `result-track:72ef7d7ded791bef3412cf62773afeece8be5f6a03779481cdd59fd904d22bbf` |
| 21 | `theorem` | [principalPart_boundaryIntegrable](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/principalpart-boundaryintegrable.md) | 261 | `result-track:7496a56539c8ea78094698dd66c05ab93f4d491051052fa44cafabbb4ea97e34` |
| 22 | `theorem` | [nontrivial_principalPart_integral](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/nontrivial-principalpart-integral.md) | 271 | `result-track:f5f834533034bb6b9617636eb4e72d21caccf5c99ffe9c2f843817051f59da03` |
| 23 | `theorem` | [trivial_principalPart_integral](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/trivial-principalpart-integral.md) | 301 | `result-track:4699175ac4accf7f9939b8cd85ab88f18ea30702f616713e507926ebb007e0c1` |
| 24 | `theorem` | [pole_principalPart_integral](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/pole-principalpart-integral.md) | 327 | `result-track:0c91c051c0135468b18831edf1df7bbf541f6e425cd162609b1e0b7daae6114f` |
| 25 | `theorem` | [principal_part_integral](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/principal-part-integral.md) | 346 | `result-track:b86ffdcb7bf91a3a12ff0b5f3d7b9aaf99723131e573f428478e3944d0edca3e` |
| 26 | `def` | [toPrincipalPartWindingCertificate](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/toprincipalpartwindingcertificate.md) | 375 | `declaration-track:2eca3aebc84737dd2bccd9a86ac7d7dcf67b80f4fc46c6fbc576a00a8fce9c14` |
| 27 | `theorem` | [bottom_boundary_not_open_fixture](../../../../GeneralTopology/CanonicalRectanglePrincipalPartWinding.lean/declarations/bottom-boundary-not-open-fixture.md) | 384 | `result-track:8f0e646adecb2de7f9df96d8e376b6ed9417dbee9da19552b403a7f5dcd7028a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3be48609e95be23628cf3dc32ea65a4d564f5ac22d691c90b1846de84d7975d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
