# Verification target: Lattice Disjoint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc20330f8c35b4c2c9ac4f85491cb4eb24a8ca68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantc544ac32a4699b05cdfab8692fa3ab7eecdbc03c5f5184743049691d82ff335b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc20330f8c35b4c2c9ac4f85491cb4eb24a8ca68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantc544ac32a4699b05cdfab8692fa3ab7eecdbc03c5f5184743049691d82ff335b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantc544ac32a4699b05cdfab8692fa3ab7eecdbc03c5f5184743049691d82ff335b.lean.json)

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
| 1 | `theorem` | [disjoint_iUnion_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-iunion-left.md) | 36 | `result-track:6e2681753b5c2de962d287ebf698743c9e1974bc45847dfecd7197d3a53f1174` |
| 2 | `theorem` | [disjoint_iUnion_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-iunion-right.md) | 41 | `result-track:5c8f9335e3354827feae76ff4921faef6aa5b458f1d49072737f1f51e136cafe` |
| 3 | `theorem` | [disjoint_iUnion₂_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-iunion-left-source-edition-2.md) | 45 | `result-track:e45b81fd5203a387eb7857b22a1bb3dd5b3844e4ffe00549ef8a662ad64017e1` |
| 4 | `theorem` | [disjoint_iUnion₂_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-iunion-right-source-edition-2.md) | 49 | `result-track:d4e9a1ac35336c6b903eed058daf8435a885e655101c8117a2ef28b79ea817df` |
| 5 | `theorem` | [disjoint_sUnion_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-sunion-left.md) | 54 | `result-track:202e0b1cfc87240d1fab3775fa778c887b9fa9a81f9c0aeeb4d0e6b9af5ebca5` |
| 6 | `theorem` | [disjoint_sUnion_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/disjoint-sunion-right.md) | 59 | `result-track:545c5ebed6a9ecfaff2fd4ba3b914a4dc9b82ead8d4bfb22b46049d6f47dce7f` |
| 7 | `lemma` | [biUnion_compl_eq_of_pairwise_disjoint_of_iUnion_eq_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/biunion-compl-eq-of-pairwise-disjoint-of-iunion-eq-univ.md) | 63 | `result-track:bfef7878400ce1ff67ea0b16123c2eb17d24c04841079fa35a8342b6567f3160` |
| 8 | `def` | [sigmaToiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/sigmatoiunion.md) | 89 | `declaration-track:fb0da12b5636044b495e1f3dcab64597c01a27fcb1766e8985b90f21626a5c51` |
| 9 | `theorem` | [sigmaToiUnion_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/sigmatoiunion-surjective.md) | 92 | `result-track:87c3775afa799e1d4316d967f0cdfcd333f7197f8e1a705aff43a1051f74d5fe` |
| 10 | `theorem` | [sigmaToiUnion_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/sigmatoiunion-injective.md) | 98 | `result-track:58295c080c08476fd4c31c9060c1a8d254f961330273524e67b48b94b2615396` |
| 11 | `theorem` | [sigmaToiUnion_bijective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/sigmatoiunion-bijective.md) | 108 | `result-track:344ad4c7613511fa3574331fccbce3c8226a86019c0c75a0f19c36f7ffdeeef7` |
| 12 | `def` | [sigmaEquiv](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/sigmaequiv.md) | 114 | `declaration-track:38848ece3dc927359d7fc345e24e92438153585257ac81161e37807e84521465` |
| 13 | `def` | [unionEqSigmaOfDisjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/unioneqsigmaofdisjoint.md) | 121 | `declaration-track:e6c23a36e0f3efbe27f3fc4cd95eb2ee91fff42cda98c025ad80cd5977fa926d` |
| 14 | `lemma` | [coe_unionEqSigmaOfDisjoint_symm_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/coe-unioneqsigmaofdisjoint-symm-apply.md) | 127 | `result-track:bf9a79e07d7a3f703171d2be463a93f611dfc6134bd5f44c8fe5fb531f59279e` |
| 15 | `lemma` | [coe_snd_unionEqSigmaOfDisjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/LatticeDisjointPublic.lean/declarations/coe-snd-unioneqsigmaofdisjoint.md) | 133 | `result-track:3e2eca6dd3bfbd4d111c35cfd267160676c063a47a49102434bc8b03d414f4f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab5ff02d6dbe1fb5fd10064d54461ffe7a1cd3370c5bd4228c7b0744e5a89731 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantc544ac32a4699b05cdfab8692fa3ab7eecdbc03c5f5184743049691d82ff335b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantc544ac32a4699b05cdfab8692fa3ab7eecdbc03c5f5184743049691d82ff335b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
