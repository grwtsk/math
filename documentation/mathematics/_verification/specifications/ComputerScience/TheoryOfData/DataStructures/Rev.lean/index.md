# Verification target: Rev

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14dfe5da1df732bc1f4e427f6c523f81a9f318c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14dfe5da1df732bc1f4e427f6c523f81a9f318c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rev_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-involutive.md) | 26 | `result-track:817c9ac46a075b885379151aa2a71749b36edbd7c5eec6456c17caab341461f3` |
| 2 | `def` | [revPerm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/revperm.md) | 31 | `declaration-track:f5bba9542c859e15af94834d0c59f700975ee0c3f28cc6adfa71765ef809d718` |
| 3 | `theorem` | [rev_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-injective.md) | 34 | `result-track:fa9ff69803c9bf95a1aa7f5d5a3a094995187e1614427f2570b9621266c31ec5` |
| 4 | `theorem` | [rev_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-surjective.md) | 37 | `result-track:afe7d3c4468de39c1803692b8ee259897f88b21e1db3028fa6cabbf53ef6e964` |
| 5 | `theorem` | [rev_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-bijective.md) | 40 | `result-track:ade404647edb362f8bc6559940e525a273d850a48f45cac0c7f8808913c792ea` |
| 6 | `theorem` | [revPerm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/revperm-symm.md) | 44 | `result-track:56a6f64bfdf110c261f437f578b603cc60b8c14031e129bfd9931b2c7be76205` |
| 7 | `theorem` | [cast_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/cast-rev.md) | 47 | `result-track:c3245b38b0dc8580bbc52855124862d6b3ff729a7e8a8c074a5769a097ae5dc0` |
| 8 | `theorem` | [rev_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-eq-iff.md) | 51 | `result-track:db732483e4db4e1dd601ebd24c10afdfba4bc2dffd43de1a7363aaf8c630eca2` |
| 9 | `theorem` | [rev_ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-ne-iff.md) | 54 | `result-track:338c075e5f3470217e0d534b34afd535425ab128596f7a9aee48cb24f17a894e` |
| 10 | `theorem` | [rev_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-lt-iff.md) | 56 | `result-track:299963a6c30073dba2ebfc8296090b1155626fadec69d675e5f7ffe65b243c08` |
| 11 | `theorem` | [rev_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-le-iff.md) | 59 | `result-track:66c76bd99030c5636ad25811ab9c90ff7b12012899f01bf7f828c1c848c1835b` |
| 12 | `theorem` | [lt_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/lt-rev-iff.md) | 62 | `result-track:c3683146588fe338d50660d164fc08ddd79211b6e9f7918ec1439e669f192953` |
| 13 | `theorem` | [le_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/le-rev-iff.md) | 65 | `result-track:82b7bca0558bb264dc2043de73e4283807401f5b15c7b71d0083e35506194d09` |
| 14 | `theorem` | [val_rev_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/val-rev-zero.md) | 68 | `result-track:1a7d66fe2ce2a759dfa1995fc6091c6ed2faedc0f085067a2613ff259ae6d398` |
| 15 | `theorem` | [rev_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-pred.md) | 70 | `result-track:108d3b8f040309b68736613b621667a156797726174dddd6af75b1c115ee291e` |
| 16 | `theorem` | [rev_castPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-castpred.md) | 74 | `result-track:a31d18c039cafef8723ae7ac3bdf5d6fa169b63071222d0d3065c7f16a6950d4` |
| 17 | `lemma` | [succAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/succabove-rev-left.md) | 79 | `result-track:64c713ccbb58027d1809cf0ab9f65bc8d3c32bab9a5bbf35c7d5f20e3a7a2a3b` |
| 18 | `lemma` | [succAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/succabove-rev-right.md) | 87 | `result-track:b469b16029ebce9b10346d4f23eb510a23c0eb2194ee9878b77f7d486c23bba0` |
| 19 | `lemma` | [rev_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-succabove.md) | 91 | `result-track:c6afde4b765a0debd3ba3ffb9c8e6a1296177f151d47273e59960050a2db21e2` |
| 20 | `lemma` | [predAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/predabove-rev-left.md) | 95 | `result-track:43958a56fa557d3ab8d6aefc74980007bf15e40577e63a0c07181c2bcf0bdcce` |
| 21 | `lemma` | [predAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/predabove-rev-right.md) | 103 | `result-track:445c00f95793e478c6b53bb1945e78d47e09c9a85a069f0f4c92083871b8ec14` |
| 22 | `lemma` | [rev_predAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-predabove.md) | 107 | `result-track:73ef95567f3b33ac06dbd17f620aa290913dc5eec24d304bc811639ae9a4ee88` |
| 23 | `lemma` | [add_rev_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/add-rev-cast.md) | 110 | `result-track:033527496924e21e6a600e5fb293f97e127b4a42ea261e316b3a7116a198b5ce` |
| 24 | `lemma` | [rev_add_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/Rev.lean/declarations/rev-add-cast.md) | 114 | `result-track:75230f93f20a9eced25ba23d0eb8a3f5e4b6fee617291c943eb896cb86442421` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ed79c7a572f09ac030af9f230164bfdc43edd6e76024ac3515e8322ce93b216 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5aaf64196b34476e3a8fb1ae39eae9b2ab933ef49563a3e215b8fc6ff78b9cc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
