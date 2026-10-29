# Verification target: Signed Graph Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869ff3580968b9d49e1728cfb848b856f03d833d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variante4b3b2c0c519b208d0d1b990e6de84754278009f85401838b2a52002a6816015.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869ff3580968b9d49e1728cfb848b856f03d833d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variante4b3b2c0c519b208d0d1b990e6de84754278009f85401838b2a52002a6816015.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SignedGraph/Variante4b3b2c0c519b208d0d1b990e6de84754278009f85401838b2a52002a6816015.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftColumn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/leftcolumn.md) | 18 | `declaration-track:41f9596b97db29fae6851519870ec66c4d97fa67457973929ea4b673f7c6b3c6` |
| 2 | `def` | [rightColumn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/rightcolumn.md) | 21 | `declaration-track:006a43fe242ddc089527c41b690af7b0615403096252ffc9ebd05b3aec9e6c7a` |
| 3 | `def` | [signedBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/signedblock.md) | 24 | `declaration-track:cc02f68e061e3a45983f486dc067e55eb16302ddb8adcd5345846a06a3efd2a3` |
| 4 | `def` | [frame](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame.md) | 28 | `declaration-track:3d56a3ebfbafb0929e79d2b1dbc638f016912651adbbcd0dc4d207a115f0c5ed` |
| 5 | `theorem` | [frame_pivot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame-pivot.md) | 34 | `result-track:abcb87bb8d2dcd931fe774560885f83d25cdc563dadc526b55d937cbfa4ea921` |
| 6 | `theorem` | [frame_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame-right.md) | 42 | `result-track:ba7df872d7ebf18ac8cc75db93227b248f80439420c30ec989d47ae9b3d840ce` |
| 7 | `theorem` | [frame_pivot_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame-pivot-det.md) | 48 | `result-track:58abe250b825ac8e0e3eef34b9989ff20aea85077dd48754558aa5fe898c4467` |
| 8 | `theorem` | [frame_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame-rank.md) | 53 | `result-track:87238d696ec9a61d97af9ffb4180060d3dd716c1feab03d73fec03f085a572db` |
| 9 | `def` | [recover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/recover.md) | 59 | `declaration-track:7bbf834e1b1174d598fa9e191e95c84281e54dda8fc775818c5c672289fff114` |
| 10 | `theorem` | [recover_frame](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/recover-frame.md) | 63 | `result-track:1cb281686a837582e306965a2d224d58ad0528fefbc6d07de845ea03478ef929` |
| 11 | `theorem` | [frame_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/frame-injective.md) | 69 | `result-track:365207b4e52c883ec6065f3d28308dfa3b0a4246624650712c3fa7bc7e6f8974` |
| 12 | `def` | [fullRankFrame](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/fullrankframe.md) | 75 | `declaration-track:1750329b8ff4d9399cee69d601612843cb824c0b864355f66b43665887da87a2` |
| 13 | `def` | [plane](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/plane.md) | 79 | `declaration-track:10b1cfd46962f6fa8aca272b1e101fb529f255b5e5002cfce098746e3382cec3` |
| 14 | `theorem` | [plane_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/plane-injective.md) | 83 | `result-track:96ad4fb08b848ec0d282681f9093e88e514b79ba2f6de394ac6b14c2e65f4282` |
| 15 | `theorem` | [intrinsicNonnegative_of_frame](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/intrinsicnonnegative-of-frame.md) | 91 | `result-track:dbaa56ee8ae193e44617399ba83e90fd4c62a59dd25f5b3d87e9a7dcf07127c0` |
| 16 | `def` | [MinorCorrespondence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedGraphResults.lean/declarations/minorcorrespondence.md) | 96 | `declaration-track:1d743275f38558e3bf502ac797c264bb9c8a7757b45222924a79eacc9d27c915` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ce2400ec4ad4d22b034b3b59b1a680d50b0811022dc8699ff6c75f4d5da3d69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SignedGraph/Variante4b3b2c0c519b208d0d1b990e6de84754278009f85401838b2a52002a6816015.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SignedGraph/Variante4b3b2c0c519b208d0d1b990e6de84754278009f85401838b2a52002a6816015.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
