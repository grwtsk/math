# Verification target: Archimedean Densely Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99`.

Source path: `GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Monoid` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Archimedean` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Subgroup.mem_closure_singleton_iff_existsUnique_zpow](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/subgroup-mem-closure-singleton-iff-existsunique-zpow.md) | 43 | `result-track:11f8e9762fb01447a2099b756d5180571dd7bd19a48eb2883dc998816253ba30` |
| 2 | `lemma` | [Subgroup.zpowers_eq_zpowers_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/subgroup-zpowers-eq-zpowers-iff.md) | 57 | `result-track:4fd2221d59091a7fe61f968b39cdd0e9e940c7aea93c4d2826c4850ae7a74546` |
| 3 | `def` | [LinearOrderedCommGroup.closure_equiv_closure](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-closure-equiv-closure.md) | 84 | `declaration-track:04dc3f7d092ff4c9fbd97b30c2ffd93a9146cd5e4f8d18789fcb7a178e1fd54e` |
| 4 | `lemma` | [Subgroup.isLeast_of_closure_iff_eq_mabs](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/subgroup-isleast-of-closure-iff-eq-mabs.md) | 146 | `result-track:f56852550c93869aa9c078e33f5c2d92c0f24217d6db07bee9d1d13f4a3f9bec` |
| 5 | `def` | [LinearOrderedAddCommGroup.int_orderAddMonoidIso_of_isLeast_pos](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedaddcommgroup-int-orderaddmonoidiso-of-isleast-pos.md) | 182 | `declaration-track:659fabc6653e95494cd4589a52e99f5ad03ac4245b4a69e87bcf523cce99b474` |
| 6 | `def` | [LinearOrderedCommGroup.multiplicative_int_orderMonoidIso_of_isLeast_one_lt](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-multiplicative-int-ordermonoidiso-of-isleast-one.md) | 202 | `declaration-track:d5c66b14d27dc92994a6e944bf4b683cdc3a1a229d7108d5657633f84b8d3c13` |
| 7 | `lemma` | [LinearOrderedAddCommGroup.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedaddcommgroup-discrete-or-denselyordered.md) | 210 | `result-track:2abca3e265277709bc3ab7f2240a19d2f02f5ca71a5f3956b1e9f21bfbe08592` |
| 8 | `lemma` | [LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedaddcommgroup-discrete-iff-not-denselyordered.md) | 229 | `result-track:f197d74c74b50584ad12c1f92d0396723b9f7c1d3f89b6623c683b21bdf1b11a` |
| 9 | `lemma` | [LinearOrderedCommGroup.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-discrete-or-denselyordered.md) | 245 | `result-track:40a68818df80d003e2f358cc651231face88820155d17614e9c660debaf38188` |
| 10 | `lemma` | [LinearOrderedCommGroup.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-discrete-iff-not-denselyordered.md) | 254 | `result-track:ad1b9adfaecde8bebcc81c4220d3d833f1bd17785fc241c7c88db90aa9e86eee` |
| 11 | `lemma` | [denselyOrdered_units_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/denselyordered-units-iff.md) | 263 | `result-track:5ff934a4ddacb5ac6618420aed36213aa34fc86079d22f84fc70157ff1a40f41` |
| 12 | `lemma` | [LinearOrderedCommGroupWithZero.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroupwithzero-discrete-or-denselyordered.md) | 289 | `result-track:3b39235a1125c50699da814437eebe72368e9466d7ce1df59464850721254f7f` |
| 13 | `lemma` | [LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroupwithzero-discrete-iff-not-denselyordered.md) | 311 | `result-track:73732937219e91b8476177f36c2b9ae6da3f6bdfb4b1762d25e4c1ec07219e3b` |
| 14 | `lemma` | [LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedaddcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discret.md) | 334 | `result-track:43309d16570b22eeade0f0a21cf09207f6c9d80349b78e3798322daffc52ca52` |
| 15 | `lemma` | [LinearOrderedAddCommGroup.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedaddcommgroup-wellfoundedon-setof-ge-gt-iff-nonempty-discret.md) | 370 | `result-track:93531c22decbc2ea09e8c67ac34208ba9a553bcf7fd20b77b53acb148b6c538a` |
| 16 | `lemma` | [LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discrete.md) | 378 | `result-track:27a964ca30d154fa4f0dc0f4d3ef5a4238a33ebd67fb4ea8018f0ff061b8b18e` |
| 17 | `lemma` | [LinearOrderedCommGroup.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroup-wellfoundedon-setof-ge-gt-iff-nonempty-discrete.md) | 391 | `result-track:a8c39dda67da3d8c83cfb06631bb12a612ab4b0e79b29c6faf7c1b9318914ec5` |
| 18 | `lemma` | [LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete_of_ne_zero](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroupwithzero-wellfoundedon-setof-le-lt-iff-nonempty-di.md) | 399 | `result-track:c0d79f0a097d4692d4da0b2ff87cc6f5a4de17da32bd77bed5d5dd6fcd3cbd24` |
| 19 | `lemma` | [LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete_of_ne_zero](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/linearorderedcommgroupwithzero-wellfoundedon-setof-ge-gt-iff-nonempty-di.md) | 429 | `result-track:481195770b854e5a0f74e92903979e7a30341d6da00fe11cd293abf40ca5cdfe` |
| 20 | `lemma` | [OrderMonoidIso.mulArchimedean](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/ordermonoidiso-mularchimedean.md) | 462 | `result-track:f8df1e2120451c3d2d2406219bd9c5fd5c2024865a16e28016efb5b9d79bb6af` |
| 21 | `lemma` | [WithZero.mulArchimedean_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDenselyNamespaced.lean/declarations/withzero-mularchimedean-iff.md) | 471 | `result-track:eb47e72d1eaa44d8bc22b94c9c7a573023b8716fe04b2b1c794a61fccbd49aa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba9917585d450bf432b9646f64ef25dbe26d55065d7fc928f4422009eb1b2383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
