# Verification target: Antidiag Pi Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9367c3bcc95cc3090e7832f0747413be644c25",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9367c3bcc95cc3090e7832f0747413be644c25`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean.json)

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
| 1 | `def` | [finAntidiagonal.aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/finantidiagonal-aux.md) | 73 | `declaration-track:ad0939820dc02419303aae7fdca4df37a5000df3be8e18d5dab65d6736c27d8e` |
| 2 | `def` | [finAntidiagonal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/finantidiagonal.md) | 100 | `declaration-track:bc2b52739c2827bb6fdb3e85aaf0a9d83f92b25c2cbc466e2714fd7a63f86fb2` |
| 3 | `lemma` | [mem_finAntidiagonal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/mem-finantidiagonal.md) | 102 | `result-track:dd8da77515006a76b9e865110d068c9839274237e8c924293384b5e47da07a88` |
| 4 | `def` | [piAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag.md) | 114 | `declaration-track:5e05758738565db150dda2ed2915053afbccef964126998ab83a9b27e3629dde` |
| 5 | `lemma` | [mem_piAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/mem-piantidiag.md) | 130 | `result-track:48281799d5664089095232e3c5ddb3f41fdc7744dfa1981ff541f294ad3e0790` |
| 6 | `lemma` | [piAntidiag_empty_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-empty-zero.md) | 143 | `result-track:6b09027c751916eea9b5be92fe78d59781249a30a974872e39b200c828d4e2c7` |
| 7 | `lemma` | [piAntidiag_empty_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-empty-of-ne-zero.md) | 146 | `result-track:8e15138a1bb45f03506a5d6c6889bff38a28e81b8e9a03863537c9bfebcae333` |
| 8 | `lemma` | [piAntidiag_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-empty.md) | 149 | `result-track:b76933d36eef3790cadba9264518cfde43454ad524e3b731db6a092b32bcef68` |
| 9 | `lemma` | [finset_congr_piAntidiag_eq_antidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/finset-congr-piantidiag-eq-antidiag.md) | 152 | `result-track:a6b5b981595c8ce21169955b7e4b5362e0f687c65b07ec6d0a63054741a1793f` |
| 10 | `lemma` | [pairwiseDisjoint_piAntidiag_map_addRightEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/pairwisedisjoint-piantidiag-map-addrightembedding.md) | 168 | `result-track:e0f877f53478db41b9f79f5308c3cee3fde8f47b82672afce8435ae50733064e` |
| 11 | `lemma` | [piAntidiag_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-cons.md) | 177 | `result-track:89d2abcba6d50766b6a0f6ec52394b9e6b3cad7b55cebb9753a7b73031330c8f` |
| 12 | `lemma` | [piAntidiag_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-insert.md) | 192 | `result-track:3bb67427f07b92e0273a36b2a93575908181f5e0804803718db985fb9b51b803` |
| 13 | `lemma` | [piAntidiag_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-zero.md) | 203 | `result-track:0e59dc7057f164898e3d42df972547605b9aceb200b162ce3f1cb3720f3bffe3` |
| 14 | `lemma` | [piAntidiag_univ_fin_eq_antidiagonalTuple](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/piantidiag-univ-fin-eq-antidiagonaltuple.md) | 213 | `result-track:34f64a675f499cf104a05b424ce76b48e070864b1a00b28ae5d5a8e66876ba00` |
| 15 | `lemma` | [nsmul_piAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/nsmul-piantidiag.md) | 217 | `result-track:9d14150ae1443964df65f00f56ba01da4a90e16ced14bd6b7a0bef697d555174` |
| 16 | `lemma` | [map_nsmul_piAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/map-nsmul-piantidiag.md) | 235 | `result-track:7e71e62f70ef97df85ecbdf51b53ecd9cda7bb830a4cc0a34433c55d5694f01b` |
| 17 | `lemma` | [nsmul_piAntidiag_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/nsmul-piantidiag-univ.md) | 240 | `result-track:3cc499fa6aa4aa1b2822a49889525a27e0c9a0bdaef9520af541b3b05944cbf8` |
| 18 | `lemma` | [map_nsmul_piAntidiag_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/map-nsmul-piantidiag-univ.md) | 244 | `result-track:a2988dd56f2f0bb4ae73ec842cae17246412c60fb0bfbb852c65be00c187da2d` |
| 19 | `lemma` | [map_sym_eq_piAntidiag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AntidiagPiNamespacedPublic.lean/declarations/map-sym-eq-piantidiag.md) | 251 | `result-track:78291c3f1a1e301f3502d6b58b82679ef020a158b991601b55593ea4a34f7a57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89a3ee7e97f271c6a39ca8ed356b47d58c30b2f6a1506e9ef57fe944c330651e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
