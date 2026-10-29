# Verification target: Mahler Basis Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd62cb6ad733b398334edb67ac5a6a553488532e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd62cb6ad733b398334edb67ac5a6a553488532e`.

Source path: `GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean.json)

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
| 1 | `lemma` | [norm_ascPochhammer_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/norm-ascpochhammer-le.md) | 63 | `result-track:3f17cb39d92a7e027796551f96c30d4d525a234bd3dce95122db995d8c1b4a2a` |
| 2 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/instance.md) | 81 | `declaration-track:fdd6b4bcaf41d7b5ade67d0f58a235e0cd899e58100a1e431e485d7b3ffb469c` |
| 3 | `instance` | [instBinomialRing](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/instbinomialring.md) | 86 | `declaration-track:2ed2c23965dd6ec28b63718109b770739980518182d72bdb067f434af2c3151d` |
| 4 | `lemma` | [continuous_multichoose](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/continuous-multichoose.md) | 96 | `result-track:6ae770f4a866ee14e50d6fc6d9c753d2ef106198fdf1464c4a989e573da36d9e` |
| 5 | `lemma` | [continuous_choose](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/continuous-choose.md) | 101 | `result-track:1a99529c6764e7d0d86ca3410994e0b890064b4f8c95bdef6e24183706d49891` |
| 6 | `def` | [mahler](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahler.md) | 111 | `declaration-track:83999b6a438c21437bf0ae2ac9b06da348a79ef7c658f0cc1a79667572059950` |
| 7 | `lemma` | [mahler_apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahler-apply.md) | 115 | `result-track:7cd12a9d5bd618db641a6cdb0fca56511c428dfd87d8561679e36dbc3f9c5459` |
| 8 | `lemma` | [mahler_natCast_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahler-natcast-eq.md) | 118 | `result-track:1146cb45bf0c13957266d31ed9f6c5033fee7a3c780e304ddfaa5dc90f2e44d8` |
| 9 | `lemma` | [IsUltrametricDist.norm_fwdDiff_iter_apply_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/isultrametricdist-norm-fwddiff-iter-apply-le.md) | 127 | `result-track:4e844af0e924049a5401341cb804738a95c76d9fd833e45b5ef59ef7c760ab65` |
| 10 | `lemma` | [bojanic_mahler_step1](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/bojanic-mahler-step1.md) | 139 | `result-track:4dfe4def3c3d7b3f4a5d1586655664d14e2023910cbe57fb0e1e2ecc616ea461` |
| 11 | `lemma` | [bojanic_mahler_step2](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/bojanic-mahler-step2.md) | 171 | `result-track:0fc411ad8242c9fbcd193059aa9720585333c8154918c21b8aa1d32c76a946a4` |
| 12 | `lemma` | [fwdDiff_iter_le_of_forall_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/fwddiff-iter-le-of-forall-le.md) | 210 | `result-track:c02fc6ea41edf70fcd99393487f1eda484e720b08aea0538db9e81474606837b` |
| 13 | `lemma` | [fwdDiff_tendsto_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/fwddiff-tendsto-zero.md) | 232 | `result-track:5608c862e1a9da2ed3b9a61cd0431de66739f35d6dc063ac6ee2a91900a3ce44` |
| 14 | `def` | [mahlerTerm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerterm.md) | 262 | `declaration-track:a5ecfeaf3f478e47ef152a792d2b349ce47c2b7b3eeff6369468454490c65540` |
| 15 | `lemma` | [mahlerTerm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerterm-apply.md) | 264 | `result-track:63faab867702d27dac61b3fae1b2ca197b9cddfcbe41d3261a67439d0eee3e61` |
| 16 | `lemma` | [norm_mahlerTerm](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/norm-mahlerterm.md) | 268 | `result-track:5098a881a5ac62e21105916a434b09fe2779664532e4e07fe00051acc7d8b662` |
| 17 | `lemma` | [mahlerTerm_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerterm-one.md) | 278 | `result-track:b118c1288b10ca3c167f5c0d02f71f664064e6ad82b8ca27efded451ebd3ad6d` |
| 18 | `lemma` | [norm_mahler_eq](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/norm-mahler-eq.md) | 284 | `result-track:5f9521a6bac530a0fc6bf7c01357ecc8622c18325ef6ef64378820f13ba4464b` |
| 19 | `def` | [mahlerSeries](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerseries.md) | 288 | `declaration-track:c92036b3c4a0196cd2ee54fc6fc5abda5d3d6ef7dbc71384388d3ba24eeee4c3` |
| 20 | `lemma` | [hasSum_mahlerSeries](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/hassum-mahlerseries.md) | 293 | `result-track:76679af8243c5932f1e10f4fd6f70fff267f62ef454ce7b8934d8c12b9f56ee6` |
| 21 | `lemma` | [mahlerSeries_apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerseries-apply.md) | 300 | `result-track:95fddc9a5a361256d0434b853d5bbefb7d4c29b7766200bc41842be9a8532428` |
| 22 | `lemma` | [mahlerSeries_apply_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerseries-apply-nat.md) | 309 | `result-track:dfdd07f713042b9de4e231e7ecce248ac4d156a1d9e7e6a54b5e8c2b8fbf4fce` |
| 23 | `lemma` | [fwdDiff_mahlerSeries](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/fwddiff-mahlerseries.md) | 321 | `result-track:42fceb2d9c006c15a21d34b6e7d93af7d04231b1548e6115c859350e7a91394f` |
| 24 | `lemma` | [hasSum_mahler](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/hassum-mahler.md) | 347 | `result-track:2042ea688ee3165a24b4761e02a6146da8307aa35cdfb854df235d49ec35c553` |
| 25 | `def` | [mahlerEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerequiv.md) | 365 | `declaration-track:31bfcf9a46c73d7ac2ed4b8e5f3c730c2f44a3959ea0d3f4d89f3f5275cbca79` |
| 26 | `lemma` | [mahlerEquiv_apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerequiv-apply.md) | 390 | `result-track:11a4f514195a583ff0863e0471c15c69f2f13ed39339f1cd294ace62e0649ac0` |
| 27 | `lemma` | [mahlerEquiv_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/mahlerequiv-symm-apply.md) | 392 | `result-track:e9c5f8151d5e1f69f8d24207b3957cda3413cc5bb7c8217dff94ed42bdb1b909` |
| 28 | `theorem` | [dense_span_mahler](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/dense-span-mahler.md) | 406 | `result-track:b07e0a6c182c1a2ab14e859182372c6330f9b2c2aaff5cbd5bca0f16874bb88f` |
| 29 | `lemma` | [ext_mahler](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/MahlerBasisNamespacedPublic.lean/declarations/ext-mahler.md) | 417 | `result-track:f430cccdd2b7c17dabf42cbdc35631c5dddd00b399f5a464f9cd0d74633e496a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27c841e7c911bf86ec9b37588bdca8dd3ccc1015c0f16291b53c043af38cc5ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/MahlerBasis/Variant5e708741d279f76cadad55a156ece3260a9f4b198936ce72876e49a9f7465dd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
