# Verification target: GRWTSK.Algebra.LinearAlgebra.OrthogonalProjection.FiniteReflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4454eb15027e46b77cf261ca776429067a12ec61",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4454eb15027e46b77cf261ca776429067a12ec61`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean.json)

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
| 1 | `abbrev` | [V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/v.md) | 15 | `declaration-track:da8f7f8075e68fcb85ff5ff3f53cf10aba75b33caa1c0f9d6d6e86059b3e7d30` |
| 2 | `abbrev` | [Flags](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/flags.md) | 16 | `declaration-track:cee2dc5964d285971784f33aae6856e18368a6afc7da3d76042ff94ee09f0836` |
| 3 | `def` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/zero.md) | 18 | `declaration-track:d65ae9f4020246faf584735f9681fb435c859816f2498e40d60d025086354669` |
| 4 | `def` | [uniform](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/uniform.md) | 19 | `declaration-track:6995aa30f76ad8f0fc74e53778d358eb2d55e9325679fc8e301da2d5eecf6c02` |
| 5 | `def` | [dot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/dot.md) | 20 | `declaration-track:7694c127036666719c795a605369d4727b201cb406702ba15ce2d0825afad29d` |
| 6 | `def` | [normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/normsq.md) | 21 | `declaration-track:ab28b0b069a59c56bfc6c4b59c6a03d666e74e58dd8a271ecc9600b5c9444878` |
| 7 | `def` | [mean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/mean.md) | 22 | `declaration-track:4956b44788c1f9f773e6bbe0c2b7bea1264109d0d46dfc5b8924fdbcacc3447d` |
| 8 | `def` | [harmonic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/harmonic.md) | 23 | `declaration-track:f2f8f488c3ea311f16b6bcd54e326c230eb2a6d0bca6585e93fe92694366644c` |
| 9 | `def` | [diffuse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/diffuse.md) | 24 | `declaration-track:ac0a1c4573b7d855ca76aeaf5d5242551273549f18457409b0c8e5619276e4e8` |
| 10 | `def` | [laplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/laplacian.md) | 25 | `declaration-track:7b99248b7fe77e92e3717f52bef20b313a32b7372989d2e13d6f4b8c328d89a2` |
| 11 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/flip.md) | 26 | `declaration-track:5090d93cccc17dde128a8199a561880a65048e51881a0be0eb72bf1ad4b70b9e` |
| 12 | `def` | [phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/phase.md) | 27 | `declaration-track:b76e616c1af83d108d5b9cc2aa34c24dbcbf16c9a09ae22484e664d6d94c74a7` |
| 13 | `def` | [step](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/step.md) | 28 | `declaration-track:185273846cc3b333bb374b1997354a567558c37cb756b10a44b62fbdd42d91d4` |
| 14 | `def` | [inverseStep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/inversestep.md) | 29 | `declaration-track:ed26b10310d972203b6dbb53b1bb08b518dd5730101c89932ec9ac02718ae8ad` |
| 15 | `theorem` | [flip_involution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/flip-involution.md) | 31 | `result-track:5ec00b50fe00ce05bc5c9ee2eafc40ecf8df147f73469d4f76ce0aaec94a88fa` |
| 16 | `theorem` | [flip_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/flip-square.md) | 34 | `result-track:9ceef84db9d1772739590a97629a6550a1c433af4bcfafeaa05d5b60fe919974` |
| 17 | `theorem` | [phase_involution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/phase-involution.md) | 37 | `result-track:31fa67a2848c66e59211158f920e95ba52002ca41d0b9c9c686eb712584146eb` |
| 18 | `theorem` | [phase_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/phase-norm.md) | 40 | `result-track:6a87ea85f724ec2595cec135768c74d6f644caa1d805c14bb04f00d8df3020e6` |
| 19 | `theorem` | [harmonic_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/harmonic-idempotent.md) | 43 | `result-track:c3fc44430e3e4ec7e2f995bcb5d1c52db3e2025c3ec77bd8e3181a4729678074` |
| 20 | `theorem` | [harmonic_kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/harmonic-kernel.md) | 51 | `result-track:8eeb8862c7ac894765d37855bcd99553aeb4e85555aa7c2498bb8aad973d063d` |
| 21 | `theorem` | [diffusion_involution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/diffusion-involution.md) | 59 | `result-track:4e30bbd39b71cd42090378fbaba0e70fb08442b31bc8c3905276670a7f574823` |
| 22 | `theorem` | [diffusion_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/diffusion-norm.md) | 66 | `result-track:c796e8183bc791a5c5ed4c84faf7d1d1ecf1707ef9884d8e5d6b5686429184f7` |
| 23 | `theorem` | [step_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/step-norm.md) | 70 | `result-track:de990947dc5d654ea5177b7f8d0e244aa496270ffa606d2ff9d53fcc60a6321a` |
| 24 | `theorem` | [inverse_step](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/inverse-step.md) | 73 | `result-track:6d100fd8ef5b911b289347a92d4a7084b3519f6d9c376d659cf015f5d2cbf3f9` |
| 25 | `theorem` | [uniform_normalized](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/uniform-normalized.md) | 76 | `result-track:722aad312a78407bbdb850647be2cc85a86164a70489fb2f8af7cad66efd5267` |
| 26 | `theorem` | [single_marked_example](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/single-marked-example.md) | 80 | `result-track:3cef65246aab9d25366466343f0dd5f5067755736f1dc709ccf69ee56f2f06c8` |
| 27 | `theorem` | [inverse_composition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/inverse-composition.md) | 85 | `result-track:dd3ae584bf188bcfe8975fb4f0c058163a867f6c2b947e377b3f6377afb35c43` |
| 28 | `def` | [halfHeat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/halfheat.md) | 91 | `declaration-track:da15e1f0e93e64e84eb816653ebae6e3a8778d69fc7c42b6d2eb3f4c52baeadd` |
| 29 | `theorem` | [heat_is_not_diffusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/OrthogonalProjectionFiniteReflection.lean/declarations/heat-is-not-diffusion.md) | 94 | `result-track:95ff390a70cc635322f5e058027a678043b545d82f42e02f3a28c4d7bf846438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=794052f4d60b11eca19543662d57734928dc9516d008f7322e5d66f18879686c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/OrthogonalProjection/FiniteReflection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
