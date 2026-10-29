# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassOriginJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "806048d95c0afea23b62fad46c77974d55b4e9e2",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `806048d95c0afea23b62fad46c77974d55b4e9e2`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift`](../../../../../CommutativeAlgebra/WeierstrassMixedLift.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient`](../../../../../CommutativeAlgebra/FreyJetQuotient.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Plane](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/plane.md) | 25 | `declaration-track:507c260876bf5f737e05ed71c132e5b335295ba3e15c4f3cd54f5a9a5eaa66a1` |
| 2 | `abbrev` | [Parameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/parameter.md) | 26 | `declaration-track:56d5e21ee7e9c82e67933876847a5bcfdc5a231bba468cc4307cfc0f8f82dab5` |
| 3 | `def` | [equation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/equation.md) | 29 | `declaration-track:4f2938817858fb9ec051ee5aa7829e7fb4ca05e332738c71a801ad6f0fcaf601` |
| 4 | `def` | [origin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/origin.md) | 35 | `declaration-track:f6c511d4bf76e9a7cd7775fa263342e93fe298f7c5b4992b4dbc1d523c4b7e4b` |
| 5 | `def` | [relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/relations.md) | 36 | `declaration-track:76664509dca20b05bb3e8678993e8bc1c1966338b211e2493d585c1914acb79a` |
| 6 | `abbrev` | [Jet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/jet.md) | 38 | `declaration-track:6207eba948662ef4bb62fe762b8214849387d04cd8ad244761757d18ca475e2e` |
| 7 | `def` | [quotientMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/quotientmap.md) | 40 | `declaration-track:48b8d0dc9cdcbbfca9fbc8daac6e10213a6f631814466b26b20e59ed5971bbb3` |
| 8 | `def` | [scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/scalar.md) | 42 | `declaration-track:31d38a0b9e9fa46a3df8c85a93e8bc65b29cbde73d62b4c6f5351b2b37bec1b9` |
| 9 | `def` | [x](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/x.md) | 44 | `declaration-track:21210f47ed53212a1fc8884149ed4b3c5aef2d32446295978852da2df182e04a` |
| 10 | `def` | [y](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/y.md) | 45 | `declaration-track:1734d8476856f47e462d529ed5a6d0493936fe12925d611394d16d0ff96cd410` |
| 11 | `def` | [neighborhood](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/neighborhood.md) | 46 | `declaration-track:8c47760626e91b7c146cae714e63f972a50a79b6d6341b4e3276b237b11c9d46` |
| 12 | `theorem` | [neighborhood_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/neighborhood-pow.md) | 49 | `result-track:b5c8320396e8f2fe1032522d34a20face0bb30b3f6c192e73f428cc27f320122` |
| 13 | `theorem` | [x_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/x-mem.md) | 53 | `result-track:83a927b9750af21c07f7c7a94e206ec5d6e2095d3ca9a5e7fd3f6e63ce99e7db` |
| 14 | `theorem` | [y_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/y-mem.md) | 55 | `result-track:3670b7f21eef1d2c5b0baca6b639250af600733d575e0e00ac78a331716c53d5` |
| 15 | `theorem` | [y_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/y-pow.md) | 58 | `result-track:517a93c32a3d7b1af3bd3ae10fbc139087f0b2a7bd504e455bf61c9eb39b6323` |
| 16 | `theorem` | [quotient_equation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/quotient-equation.md) | 62 | `result-track:02f7ac883b771f4eb9a8134cb57d081be8d7e6ae7d01174a603696f385938893` |
| 17 | `theorem` | [x_eq_lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/x-eq-lift.md) | 71 | `result-track:40722693eded7e5b46d07bce6263cdc6f8582c9e2ef551d65f68636754f958f0` |
| 18 | `def` | [evaluate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/evaluate.md) | 80 | `declaration-track:9110900d9a4035964d35f01e8296972450a6d4b0208552767c3b3160c2bd183d` |
| 19 | `theorem` | [relations_le_kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/relations-le-kernel.md) | 87 | `result-track:313b2c8822db96fa223294512ad98816b38d7c30e187e4b28d9f45600a83df69` |
| 20 | `def` | [toParameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/toparameter.md) | 123 | `declaration-track:30cc15b8f77cf63c045b5c9495761a4eb6f811c0a7b07ad753807a37f78d5144` |
| 21 | `def` | [fromParameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/fromparameter.md) | 127 | `declaration-track:1eb94bc74f31a06971616baf96c0182a9c4061086e693c25f880edeacf0371ca` |
| 22 | `theorem` | [toParameter_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/toparameter-scalar.md) | 130 | `result-track:586e5b0c9616a08b8ca302aa3b278a57c0a1c711901bcc6e51d0982d049025a1` |
| 23 | `theorem` | [toParameter_x](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/toparameter-x.md) | 133 | `result-track:645266786be04037259629267124bdf910fc643a70567755d8ea4c7be43ee18f` |
| 24 | `theorem` | [toParameter_y](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/toparameter-y.md) | 137 | `result-track:0deea68af5d7ba0f9952d48fa19dd978e17b30a96d02d9d3143de45379c5adce` |
| 25 | `theorem` | [fromParameter_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/fromparameter-scalar.md) | 140 | `result-track:be3acbb5b0a19889607d6640aa71193de2555345534a52307961b19776f000de` |
| 26 | `theorem` | [fromParameter_parameter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/fromparameter-parameter.md) | 143 | `result-track:c3d27c3b7494949a45ca3c4c7c81047f413684445bf98f41960d02361e186d28` |
| 27 | `theorem` | [hom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/hom-ext.md) | 147 | `result-track:3c835540daa53044d9c26cf2aabc0d41697230aa9667d032536fa6e00ab2602e` |
| 28 | `theorem` | [from_to](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/from-to.md) | 159 | `result-track:d09b2fe35e0e4e5b50ec79a102a430914132af77d0f16cc309118c2b526090d2` |
| 29 | `theorem` | [to_from](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/to-from.md) | 168 | `result-track:61b5fa4497bc0b8d81d9f54771caa6c4d734424393dbbc574ec7465d98d0f393` |
| 30 | `def` | [algebraEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/algebraequiv.md) | 180 | `declaration-track:b192140ddad6c0b3feacf5742e1fb647f05605b430aae1e5dd2871ab1d1c1c21` |
| 31 | `def` | [parameterBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/parameterbasis.md) | 193 | `declaration-track:151c775ab570c70d1b31f6443bb206f8d1677c69948624e6e33cc854be48e86f` |
| 32 | `def` | [jetBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/jetbasis.md) | 200 | `declaration-track:7817e070702c05e44bdba80e3f693d5f05bdbd371169bcd50e0bbbdc48d26cc6` |
| 33 | `theorem` | [jet_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/jet-finrank.md) | 204 | `result-track:0b4c00c5aed0f77aa89c6d9f0e1b34c3265237974b89aeac89c365352c9c09b5` |
| 34 | `theorem` | [kernel_evaluate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/kernel-evaluate.md) | 209 | `result-track:dd59f220ea9b6534ba6f1bfdd0b2cf762f6df37e8a4b70244a37c13724f56fbb` |
| 35 | `def` | [truncate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate.md) | 220 | `declaration-track:12aa91971f4767c5839f292ee7c01d2e3ca80286bab6c4cf0843f0d7632cbc8a` |
| 36 | `theorem` | [truncate_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate-scalar.md) | 225 | `result-track:589545b60a6164e10fadf02d81e01dd349564798197ef59227811bdcec82c8c7` |
| 37 | `theorem` | [truncate_x](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate-x.md) | 227 | `result-track:1d93ed899c559b0148f4714b4da8298d571aaa5366167db9c18fbe54bbb10eb0` |
| 38 | `theorem` | [truncate_y](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate-y.md) | 229 | `result-track:9820a1ac27173f0cc2feabf4035c91719aecf18d5a88d6a820881d05d3cf6d2b` |
| 39 | `theorem` | [fromParameter_truncate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/fromparameter-truncate.md) | 232 | `result-track:41d74e01f6355085bc8b1314715d3060c844a58c39a9f1523c5bc2d4d7586551` |
| 40 | `theorem` | [toParameter_truncate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/toparameter-truncate.md) | 246 | `result-track:0f9656719f0b9dd271eb238aa9182138822824d29e3e18d25d356cf2d0471c92` |
| 41 | `theorem` | [truncate_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate-id.md) | 261 | `result-track:66d2b39ed427eb9696f8feebd3bae2ef8088130d36dd73e54f3e4990891556b2` |
| 42 | `theorem` | [truncate_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/declarations/truncate-comp.md) | 264 | `result-track:d958584173cd67ffaa981d8f9b1c0169907cb1155ba937c3f50dced5566fbdc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e5500a1b80bd190160dc696590659a6998e9f2440ed17de9943b5048f3c8db6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
