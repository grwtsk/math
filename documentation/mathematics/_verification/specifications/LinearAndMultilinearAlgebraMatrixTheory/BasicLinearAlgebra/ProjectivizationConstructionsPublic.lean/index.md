# Verification target: Projectivization Constructions Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982ad66fb44533d15a5c01fe8e50f282de2e658c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982ad66fb44533d15a5c01fe8e50f282de2e658c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/orthogonal.md) | 37 | `declaration-track:9acd735c0815ed404facd0f597aea93abacd5602accd8b562563225eb9e15bea` |
| 2 | `lemma` | [orthogonal_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/orthogonal-mk.md) | 42 | `result-track:013c87570aa0c63225bc7bb42b46402a8c80015bfd02206424b8fd47fa13d48f` |
| 3 | `lemma` | [orthogonal_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/orthogonal-comm.md) | 46 | `result-track:6481e5542172039762fc8c329321f1c341c66d8c526c2fa617f4188e82a14dfe` |
| 4 | `lemma` | [exists_not_self_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/exists-not-self-orthogonal.md) | 50 | `result-track:a36d7d7130476822082230489fc9bab2aa1eb596a05f2274bd434167440b607a` |
| 5 | `lemma` | [exists_not_orthogonal_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/exists-not-orthogonal-self.md) | 56 | `result-track:69166faa06b15ab79479efa8dff047d5331b75b863573e27b497c1a19363087d` |
| 6 | `lemma` | [mk_eq_mk_iff_crossProduct_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/mk-eq-mk-iff-crossproduct-eq-zero.md) | 64 | `result-track:fd08143342b7d083dc2e6d2eed841f3a41c5c0dec470f7bf6a0d7c2308e40ca4` |
| 7 | `def` | [cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross.md) | 72 | `declaration-track:960b5c18411cea5436dd6048e712a95f76bce33553b7acae4b63a9a1c10f0b93` |
| 8 | `lemma` | [cross_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-mk.md) | 81 | `result-track:c1d81655b009b3f76bcd80ddfaa5fb9efcf1003e70faed716f45ce274988531e` |
| 9 | `lemma` | [cross_mk_of_cross_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-mk-of-cross-eq-zero.md) | 87 | `result-track:0df820ffcb24381ea56650385f84e593ac3920696a73240652be73d7cffecd81` |
| 10 | `lemma` | [cross_mk_of_cross_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-mk-of-cross-ne-zero.md) | 92 | `result-track:655fc20099f624778fced238af615210574512c69fa0fecec9fe7344a0d09546` |
| 11 | `lemma` | [cross_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-self.md) | 97 | `result-track:dff1191b2557f2eeb1d72a63c5e08aa7b8edbb1bcc27157ef3dac835fdb23433` |
| 12 | `lemma` | [cross_mk_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-mk-of-ne.md) | 102 | `result-track:93e88e1a2f81c7c889fdf27e38cd3ac3238d8caee434d2b5da9cbfba0e59ae47` |
| 13 | `lemma` | [cross_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-comm.md) | 107 | `result-track:2aeb49b0815fdeff2303bca0d6bee9a7129a954f682f08355e8872674c0fb0be` |
| 14 | `theorem` | [cross_orthogonal_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-orthogonal-left.md) | 115 | `result-track:55e0f366bc8d5b1e823ca4fd6302d7a94908d1c92e1529cfbfb7a6b20adaf3d4` |
| 15 | `theorem` | [cross_orthogonal_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/cross-orthogonal-right.md) | 121 | `result-track:ea5cb516484aac9d8ee5f404b3fb5601d375e975183972a24730b951eea9087e` |
| 16 | `theorem` | [orthogonal_cross_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/orthogonal-cross-left.md) | 126 | `result-track:63f5d52b111b6f698dae2df2bdbe85d6c42dfe043d3a6abc8f89d3ea6dddf5d8` |
| 17 | `lemma` | [orthogonal_cross_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectivizationConstructionsPublic.lean/declarations/orthogonal-cross-right.md) | 131 | `result-track:aef2b8c834554ac19f105900cf28b6367c726923b3b277d61da794303e4ead1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a0f242d5f95732424374d3a28dfd3930ee5ee669535c0565c353bbed148d193 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Constructions/Variant3f852224140dadad37a0a811119c146cdc3d17488947f0987c9f30e0a4d80122.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
