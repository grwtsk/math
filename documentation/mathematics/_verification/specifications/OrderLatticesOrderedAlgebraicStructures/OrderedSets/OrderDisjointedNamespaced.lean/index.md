# Verification target: Order Disjointed Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c89b42e0d990e57bfdb4cf0e8b567a1ede42f02e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantadfae328e3af77dd1c24fabc3e7004db188b5eb54ade3b892255e4ddfc69f19e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c89b42e0d990e57bfdb4cf0e8b567a1ede42f02e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantadfae328e3af77dd1c24fabc3e7004db188b5eb54ade3b892255e4ddfc69f19e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantadfae328e3af77dd1c24fabc3e7004db188b5eb54ade3b892255e4ddfc69f19e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.PartialSups` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed.md) | 57 | `declaration-track:0b614a2551ac70c4f3e5f617e5099df7df1b4bc2a1a26f2d940b2d3fb635eaa4` |
| 2 | `theorem` | [disjointed_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-zero.md) | 63 | `result-track:22cd0908b3f6c2d417d3331b08bf2ddb57c8eccf49ef00dfecdc35391223726a` |
| 3 | `theorem` | [disjointed_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-succ.md) | 67 | `result-track:bf251b93b2cd151677420fa97faee884f490d624c4cdb7696ebe541afa91f773` |
| 4 | `theorem` | [disjointed_le_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-le-id.md) | 71 | `result-track:6a50219341642067fcabefd00d0002861a667ff64233ded64addfb2e8254ab83` |
| 5 | `theorem` | [disjointed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-le.md) | 78 | `result-track:d8239b180766772647a5a82b77157fd545f07a576b5b0368e42f7209b3ea16d9` |
| 6 | `theorem` | [disjoint_disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjoint-disjointed.md) | 82 | `result-track:5fc00bb453d4e2694d23290174a166000ec0dd2943ddff0857ef2d4b327a582f` |
| 7 | `def` | [disjointedRec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointedrec.md) | 94 | `declaration-track:054cdaa5d03cf390210ef00ddd9a96371a9d6c808f2a43ed7f9ca000ffc7250c` |
| 8 | `theorem` | [disjointedRec_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointedrec-zero.md) | 108 | `result-track:67f7d8b4714138446848bcf26777b6b61f2a55a06963d644c206c00b075ed846` |
| 9 | `theorem` | [Monotone.disjointed_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/monotone-disjointed-eq.md) | 114 | `result-track:7ee57a56238f11447a4cd7bba10d7e05471296c377ce25a39ca1fcb2ef55294d` |
| 10 | `theorem` | [partialSups_disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/partialsups-disjointed.md) | 119 | `result-track:b13e6196f10d139c319dee581b32a0de328b61c42c65d860d9c9a34444c3e1f6` |
| 11 | `theorem` | [disjointed_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-unique.md) | 128 | `result-track:047d8e8e2a6db4fa69cb4625099adf21ff9f40a1a84a963b5642be88a1722151` |
| 12 | `theorem` | [iSup_disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/isup-disjointed.md) | 151 | `result-track:f1f68e232980ac5aa2e94b4f92144d1fbf64b80d6c990f5c3df67de5cb4f488b` |
| 13 | `theorem` | [disjointed_eq_inf_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-eq-inf-compl.md) | 155 | `result-track:41071a4bc4ff134adefd7a6eefed4d15e390cb6d66752306a01fce9af7e8b119` |
| 14 | `theorem` | [disjointed_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-subset.md) | 171 | `result-track:eee3e98b6ad4fab18b018ded43b5b78f8e913c0ee2e2dfb522461cde7bee4915` |
| 15 | `theorem` | [iUnion_disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/iunion-disjointed.md) | 175 | `result-track:365e5ff619591afdf92c48a52615b47c992fb2a65c1eeece74d50c53644a5395` |
| 16 | `theorem` | [disjointed_eq_inter_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/disjointed-eq-inter-compl.md) | 179 | `result-track:05dce7b7a57e697ab0706f4031ffde2ba9e8efae4eee5c89e8fb9d1b95e5d094` |
| 17 | `theorem` | [preimage_find_eq_disjointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjointedNamespaced.lean/declarations/preimage-find-eq-disjointed.md) | 184 | `result-track:6d9d32c44316fa35c10d41b04e90fed7f5291282c878fbcbc563f643a66a94a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb7f01f8f2b412529711d384e64731d4a136db00e1642dcab5dd0be859bdb7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantadfae328e3af77dd1c24fabc3e7004db188b5eb54ade3b892255e4ddfc69f19e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjointed/Variantadfae328e3af77dd1c24fabc3e7004db188b5eb54ade3b892255e4ddfc69f19e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
