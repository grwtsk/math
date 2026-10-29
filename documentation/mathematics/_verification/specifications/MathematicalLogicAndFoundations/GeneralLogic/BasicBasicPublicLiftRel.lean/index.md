# Verification target: Basic Basic Public Lift Rel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61bb9a4f8006fdda88a90a43e3b04a4563ab0a3b",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbab87570ab3cf66a476fc092c50c6dc50ef0ad122a12e2007274eb9d67c809f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61bb9a4f8006fdda88a90a43e3b04a4563ab0a3b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbab87570ab3cf66a476fc092c50c6dc50ef0ad122a12e2007274eb9d67c809f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbab87570ab3cf66a476fc092c50c6dc50ef0ad122a12e2007274eb9d67c809f3.lean.json)

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
| 1 | `def` | [isLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isleft.md) | 54 | `declaration-track:e7430038e03991fdcc7a211892fa9ccade8b42543d70f5002ed348c068dfe4f6` |
| 2 | `def` | [isRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isright.md) | 59 | `declaration-track:3b77010e90ad66952b9f8b84da3704ac8e7a428484a323ce5df37d8bee6acadb` |
| 3 | `def` | [getLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getleft.md) | 64 | `declaration-track:2218f9b944d34477edf72cbe2aa374ba3b0f8b8d0a70c0d7f1ee6ff006d19ad7` |
| 4 | `def` | [getRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getright-source-edition-2.md) | 68 | `declaration-track:5a60349d3655b9cbb778c95eff7c0715a2c20244a885b7aeacd9e20e959da48b` |
| 5 | `def` | [getLeft?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getleft-source-edition-2.md) | 72 | `declaration-track:639ca181489cc0ca540af88d3bfb9bd9fa4d4debdc874bcd6ed3d80e76a3342a` |
| 6 | `def` | [getRight?](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getright.md) | 77 | `declaration-track:33dde392aa250f345fb737b802b81e1346176fcd995ed4eb6a7d0c55a6c943fe` |
| 7 | `theorem` | [isLeft_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isleft-inl.md) | 81 | `result-track:63bff02004d3eefa7935788382ac5ad9d82a1aff578c84bacdfdba9840513cf6` |
| 8 | `theorem` | [isLeft_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isleft-inr.md) | 82 | `result-track:7de1f6a15ecfff23cd224beacbf9d39260260875f62d7bbc1021764e2c218789` |
| 9 | `theorem` | [isRight_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isright-inl.md) | 83 | `result-track:071115a748826475dc66f35e94bd665c4bfa395ee98f3d70146b7450f59a1b12` |
| 10 | `theorem` | [isRight_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/isright-inr.md) | 84 | `result-track:012c605983d96c1f93fb56ab892a3b4d28885e7975ae1901aa69a88f90be8ccd` |
| 11 | `theorem` | [getLeft_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getleft-inl.md) | 86 | `result-track:27cf1159316df4038a538aaf890e21691dd6d580a11dfcecfad38e22dac3303c` |
| 12 | `theorem` | [getRight_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getright-inr.md) | 87 | `result-track:1e14b7beac48428c350b14989fc9e3507f119b7cb3464e832a2c05bfff341c73` |
| 13 | `theorem` | [getLeft?_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getleft-inl-source-edition-2.md) | 89 | `result-track:f34287f4b0beddde03003cbd9e505b1f59adf26579788846750b158b0acaae72` |
| 14 | `theorem` | [getLeft?_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getleft-inr.md) | 90 | `result-track:74a89c979a1e78789f6dc6fa721d78e5d5b99b51cd6f38bda6fde256625818ec` |
| 15 | `theorem` | [getRight?_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getright-inl.md) | 91 | `result-track:1c0890a50b6b48fbe08a8fdf56c5f1682cab333e54a62f29105a03f02fea76dd` |
| 16 | `theorem` | [getRight?_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/getright-inr-source-edition-2.md) | 92 | `result-track:856333c26a97af780f0fcba031e630702aa66fdcf1a39c7589364d371cc43fef` |
| 17 | `def` | [elim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/elim.md) | 100 | `declaration-track:744c1b0b9938c671928d28d7e8c45470d42b1d324110c19875c46a7c34a4d414` |
| 18 | `theorem` | [elim_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/elim-inl.md) | 103 | `result-track:a6d06fe88475f43c3dfe1d696881efe033d20a434c039daaecb81a2f37bfd715` |
| 19 | `theorem` | [elim_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/elim-inr.md) | 106 | `result-track:5c2fd15360bc91d468d51b33e25ed1cc94e2144b7214fbe3b7b9a2954080c457` |
| 20 | `def` | [map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/map.md) | 114 | `declaration-track:7a00fc46629063b600d8b483cb26a1e9b34f463f80cb926a232953910631b22b` |
| 21 | `theorem` | [map_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/map-inl.md) | 117 | `result-track:c7e3d609d76b642b7af988c9dd17d7afc0f71ff135e5537e76c0aea0056e3652` |
| 22 | `theorem` | [map_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/map-inr.md) | 119 | `result-track:966bceb8588496549df701d0bd5f431eab61388e6e88b07c1cd5c43984a6f1a0` |
| 23 | `def` | [swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/swap.md) | 126 | `declaration-track:c7d21236f328ddb37305ef197fc89a75514a8e95b392ede7727f7df4c969db5f` |
| 24 | `theorem` | [swap_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/swap-inl.md) | 128 | `result-track:62f5a1c0dea49e2f0504702945da66b4ca27c40090b365b9acb10c431d34888b` |
| 25 | `theorem` | [swap_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/swap-inr.md) | 130 | `result-track:6616ae2e8f7d38a6f3a1af5711ab7a7844b242d77e3e8ab8014a96c593477afd` |
| 26 | `inductive` | [LiftRel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/liftrel.md) | 136 | `declaration-track:c5e671a222fc05433d648f194d836f2f440235c61e058bdc9865538b10851ff5` |
| 27 | `theorem` | [liftRel_inl_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/liftrel-inl-inl.md) | 142 | `result-track:22b49c2033028ceb0869da53c1f47935c61687f23cc6b6168cf12ca48ad717b7` |
| 28 | `theorem` | [not_liftRel_inl_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/not-liftrel-inl-inr.md) | 145 | `result-track:67f72cf7afc8a3bbcd20eb57ae0e87bda9f9cefb2ccb3daecdc8d18f9190a450` |
| 29 | `theorem` | [not_liftRel_inr_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/not-liftrel-inr-inl.md) | 147 | `result-track:85d924b1689afffca88b5ccb15f310454ea024d87301fb1c46fdea3a269a3634` |
| 30 | `theorem` | [liftRel_inr_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/liftrel-inr-inr.md) | 149 | `result-track:e8f55911d81d4ac75e9ef0d26ed6833f8c3ef056c3091bbb6c3b3d814303c130` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/instance.md) | 152 | `declaration-track:486f39be23b0a30ccf8480fa713c92c64c9caf836057ea6b573a7caf19066413` |
| 32 | `inductive` | [Lex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/lex.md) | 166 | `declaration-track:ae19e0168a930bf65919dbe5c45562c188ee6c66493950b441fc272067d97772` |
| 33 | `theorem` | [lex_inl_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/lex-inl-inl.md) | 176 | `result-track:2685e1996cef070f10e0a5a74334ec1e045abfeee5e2f8f58c4ba0b2bac41778` |
| 34 | `theorem` | [lex_inr_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/lex-inr-inr.md) | 179 | `result-track:daf1c54456c22139cf091a12400816339d60948afc458e356c86a8e5c35bb9ba` |
| 35 | `theorem` | [lex_inr_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/lex-inr-inl.md) | 182 | `result-track:495a8b4e55fc830b4fc18fc5f2e5277adce5e73d9e4eb9925a26906dc48b7108` |
| 36 | `instance` | [instDecidableRelSumLex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicPublicLiftRel.lean/declarations/instdecidablerelsumlex.md) | 184 | `declaration-track:4199cb93e42c4f0f43054d30e7f36e4705aabbcb56df17de61c716f4c98de9f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10e0527943ccba8e3d3112547d1f5b3245c0fcfd96db2da44f7feb235052af3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbab87570ab3cf66a476fc092c50c6dc50ef0ad122a12e2007274eb9d67c809f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbab87570ab3cf66a476fc092c50c6dc50ef0ad122a12e2007274eb9d67c809f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
