# Verification target: Totally Unimodular Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbb330699d54c3c8b3591f3bfb895b242d49929",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbb330699d54c3c8b3591f3bfb895b242d49929`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean.json)

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
| 1 | `def` | [IsTotallyUnimodular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular.md) | 46 | `declaration-track:d0fea6f2f392c1e689a5ce24c75dd23a484739b94ddbac6bafe30d7cb28bc8c4` |
| 2 | `lemma` | [isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-iff.md) | 50 | `result-track:0ecd5872082b6c270cf104dc0fdee6da09317f35bb16929e90ccfd714805d470` |
| 3 | `lemma` | [isTotallyUnimodular_iff_fintype.](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-iff-fintype.md) | 69 | `result-track:0b5012c169caa0de0189c0de87de347fca82c270244fb9f8f1e5af0f3bd93eb2` |
| 4 | `lemma` | [IsTotallyUnimodular.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-apply.md) | 81 | `result-track:d54ba679ed84454d883be2e1a0245014f644afc28b0c7f44c8d3d67b461c6057` |
| 5 | `lemma` | [IsTotallyUnimodular.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-submatrix.md) | 86 | `result-track:c453d3a94d1b70dce513e2c169df84a575dab6c493e94b34bbd9cd9559c48a55` |
| 6 | `lemma` | [IsTotallyUnimodular.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-transpose.md) | 93 | `result-track:9da319508e8f4f37581c1d09a348e1db224f798e56a27cadf34e8c8774186563` |
| 7 | `lemma` | [transpose_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/transpose-istotallyunimodular-iff.md) | 99 | `result-track:15d840945e0752e443c8f24fd367cacdf30f537f131f46aef1edeeaba1a76fa4` |
| 8 | `lemma` | [IsTotallyUnimodular.reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-reindex.md) | 103 | `result-track:d699146a1895f0bc0de916ef5626304d6ab610b69ba75d5a626555184f3e0aec` |
| 9 | `lemma` | [reindex_isTotallyUnimodular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/reindex-istotallyunimodular.md) | 108 | `result-track:954382e41dd6258320129731de24eac2e5a8059a5817b230075c437eaa02e199` |
| 10 | `lemma` | [emptyRows_isTotallyUnimodular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/emptyrows-istotallyunimodular.md) | 115 | `result-track:44468f291c22bba861035a56c1c28d81cad6a8c57b6d3ba24a34a4bcbb5d292b` |
| 11 | `lemma` | [emptyCols_isTotallyUnimodular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/emptycols-istotallyunimodular.md) | 124 | `result-track:32e8f1710fd93a701f5b173499473e45d4eeb20eaef795ad160cc4d51aedf02e` |
| 12 | `lemma` | [IsTotallyUnimodular.fromRows_unitlike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/istotallyunimodular-fromrows-unitlike.md) | 130 | `result-track:b876f2e5f8b8e61d7f84ad6c6633b2d0d8733a789ecdb9ede40b99698144b32c` |
| 13 | `lemma` | [fromRows_isTotallyUnimodular_iff_rows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/fromrows-istotallyunimodular-iff-rows.md) | 170 | `result-track:f2b50bf7fc723ef1d4c588bbc8164c3204ea491caa8c651d7c7480730ee4b211` |
| 14 | `lemma` | [fromRows_one_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/fromrows-one-istotallyunimodular-iff.md) | 175 | `result-track:f43d306db4406263248267f8375cb29419dd2b32b1b21b8b8c30e5d846a73afc` |
| 15 | `lemma` | [one_fromRows_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/one-fromrows-istotallyunimodular-iff.md) | 180 | `result-track:8094530adf9e5db952d38e780072406842c0f73ccca970c74354c4e01ab7018f` |
| 16 | `lemma` | [fromCols_one_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/fromcols-one-istotallyunimodular-iff.md) | 188 | `result-track:5d6291e11d88b5f2bb345835fc482c95bc8c7f2427bf1872fe952e2bf7b08209` |
| 17 | `lemma` | [one_fromCols_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/one-fromcols-istotallyunimodular-iff.md) | 193 | `result-track:df31f52832b7e2ebc5b7d350a367e00f5a20ade4b502364faba5be7f777b4031` |
| 18 | `lemma` | [fromRows_replicateRow0_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/fromrows-replicaterow0-istotallyunimodular-iff.md) | 203 | `result-track:de77a35b5b987a50c783e153cbe3f027e2b9a887c617882690617ce5a6076aa0` |
| 19 | `lemma` | [fromCols_replicateCol0_isTotallyUnimodular_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TotallyUnimodularNamespacedPublic.lean/declarations/fromcols-replicatecol0-istotallyunimodular-iff.md) | 212 | `result-track:17edd8e352d983fa228364353c327a6a8b5686be131191abdfcfe3c2095171e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de027321e0da3a32faa76427b3b622317fe9f39d0f45b6084a7b7236cebdc240 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TotallyUnimodular/Variantc265daa5afafd300559c2b226459d10bf661f855bc4b6801aff1f97a6cc39e42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
