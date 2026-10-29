# Verification target: Archimedean Densely

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1662abefae9ae2f71c08820aa9bbfa621a9151b9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1662abefae9ae2f71c08820aa9bbfa621a9151b9`.

Source path: `GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Monoid` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Archimedean` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Subgroup.mem_closure_singleton_iff_existsUnique_zpow](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/subgroup-mem-closure-singleton-iff-existsunique-zpow.md) | 35 | `result-track:4b3e61e0730ab332da8b2ed33fbde505728dd440dd485ff780b9b0777c77d33b` |
| 2 | `lemma` | [Subgroup.zpowers_eq_zpowers_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/subgroup-zpowers-eq-zpowers-iff.md) | 49 | `result-track:a0d05ad763bccc022a440358378b09dfe1c54114562690f4047b1f0d2254f971` |
| 3 | `def` | [LinearOrderedCommGroup.closure_equiv_closure](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-closure-equiv-closure.md) | 76 | `declaration-track:51a53bbeae5f0db23edfd039ee22b31aa3c16376f0d133c366b018b8922e6cdc` |
| 4 | `lemma` | [Subgroup.isLeast_of_closure_iff_eq_mabs](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/subgroup-isleast-of-closure-iff-eq-mabs.md) | 138 | `result-track:19540f654bcb16b3d496f5979fb0d0fb3a0db32865cc25ea787ba772dee16d0d` |
| 5 | `def` | [LinearOrderedAddCommGroup.int_orderAddMonoidIso_of_isLeast_pos](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedaddcommgroup-int-orderaddmonoidiso-of-isleast-pos.md) | 174 | `declaration-track:85d9d0fa85a3eb8baa31f12c56dfef464d9dabd59dcc6fd19b4e18796c553922` |
| 6 | `def` | [LinearOrderedCommGroup.multiplicative_int_orderMonoidIso_of_isLeast_one_lt](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-multiplicative-int-ordermonoidiso-of-isleast-one.md) | 194 | `declaration-track:9aedd1c7e49c1c06885e8d6c00223641d1d6ab89ecd612ed45cd0edee0ee6496` |
| 7 | `lemma` | [LinearOrderedAddCommGroup.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedaddcommgroup-discrete-or-denselyordered.md) | 202 | `result-track:f2087a8cd95d4dffab2eace565e5b3070d897223a5da07e47fdfa1e4814a382f` |
| 8 | `lemma` | [LinearOrderedAddCommGroup.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedaddcommgroup-discrete-iff-not-denselyordered.md) | 221 | `result-track:d41fba3fd6f6d574e99b9cccedc4c61bdeab49acad29144d5262e97c91d9e60c` |
| 9 | `lemma` | [LinearOrderedCommGroup.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-discrete-or-denselyordered.md) | 237 | `result-track:e8c028a7c15a5b2922a4594e67a93627c2dc64f485d281b045cb4e53de5b5ec7` |
| 10 | `lemma` | [LinearOrderedCommGroup.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-discrete-iff-not-denselyordered.md) | 246 | `result-track:b23282641c9e86db0e5a0301177bdc422e1fd69095aafaf4c0e90a3840ba811b` |
| 11 | `lemma` | [denselyOrdered_units_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/denselyordered-units-iff.md) | 255 | `result-track:f120daceb6c7a0630ad7dc70ac6cf032fb0383812b3e3fa4e7a517d3dfac33b4` |
| 12 | `lemma` | [LinearOrderedCommGroupWithZero.discrete_or_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroupwithzero-discrete-or-denselyordered.md) | 281 | `result-track:20becc509ca64fa364eec167fee11fcd952f3b6e1e66647875ccc578cc2e5b86` |
| 13 | `lemma` | [LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroupwithzero-discrete-iff-not-denselyordered.md) | 303 | `result-track:0bb219d6af0d75c1a1ac1eda65bd980a1aa5471f0db5cd12ebb50098d8aa9c9b` |
| 14 | `lemma` | [LinearOrderedAddCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedaddcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discret.md) | 326 | `result-track:c8ec3d3a6c75f6286c973bb7b2dd94a676a1b339a96f25977a443de3b1341f75` |
| 15 | `lemma` | [LinearOrderedAddCommGroup.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedaddcommgroup-wellfoundedon-setof-ge-gt-iff-nonempty-discret.md) | 362 | `result-track:91a3329aa49d02abfab65173999e7a4cf795f27330c9dd75e362c5408e12750b` |
| 16 | `lemma` | [LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-wellfoundedon-setof-le-lt-iff-nonempty-discrete.md) | 370 | `result-track:f87050867c5fa27d23866549efeb74995dcbeaa8c4322ca86e7b57606dda664e` |
| 17 | `lemma` | [LinearOrderedCommGroup.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroup-wellfoundedon-setof-ge-gt-iff-nonempty-discrete.md) | 383 | `result-track:2b973c34126da95c5c757930f9f4cd82b9a4fa0750bfd24a2ea2673b251b3e37` |
| 18 | `lemma` | [LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete_of_ne_zero](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroupwithzero-wellfoundedon-setof-le-lt-iff-nonempty-di.md) | 391 | `result-track:70456bdc0d5dc2031f0ffa7298f72d608b6baec0730671fd17dc8fe3b14e1d6a` |
| 19 | `lemma` | [LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_ge_gt_iff_nonempty_discrete_of_ne_zero](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/linearorderedcommgroupwithzero-wellfoundedon-setof-ge-gt-iff-nonempty-di.md) | 421 | `result-track:fb7f260142d5ace7926ed30c0dc1d8b289cbc22db6e60064d88322283439f9ed` |
| 20 | `lemma` | [OrderMonoidIso.mulArchimedean](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/ordermonoidiso-mularchimedean.md) | 454 | `result-track:9c906ed43893b15f18ac64bbc8670a2adb42ee16b9258736f6003da8ebdb845d` |
| 21 | `lemma` | [WithZero.mulArchimedean_iff](../../../../GroupTheoryAndGeneralizations/ArchimedeanDensely.lean/declarations/withzero-mularchimedean-iff.md) | 463 | `result-track:8f2f8683a5900001e453fbc90685a0b010cb07abe33124eb901efbfe46dc66c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f35682edf4476100cb46a496cc3d66fadbab711dcc064f53a8e85f5b169a4856 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ArchimedeanDensely/Variant71766dabe8fa279dccb34def229fc5aba6180eec11bd2771b4a0425a8e1b7809.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
