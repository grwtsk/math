# Verification target: Flat Rank Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c1d3ee597b32bacebd1aaf18059d1e679a08b8d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c1d3ee597b32bacebd1aaf18059d1e679a08b8d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean.json)

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
| 1 | `def` | [IsAffine.finrank](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/isaffine-finrank.md) | 65 | `declaration-track:ddd611df3a4f8708e58075b6091617688b94abb587fb149b1c7c5b5268b260c2` |
| 2 | `lemma` | [IsAffine.finrank_of_isPullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/isaffine-finrank-of-ispullback.md) | 68 | `result-track:857f1ca3835278f569e95ef2d7f30c51621d7fea2f17bfd66025c4f41c67c2f3` |
| 3 | `lemma` | [IsAffine.finrank_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/isaffine-finrank-snd.md) | 80 | `result-track:a1298c1690cf96e68e6b10a3a8d65dbdd854a9f086130975a5b1e13938fde881` |
| 4 | `lemma` | [IsAffine.finrank_comp_left_of_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/isaffine-finrank-comp-left-of-isiso.md) | 85 | `result-track:40693a943b946fcd1729d73a1df75de4203e6507874c830a4ed862df1fe9229a` |
| 5 | `def` | [Scheme.Hom.finrank](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank.md) | 96 | `declaration-track:3a2574a169655c6689f5319fcaca06b305d4351fb291d84f2a6a526899066536` |
| 6 | `lemma` | [Scheme.Hom.finrank_eq_finrank_snd_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-eq-finrank-snd-of-isaffine.md) | 100 | `result-track:c1dda87b6cbb04e531f902d80a2d7bf3554202a80a9b7896f3fd39e8a4f9c5d6` |
| 7 | `lemma` | [Scheme.Hom.finrank_eq_of_isAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-eq-of-isaffine.md) | 117 | `result-track:fda0bd2be6685909c3be54fc2cbe12b7e176d598097b8619aef603e2aef8838f` |
| 8 | `lemma` | [Scheme.Hom.finrank_SpecMap_eq_finrank](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-specmap-eq-finrank.md) | 124 | `result-track:880bf61bffcffd7394564738487c3abedc573f29c8a161e21fa2766af64354a0` |
| 9 | `lemma` | [Scheme.Hom.finrank_SpecMap_algebraMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-specmap-algebramap.md) | 142 | `result-track:451c8a9f4d8beb8c718f0c1088df2322c46d7544fbaa760dd6d18d14c8c49e80` |
| 10 | `lemma` | [Scheme.Hom.finrank_comp_left_of_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-comp-left-of-isiso.md) | 153 | `result-track:5105814aa81355447f2b59795746e045b1b84cf92dfe44c39aab6a3dc6bb9990` |
| 11 | `lemma` | [Scheme.Hom.finrank_pullback_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-pullback-snd.md) | 164 | `result-track:a35c89fff72e69696cd64a838773f7f35e1c9354bb3c71c146bb463ed689c778` |
| 12 | `lemma` | [Scheme.Hom.finrank_of_isPullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-of-ispullback.md) | 172 | `result-track:d295aaadc99f2be5cd8db2d18328968ee605d424d19c5c54e748749958ae39e9` |
| 13 | `lemma` | [Scheme.Hom.finrank_pullback_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-pullback-fst.md) | 177 | `result-track:c93997d1bfda8b55696ec73a1f9c9c83eda7b26041061d3aabc4bdda37b4658e` |
| 14 | `lemma` | [Scheme.Hom.one_le_finrank_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-one-le-finrank-map.md) | 183 | `result-track:223b2e18446c12c5e6d2cd486a7c6a73d342b2e40bb6c46d77aa600a16f84164` |
| 15 | `lemma` | [Scheme.Hom.one_le_finrank_iff_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-one-le-finrank-iff-surjective.md) | 209 | `result-track:3a6a89e0fefa9aa472ddef00d336bd6fb98f1247249620aefd17e70305c5cada` |
| 16 | `lemma` | [Scheme.Hom.isLocallyConstant_finrank](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-islocallyconstant-finrank.md) | 239 | `result-track:beaa434bccd5938213858011c47412a10b7dd4567ed176718356a5aeb351501e` |
| 17 | `lemma` | [Scheme.Hom.finrank_eq_one_of_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-finrank-eq-one-of-isiso.md) | 266 | `result-track:20983bf222c01ce79537c472cb6251fd91ebe162c9ac7767c0bb4b19651ba730` |
| 18 | `lemma` | [Scheme.Hom.isIso_iff_finrank_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/FlatRankNamespacedPublic.lean/declarations/scheme-hom-isiso-iff-finrank-eq.md) | 280 | `result-track:38649652a90b784a809b51f8f6ceb9a0006d1e90d591fe5bf3380e1b92bfc006` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93380f255e8d5b1244e76d2b98f4b7ede6f487c5d34e7a5bc757269d7ba61570 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/FlatRank/Variantb73878b53ffedb6dd9f94ba421e53186134ade14207021b5caab2442c5ae6745.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
