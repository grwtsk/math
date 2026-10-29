# Verification target: SMul Antidiagonal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6257d120822c5e45929845e82e097eacbac5dedc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6257d120822c5e45929845e82e097eacbac5dedc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AddTorsor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smulAntidiagonal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/smulantidiagonal.md) | 33 | `declaration-track:8e612f582d66be5a4a1bfd818c95904d229f15d75d0759631d04e3fe11d9417f` |
| 2 | `theorem` | [mem_smulAntidiagonal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/mem-smulantidiagonal.md) | 37 | `result-track:211de38c9547f8cff11c9407bf72aee1451641f93b2fe518626f8760da06bc78` |
| 3 | `theorem` | [smulAntidiagonal_mono_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/smulantidiagonal-mono-left.md) | 41 | `result-track:5afafc051c12718d922bbc8f3a42439021cf4196dade13c68b9705defeebf801` |
| 4 | `theorem` | [smulAntidiagonal_mono_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/smulantidiagonal-mono-right.md) | 46 | `result-track:3a26b123026980e983d6543c37dd5a459b60a7af2dd2a1fe4612a2e0c1a7a3a4` |
| 5 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/fst-eq-fst-iff-snd-eq-snd.md) | 62 | `result-track:a024ce636231ad8c747e2b76e8e6ade9492346024799cada8e770dcfa672ef3d` |
| 6 | `theorem` | [eq_of_fst_eq_fst](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/eq-of-fst-eq-fst.md) | 76 | `result-track:b406f755c1bb790ef0b217acbeb8dbf1c624fe3146d64fb3f747d293482acedc` |
| 7 | `theorem` | [eq_of_snd_eq_snd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/eq-of-snd-eq-snd.md) | 80 | `result-track:9a36fd5655d3648b7662383048cb99880c6bf6b8c32348e6dc19d675cbbebac9` |
| 8 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd.md) | 89 | `result-track:e077075a8376e1b14c30725179e94bd84d0b7190ca35f5f049db20e48c39c701` |
| 9 | `theorem` | [finite_of_isPWO](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SMulAntidiagonal.lean/declarations/finite-of-ispwo.md) | 97 | `result-track:79eaa9b7c72a250f02b10e5de3f161a3e208cd9b45213416635437378a68bf10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d2ae6f4ba9cde13d8af51bcf8c1f51f3b957571d01b79a0167f63530b01ddf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variant57f4b5f4ab6d63295768e0393368e9da7d25c0330e70c6a98a51fa974bce8365.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
