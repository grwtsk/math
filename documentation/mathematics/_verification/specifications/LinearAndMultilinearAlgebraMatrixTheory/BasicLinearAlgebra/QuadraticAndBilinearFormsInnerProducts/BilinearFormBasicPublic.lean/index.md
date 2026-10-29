# Verification target: Bilinear Form Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73d9d7f81dfcf9be0f4e06c71eb5b4b26f7b4f90",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0defc9d164054a9607a15dee7387baebb62d88ab2376cb631c223d2e12034e8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73d9d7f81dfcf9be0f4e06c71eb5b4b26f7b4f90`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0defc9d164054a9607a15dee7387baebb62d88ab2376cb631c223d2e12034e8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0defc9d164054a9607a15dee7387baebb62d88ab2376cb631c223d2e12034e8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/add-left.md) | 64 | `result-track:16d999c7f900939f5bee4ad0e3b0607d43a97783944411f1f684ca7a3c7316a0` |
| 2 | `theorem` | [smul_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/smul-left.md) | 66 | `result-track:4562f8d57e6140cc7e7e530d80a240a2dbb6e40ace940983556427ccc2165e2e` |
| 3 | `theorem` | [add_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/add-right.md) | 68 | `result-track:7d744d42a2fd895f7e9f81eed1fc637d0863b7fb321ae2028d6bebb7c5dce7c1` |
| 4 | `theorem` | [smul_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/smul-right.md) | 70 | `result-track:ed972c37413bfec6cecba0c2623542f2d75201e617b18a4b3cecdb5599364b1c` |
| 5 | `theorem` | [zero_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/zero-left.md) | 72 | `result-track:5700303155e404f3d2f5e01e4f9409fb85f31eaacd906cf6ca18305c6c8af36d` |
| 6 | `theorem` | [zero_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/zero-right.md) | 74 | `result-track:e74533714becc91cbb1321cba17239861195d6f094518855e612ca75a180af32` |
| 7 | `theorem` | [neg_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/neg-left.md) | 76 | `result-track:77ef35eea63b0c974fefc6aabd80b183d496c7bbf632754c9798e6e60aad66d7` |
| 8 | `theorem` | [neg_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/neg-right.md) | 78 | `result-track:9bde9fbcbaddb358c60a8792a1da25f4328118cc9cc71022ce079482ea79898b` |
| 9 | `theorem` | [sub_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/sub-left.md) | 80 | `result-track:368c396f9bfa5c7f37c1bf0072a5e77a53e373cc72fc61a0e90f92c7b96966ee` |
| 10 | `theorem` | [sub_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/sub-right.md) | 82 | `result-track:cd7232973f1a02c47f6a1aeedaf03c4ad4f3e305b6a6cc0606bbb239a8093b73` |
| 11 | `lemma` | [smul_left_of_tower](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/smul-left-of-tower.md) | 84 | `result-track:f5bdc439c975c34e6f9357dc30a6dae826b9659c692add77fe4e1f950b36851c` |
| 12 | `lemma` | [smul_right_of_tower](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/smul-right-of-tower.md) | 87 | `result-track:dd1e809b5d35c635d1dd938bc4f9365a4c2bd789f9eecf00458c1746fe6a889b` |
| 13 | `theorem` | [coe_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/coe-injective.md) | 93 | `result-track:d41c41359f5e2e451e4a806d442664a6e0c39275b3f2990ce808d413335334e4` |
| 14 | `theorem` | [ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/ext.md) | 99 | `result-track:bc6b506675263d301aa8b157622097c48d970fa429034df84288c756dae95c18` |
| 15 | `theorem` | [congr_fun](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/congr-fun.md) | 101 | `result-track:67d4c39d78a09ea77ab50abcb90d629d7b7ce0fb393af2535891a33563923d4a` |
| 16 | `theorem` | [zero_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/zero-apply.md) | 104 | `result-track:a525abb7a8d35fea2af5f622f192f96fdc2fc5656f54295e1290e73d59bf53f7` |
| 17 | `theorem` | [add_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/add-apply.md) | 110 | `result-track:80be58fbe0365de53bf66e544be265962d55f2f504f4495dee71a413a6ca0ccb` |
| 18 | `theorem` | [neg_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/neg-apply.md) | 114 | `result-track:eef2441338b8691cfd4d43e5ea76897af6b528979ba6b2ae940e960b78344fc8` |
| 19 | `theorem` | [sub_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/sub-apply.md) | 118 | `result-track:aeb77e67b1a5f47c73d74545b0b632ed2c13bca8b391944bfede8382c6ea8034` |
| 20 | `def` | [coeFnAddMonoidHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/coefnaddmonoidhom.md) | 123 | `declaration-track:bb5df55c33874e5ae33d8340ca42534e418e7a0eda0516f59be6065fb662e561` |
| 21 | `def` | [flipHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/fliphom.md) | 131 | `declaration-track:5679c62f840a3540aac6b67ff8422b2afdb8f2f974e62ff4a2c94e910ada69c3` |
| 22 | `theorem` | [flip_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/flip-apply.md) | 134 | `result-track:82f846450cbcf5cda8aa182f8421839e190b82e9a198184e5264b5922b57e9fa` |
| 23 | `theorem` | [flip_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/flip-flip.md) | 137 | `result-track:7cbc1187efcd7d23ed9e327dccecfdcf93b1f97cccb5bc0cd13e7c593b005af3` |
| 24 | `abbrev` | [flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/flip.md) | 144 | `declaration-track:20af7d32931decf3ae4827628b91ee0f00072a85ac85ff0d99d17dac7ac01322` |
| 25 | `def` | [restrict](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/restrict.md) | 151 | `declaration-track:f4fcd0a2fac0efadfae5bc9e0262ebb4129769a2a7bb1b39479a26abe43f788f` |
| 26 | `theorem` | [lsmul_flip_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormBasicPublic.lean/declarations/lsmul-flip-apply.md) | 157 | `result-track:56c015bf1bdb72a07514616932419334c9207cdc0b3990817d8e6cdeff160e2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e269808cea229592b86a2743e0a8d0e97568ff885eb8b1d934eb1d8c36e4d7b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant0defc9d164054a9607a15dee7387baebb62d88ab2376cb631c223d2e12034e8a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant0defc9d164054a9607a15dee7387baebb62d88ab2376cb631c223d2e12034e8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
